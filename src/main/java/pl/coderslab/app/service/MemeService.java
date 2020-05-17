package pl.coderslab.app.service;

import pl.coderslab.app.model.Meme;

import java.io.IOException;
import java.util.List;

public interface MemeService {
    public boolean saveMeme(Meme meme) throws IOException;

    public List<Meme> getAllMemes();

    public boolean deleteFile(Long id, String file);
}
