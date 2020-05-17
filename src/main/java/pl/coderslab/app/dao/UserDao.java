package pl.coderslab.app.dao;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import pl.coderslab.app.model.User;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class UserDao {
    @PersistenceContext
    EntityManager entityManager;
    public void save(User user) {
        entityManager.persist(user);
    }

    public void update(User user)
    {
        entityManager.merge(user);
    }

    public User findById(Long id)
    {
        return entityManager.find(User.class, id);
    }
    public boolean checkPassword(String password,User user)
    {
        if(user!=null && password!=null)
        {
            if(password.equals(user.getPassword()))
            {
                return true;
            }
            return false;
        }
        else
        return false;
    }
    public User loginUser(Long id, String password)
    {
        User user = this.findById(id);
        if(user!=null && user.getPassword().equals(password))
        {
            return user;
        }
        return null;
    }
}
