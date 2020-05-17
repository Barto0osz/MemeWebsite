package pl.coderslab.app.dao;

import org.springframework.stereotype.Repository;
import pl.coderslab.app.model.Meme;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class UploadMemeDao {
    @PersistenceContext
    EntityManager entityManager;

    public void save(Meme meme)
    {
        entityManager.persist(meme);
    }
}
