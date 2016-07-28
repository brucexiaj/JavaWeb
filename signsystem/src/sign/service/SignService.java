package sign.service;

import java.util.List;

















import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;




import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import sign.dao.ISignDao;
import sign.model.Sign;


@Service("adminService")
public class SignService implements ISignService {

private ISignDao signDao;
	
	public ISignDao getSignDao() {
		return signDao;
	}
	@Resource
	public void setSignDao(ISignDao signDao) {
		this.signDao = signDao;
	}
	@Override
	public Sign getByPhone(String phone){
		return signDao.getByPhone(phone);
	}
	@Override
	public boolean save(Sign sign){
		return signDao.save(sign);
	}

}
