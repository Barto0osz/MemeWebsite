package pl.coderslab.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.app.model.Meme;

import java.util.List;

public interface MemeRepository extends JpaRepository<Meme, Long> {

	@Transactional
	@Modifying
	@Query("delete from Meme m where m.id like ?1 and fileName like ?2")
	public void deleteMemeWithFile(Long id, String fileName);

	public List<Meme> findByOrderByCreatedDateDesc();
}
