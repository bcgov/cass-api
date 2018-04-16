package ca.bc.gov.jag.shuber.persistence.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import ca.bc.gov.jag.shuber.persistence.model.WorkSectionCode;

/**
 * WorkSectionCodeDAO generated by Hibernate Tools hbm2dao.
 *
 * <p>Domain data access object for database table work_section_code.
 *
 * @author hbm2dao
 * @version 391
 * @see ca.bc.gov.jag.shuber.persistence.model.WorkSectionCode
 */
//@Repository
@RepositoryRestResource
public interface WorkSectionCodeDAO extends JpaRepository<WorkSectionCode, String> {
    // NOTE: add custom methods here

	/**
	 * Find a work section code.
	 * @param workSectionCode work section code
	 * @return record
	 */
	Optional<WorkSectionCode> findByWorkSectionCode(@Param("workSectionCode") String workSectionCode);
	
}
