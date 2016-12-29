package com.blog.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.blog.dao.LoginDao;
import com.blog.model.Personal;
import com.opensymphony.xwork2.ActionSupport;

public class RegistAction extends ActionSupport {
	private Personal personal;
	private LoginDao dao = new LoginDao();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	/**
	 * 注册Action
	 */
	private static final long serialVersionUID = 1L;
	
	
	@Override
	public String execute() throws Exception {
		personal.setZcsj(sdf.format(new Date()));
		dao.savePerson(personal);
		return SUCCESS;
	}

	public Personal getPersonal() {
		return personal;
	}

	public void setPersonal(Personal personal) {
		this.personal = personal;
	}


	

	
	
	
	

}
