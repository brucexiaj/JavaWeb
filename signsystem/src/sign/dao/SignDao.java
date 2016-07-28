package sign.dao;



import java.util.List;

import javax.annotation.Resource;



















import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;





















import sign.model.Sign;




@Repository("signDao")
public class SignDao extends HibernateDaoSupport implements ISignDao {
	  protected Class<Sign> entityClass;
	@Resource
	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		this.setSessionFactory(sessionFactory);
	}
	
	
	
	
@Override
public Sign getByPhone(String phone){

	Sign a=(Sign)this.getSession().createQuery("from Sign where phone=?")
			.setParameter(0,phone).uniqueResult();
	if(this.getSession().createQuery("from Sign where phone=?")
			.setParameter(0,phone).list().size()==0)
	{
		return null;
	}
	else{
	return a;
	}
}
@Override
public boolean save(Sign sign){
	List<Sign> signList=this.getSession().createQuery("from Sign")
			.list();
	
	String phone=sign.getPhone();
	for(int i=0;i<signList.size();i++)
	{
		Sign savedSign=signList.get(i);
		if(savedSign.getPhone().equals(phone))
		{
			return false;
		}
	}
	this.getHibernateTemplate().save(sign);
	return true;
}
}