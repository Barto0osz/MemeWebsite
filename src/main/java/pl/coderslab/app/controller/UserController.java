package pl.coderslab.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.app.dao.UserDao;
import pl.coderslab.app.model.User;
import pl.coderslab.app.repository.UserRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class UserController {

    @Autowired
    UserDao userDao;
    @Autowired
    UserRepository userRepository;

    @GetMapping("/registration")
    public String registration(Model model)
    {
        model.addAttribute("userForm",new User());
        return "registration";
    }
    @PostMapping("/registration")
    public String registrationForm(@Valid @ModelAttribute("userForm") User user, BindingResult bindingResult)
    {
        if(bindingResult.hasErrors())
        {
            return "registration";
        }
        userDao.save(user);
        return "login";
    }
    @RequestMapping(value="/login",method = RequestMethod.GET)
    public String showLogin()
    {
      return "login";
    }
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String verifyLogin(@Valid @RequestParam String nick, @RequestParam String password, HttpServletRequest request, Model model)
    {
        HttpSession session = request.getSession();
        User user = userRepository.findUserByNick(nick);

        if(user==null || password==null || "".equals(password))
        {
            model.addAttribute("loginError","Coudln't loggin");
            return "login";
        }
        if (!password.equals(user.getPassword()))
        {
            return "login";
        }
            session.setAttribute("loggedInUser", user);
            return "home";


    }
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String logout(HttpSession session)
    {
        session.invalidate();
        return "login";
    }

}
