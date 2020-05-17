package pl.coderslab.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import pl.coderslab.app.model.Meme;
import pl.coderslab.app.repository.MemeRepository;

import java.util.List;

@Controller
public class MemeController {
    @Autowired
    MemeRepository memeRepository;

    @GetMapping("/memes")
    public String memes()
    {
        return "memes";
    }
    @ModelAttribute("memeList")
    public List<Meme> memeList()
    {
        return memeRepository.findByOrderByCreatedDateDesc();
    }
}
