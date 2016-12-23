package com.blog.model;

/**
 * Wenzhang entity. @author MyEclipse Persistence Tools
 */

public class Wenzhang implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer wzid;
	private String wztitle;
	private String wbody;
	private String wzautor;
	private String wzcjsj;
	private Integer pid;
	private Integer typeid;
	private String wzimg;

	// Constructors

	/** default constructor */
	public Wenzhang() {
	}

	/** full constructor */
	public Wenzhang(String wztitle, String wbody, String wzautor,
			String wzcjsj, Integer pid, Integer typeid,String wzimg) {
		this.wztitle = wztitle;
		this.wbody = wbody;
		this.wzautor = wzautor;
		this.wzcjsj = wzcjsj;
		this.pid = pid;
		this.typeid = typeid;
		this.wzimg = wzimg;
	}

	// Property accessors

	public Integer getWzid() {
		return this.wzid;
	}

	public void setWzid(Integer wzid) {
		this.wzid = wzid;
	}

	public String getWztitle() {
		return this.wztitle;
	}

	public void setWztitle(String wztitle) {
		this.wztitle = wztitle;
	}

	public String getWbody() {
		return this.wbody;
	}

	public void setWbody(String wbody) {
		this.wbody = wbody;
	}

	public String getWzautor() {
		return this.wzautor;
	}

	public void setWzautor(String wzautor) {
		this.wzautor = wzautor;
	}

	public String getWzcjsj() {
		return this.wzcjsj;
	}

	public void setWzcjsj(String wzcjsj) {
		this.wzcjsj = wzcjsj;
	}

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Integer getTypeid() {
		return this.typeid;
	}

	public void setTypeid(Integer typeid) {
		this.typeid = typeid;
	}

	public String getWzimg() {
		return wzimg;
	}

	public void setWzimg(String wzimg) {
		this.wzimg = wzimg;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "wenzhang:wztitle="+wztitle+",wbody="+wbody+",wzautor="+wzautor+",wztypeid="+typeid+",wzimg="+wzimg;
	}

}