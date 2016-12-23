package com.blog.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import com.blog.dao.LoginDao;
import com.blog.model.Personal;
import com.blog.model.Type;
import com.blog.model.Wenzhang;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private Personal personal;
	private String username;
	private String password;
	private LoginDao loginDao = new LoginDao();
	private List<Personal> personals;
	private List<Wenzhang> wenzhangs;
	private List<Type> types;
	private Wenzhang wenzhang;
	private Type type;

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public String execute() throws Exception {
		List<Personal> list = loginDao.Login(username, password);
		if (list!=null) {
			ActionContext.getContext().getSession().put("personal",list.get(0));//将登陆对象放进session
			username = list.get(0).getUsername();
			return SUCCESS;
		}
		return ERROR;
	}
	

	public String getPersonalList(){
		personals = loginDao.getPersons();
		System.out.println("获取的personals列表:"+personals.toString());
		return "list";
	}
	
	
	
	public String getPerson(){
		personal = loginDao.getPerson(personal.getPid());
		System.out.println("单个personal对象:"+personal.toString());
		return "personDetail";
	}
	
	public String updatePerson(){
		System.out.println("前台获取的要修改的personal对象:"+personal.toString());
		loginDao.saveOrUpdate(personal);
		return "tolist";
	}
	
	public String getWenzhangList(){
		System.out.println("--文章列表方法--");
		wenzhangs = loginDao.getWenzhangs();
		System.out.println(wenzhangs.size());
		System.out.println("文章列表:"+wenzhangs.toString());
		return "wenzhangs";
	}
	
	public String addWenZhangBefore(){
		//添加文章前获取用户列表和类型列表
		types = loginDao.getTypeList();
		personals = loginDao.getPersons();
		return "addwenzhang";
	}
	
	
	public String addWenZhang(){
		System.out.println(wenzhang.toString());
		Personal per = (Personal) ActionContext.getContext().getSession().get("personal"); //获取session中的登录用户信息
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String cjsj = sdf.format(new Date()); 
		System.out.println(per.toString());
		wenzhang.setWzautor(per.getUsername());
		wenzhang.setWzcjsj(cjsj);
		wenzhang.setPid(per.getPid());
		loginDao.addWenZhang(wenzhang);
		return "towenzhangs";
	}
	
	public String updateWenZhangBefore(){
		wenzhang = loginDao.getWenzhang(wenzhang.getWzid());
		types = loginDao.getTypeList();
		return "wenzhangdetail";
	}
	
	public String updateWenZhang(){
		System.out.println("文章详情:"+wenzhang.toString());
		Personal per = (Personal) ActionContext.getContext().getSession().get("personal"); //获取session中的登录用户信息
		wenzhang.setWzautor(per.getUsername());
		wenzhang.setPid(per.getPid());
		loginDao.saveOrUpdate(wenzhang);
		return "towenzhangs";
	}
	
	
	public String delWenZhang(){
		System.out.println(wenzhang.getWzid());
		loginDao.delWenZhang(loginDao.getWenzhang(wenzhang.getWzid()));
		return "towenzhangs";
	}
	
	
	public String getTypeList(){
		types = loginDao.getTypeList();
		return "types";
	}
	
	public String delType(){
		type = loginDao.getType(type.getTid());
		loginDao.delType(type);
		return "totypeList";
	}
	
	public String addType(){
		Personal per = (Personal) ActionContext.getContext().getSession().get("personal");
		SimpleDateFormat sdfDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		type.setCjr(per.getUsername());
		type.setCjsj(sdfDateFormat.format(new Date()));
		loginDao.saveOrUpdate(type);
		return "totypeList";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Personal> getPersonals() {
		return personals;
	}

	public void setPersonals(List<Personal> personals) {
		this.personals = personals;
	}

	public Personal getPersonal() {
		return personal;
	}

	public void setPersonal(Personal personal) {
		this.personal = personal;
	}


	public void setWenzhangs(List<Wenzhang> wenzhangs) {
		this.wenzhangs = wenzhangs;
	}


	public List<Wenzhang> getWenzhangs() {
		return wenzhangs;
	}


	public List<Type> getTypes() {
		return types;
	}


	public void setTypes(List<Type> types) {
		this.types = types;
	}


	public Wenzhang getWenzhang() {
		return wenzhang;
	}


	public void setWenzhang(Wenzhang wenzhang) {
		this.wenzhang = wenzhang;
	}


	public Type getType() {
		return type;
	}


	public void setType(Type type) {
		this.type = type;
	}
	
	

	

	
	

	
	
}
