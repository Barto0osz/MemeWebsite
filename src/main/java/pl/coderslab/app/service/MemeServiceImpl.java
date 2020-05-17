package pl.coderslab.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.app.model.Meme;
import pl.coderslab.app.repository.MemeRepository;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
@Transactional
public class MemeServiceImpl implements MemeService {

	@Autowired
	MemeRepository memeRepository;

	public static String uploadDirectory = System.getProperty("user.dir") + "/uploads";

	@Override
	public boolean saveMeme(Meme meme) throws IOException {
		try {
			if (meme != null) {
				memeRepository.save(meme);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return false;

	}

	@Override
	public List<Meme> getAllMemes() {
		return memeRepository.findAll();
	}

	@Override
	public boolean deleteFile(Long id, String file) {
		boolean status = false;
		try {
			if (id != 0 && file != null) {
				memeRepository.deleteMemeWithFile(id, file);
				System.out.println(this.getClass().getSimpleName() + ":deleting meme... " + id);
				String path = uploadDirectory + "/" + file;
				System.out.println("Path=" + path);
				File fileToDelete = new File(path);
				status = fileToDelete.delete();
				System.out.println(this.getClass().getSimpleName() + ":deleting file... " + file);
				System.out.println("Success: " + status + " fileToDelete: " + fileToDelete);
				return status;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return status;
		}
		return status;
	}

}
