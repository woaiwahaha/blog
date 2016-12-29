package com.blog.model;

/**
 * Type entity. @author MyEclipse Persistence Tools
 */

public class Type implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer tid;
	private String tname;
	private String cjsj;
	private String cjr;

	// Constructors

	/** default constructor */
	public Type() {
	}

	/** full constructor */
	public Type(String tname, String cjsj, String cjr) {
		this.tname = tname;
		this.cjsj = cjsj;
		this.cjr = cjr;
	}

	// Property accessors

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public String getTname() {
		return this.tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getCjsj() {
		return this.cjsj;
	}

	public void setCjsj(String cjsj) {
		this.cjsj = cjsj;
	}

	public String getCjr() {
		return this.cjr;
	}

	public void setCjr(String cjr) {
		this.cjr = cjr;
	}

}