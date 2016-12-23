package com.blog.model;

/**
 * Personal entity. @author MyEclipse Persistence Tools
 */

public class Personal implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer pid;
	private String username;
	private String password;
	private String sex;
	private String address;
	private String zcsj;

	// Constructors

	/** default constructor */
	public Personal() {
	}

	/** full constructor */
	public Personal(String username, String password, String sex,
			String address, String zcsj) {
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.address = address;
		this.zcsj = zcsj;
	}

	// Property accessors

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZcsj() {
		return this.zcsj;
	}

	public void setZcsj(String zcsj) {
		this.zcsj = zcsj;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "pid="+pid+",username="+username+",password="+password+",sex="+sex+",address="+address+",zcsj="+zcsj;
	}

}