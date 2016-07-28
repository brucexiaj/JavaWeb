package sign.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;



@Entity
@Table(name="attendee")
public class Sign {
	private int uid;
	private String fullname;
	private String company;
	private String phone;
	private String email;
	private String title;
	private String role;
	private int printed;
	
	
	@GeneratedValue
	@Id
	@Column(name="uid")
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	@Column(name="fullname")
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	@Column(name="company")
	public String getCompany() {
		return company;
	}
	
	public void setCompany(String company) {
		this.company = company;
	}
	@Column(name="phone")
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Column(name="email")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name="title")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Column(name="role")
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	@Column(name="printed")
	public int getPrinted() {
		return printed;
	}
	public void setPrinted(int printed) {
		this.printed = printed;
	}
	public Sign(){
		super();
	}
	public Sign(String fullname, String company, String phone, String email,
			String title, String role, int printed) {
		super();
		this.fullname = fullname;
		this.company = company;
		this.phone = phone;
		this.email = email;
		this.title = title;
		this.role = role;
		this.printed = printed;
	}
	public Sign(String fullname, String company, String phone, String email,
			String title, String role) {
		super();
		this.fullname = fullname;
		this.company = company;
		this.phone = phone;
		this.email = email;
		this.title = title;
		this.role = role;
	}
	
	
	
}
