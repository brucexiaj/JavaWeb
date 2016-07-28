package sign.service;

import java.util.List;














import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import sign.model.Sign;





public interface ISignService {
	
	
		
	public Sign getByPhone(String phone);
	public boolean save(Sign sign);
}
