package ca.bc.gov.jag.shuber.persistence;

import java.util.Optional;

import org.springframework.data.domain.AuditorAware;
import org.springframework.stereotype.Component;

/**
 * 
 * @author michael.gabelmann
 */
@Component
public class UserAuditorAware implements AuditorAware<String> {

	@Override
	public Optional<String> getCurrentAuditor() {

/* FIXME: we need to fix this and load the user from OAuth
 * 		  how are we going to load this? If we use OAuth we can get it from there.
 */

//		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//		 
//        if (authentication == null || !authentication.isAuthenticated()) {
//            return null;
//        }
//		
//		return Optional.of(authentication.getPrincipal().getUser().getUsername());

		return Optional.of("IDIR\\MIKE");
	}

}