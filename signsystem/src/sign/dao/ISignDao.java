package sign.dao;

import sign.model.Sign;


public interface ISignDao{
	public Sign getByPhone(String phone);
	public boolean save(Sign sign);
}
















