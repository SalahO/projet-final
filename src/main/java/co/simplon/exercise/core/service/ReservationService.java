package co.simplon.exercise.core.service;

import co.simplon.exercise.core.model.Classroom;
import co.simplon.exercise.core.model.Laptop;
import co.simplon.exercise.core.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;

import co.simplon.exercise.core.model.Reservation;
import co.simplon.exercise.core.repository.ReservationRepository;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.*;

@Service
public class ReservationService extends GenericService< Reservation, ReservationRepository >{

    @Autowired
    private UserService userService;

    @Autowired
    private LaptopService laptopService;

    @Autowired
	private ClassroomService classroomService;
    
	public List<Reservation> getAllHistoric() {
		// TODO Auto-generated method stub
		return repository.getAllReservationsHistoriques();
	}


	public List<Reservation> getForUserHistoric(Integer id) {
		// TODO Auto-generated method stub
		return repository.getReservationsHistoriquesPourUser(id);
	}


	public List<Reservation> getAllCurrent() {
		// TODO Auto-generated method stub
		return repository.getAllReservationsCourantes();
	}


	public List<Reservation> getForUserCurrent(Integer id) {
		// TODO Auto-generated method stub
		return repository.getReservationsCourantesPourUser(id);
	}


	public boolean checkIsPossible(Reservation resToUpdate) {
		if( resToUpdate.getLaptop() != null && repository.findReservationForLaptop(
				resToUpdate.getLaptop().getId(),
				resToUpdate.getBookingDate(),
				resToUpdate.getStartTime(),
				resToUpdate.getEndTime() ) > 0 )
		{
			return false;
		}
		if( resToUpdate.getClassroom() != null && repository.findReservationForClassroom(
				resToUpdate.getClassroom().getId(),
				resToUpdate.getBookingDate(),
				resToUpdate.getStartTime(),
				resToUpdate.getEndTime() ) > 0 )
		{
			return false;
		}
		return true;
	}

//    public List<Reservation> getMyCurentBookings(String email) {
//        return reservationRepository.getMyCurrentBookings(email);
//    }


}
