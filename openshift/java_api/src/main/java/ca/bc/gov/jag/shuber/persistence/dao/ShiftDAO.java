package ca.bc.gov.jag.shuber.persistence.dao;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Repository;

import ca.bc.gov.jag.shuber.persistence.model.Shift;

/**
 * ShiftDAO generated by Hibernate Tools hbm2dao.
 *
 * <p>Domain data access object for database table shift.
 *
 * @author hbm2dao
 * @version 352
 * @see ca.bc.gov.jag.shuber.persistence.model.Shift
 */
@Repository
public interface ShiftDAO extends JpaRepository<Shift, UUID> {
    // NOTE: add custom methods here

	
	/**
	 * Get shifts for a given date range and courthouse.
	 * @param startDate start date
	 * @param endDate end date
	 * @param locationId location
	 * @return records
	 */
	@Query(
		value="SELECT s.* " + 
			  "FROM shift s " + 
			  "WHERE s.start_time >= to_date(:startDate,'yyyy-MM-dd') " + 
			  "AND s.end_time <= to_date(:endDate,'yyyy-MM-dd') " + 
			  "AND s.location_id = :locationId",
		//value="SELECT s FROM Shift s WHERE s.startTime >= :startDate AND s.endTime <= :endDate AND s.courthouse.locationId = :locationId",
		nativeQuery=true
	)
	List<Shift> getShifts(
		@DateTimeFormat(iso=ISO.DATE) @Param("startDate") String startDate, 
		@DateTimeFormat(iso=ISO.DATE) @Param("endDate") String endDate, 
		@Param("locationId") UUID locationId);

}
