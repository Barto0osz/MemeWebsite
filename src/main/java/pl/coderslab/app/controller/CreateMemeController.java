package pl.coderslab.app.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import pl.coderslab.app.model.Meme;
import pl.coderslab.app.repository.MemeRepository;
import pl.coderslab.app.service.MemeService;

import javax.validation.Valid;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.util.List;

@Controller
public class CreateMemeController {

    @Autowired
    MemeService memeService;
    @Autowired
    MemeRepository memeRepository;

    private static Logger log = LoggerFactory.getLogger(CreateMemeController.class);
    public static String uploadDirectory = "D:/apache-tomcat-9.0.34/bin/uploads";

    @GetMapping("/create")
    public String create(Model model) {
        Meme meme = new Meme();
        model.addAttribute("meme", meme);
        return "create";
    }

    @PostMapping("/create")
    public String createMeme(@ModelAttribute Meme meme,
                             @RequestParam("title") String title,
                             @RequestParam("file") MultipartFile file) {
        try {
            String fileName = file.getOriginalFilename();
            String filePath = Paths.get(uploadDirectory, fileName).toString();
            String fileType = file.getContentType();
            long size = file.getSize();
            String fileSize = String.valueOf(size);
            Timestamp currentTimestamp = new Timestamp(System.currentTimeMillis());

            log.info("Title: " + title);
            log.info("FileName: " + file.getOriginalFilename());
            log.info("FileType: " + file.getContentType());
            log.info("FileSize: " + file.getSize());

            // Save the file locally
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
            stream.write(file.getBytes());
            stream.close();


            meme.setTitle(title);
            meme.setFileName(fileName);
            meme.setFilePath(filePath);
            meme.setFileType(fileType);
            meme.setFileSize(fileSize);
            meme.setCreatedDate(currentTimestamp);

            boolean status = memeService.saveMeme(meme);
            if (status) {
                log.info("Meme Added");
                return "create";
            }
        } catch (Exception e) {
            e.printStackTrace();
            log.info("Exception: " + e);
            return "create";
        }
        return "create";
    }
    @ModelAttribute("memeList")
    public List<Meme> memeList()
    {
        return memeRepository.findAll();
    }
}

