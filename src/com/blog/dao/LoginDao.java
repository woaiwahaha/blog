package com.blog.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;

import com.blog.model.Personal;
import com.blog.model.Type;
import com.blog.model.Wenzhang;

public class LoginDao {
	
	/**
	 * 登录使用；根据用户名和密码判断该用户是否存在数据库中
	 * @param username
	 * @param password
	 * @return
	 * Autor:JiangYi
	 * 2016-12-14
	 * LoginDao.java
	 */
	@SuppressWarnings("unchecked")
	public List<Personal> Login(String username,String password) {
		Session session = (Session) HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		String sql = "from Personal where username=? and password=?";
		try {
			Query query = session.createQuery(sql);
			query.setParameter(0, username);
			query.setParameter(1, password);
			List<Personal> list = query.list();
			tx.commit();
			if (list.size()>0) {
				return list;
			}
			return null;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return null;
	}
	
	/**
	 * 添加用户（注册使用）
	 * @param personal
	 * @return
	 * Autor:JiangYi
	 * 2016-12-19
	 * LoginDao.java
	 */
	public boolean savePerson(Personal personal){
		Session session = (Session) HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			session.save(personal);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return false;
	}
	
	/**
	 * 根据pid查询对象
	 * @param pid
	 * @return
	 * Autor:JiangYi
	 * 2016-12-19
	 * LoginDao.java
	 */
	public Personal getPerson(int pid){
		Session session = (Session) HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			Personal personal = (Personal) session.get(Personal.class, pid);
			tx.commit();
			return personal;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return null;
	}
	
	/**
	 * 获取用户集合
	 * @return
	 * Autor:JiangYi
	 * 2016-12-20
	 * LoginDao.java
	 */
	public List<Personal> getPersons(){
		Session session = (Session) HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		String sql = "from Personal";
		try {
			List<Personal> personals = session.find(sql);
			tx.commit();
			return personals;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return null;
	}
	
	public void saveOrUpdate(Object obj){
		Session session = (Session) HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			session.saveOrUpdate(obj);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		
	}
	
	public List<Wenzhang> getWenzhangs(){
		Session session = (Session) HibernateSessionFactory.getSession();
		String sqlString = "from Wenzhang";
		try {
			List<Wenzhang> wenzhangs = session.find(sqlString);
			return wenzhangs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Type> getTypeList(){
		Session session = (Session) HibernateSessionFactory.getSession();
		String sql = "from Type";
		try {
			List<Type> types = session.find(sql);
			return types;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return null;
	}
	
	public void addWenZhang(Wenzhang wenzhang){
		Session session =(Session) HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			session.saveOrUpdate(wenzhang);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	
	public Wenzhang getWenzhang(int wzid){
		Session session = (Session)HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			Wenzhang wenzhang = (Wenzhang) session.get(Wenzhang.class, wzid);
			return wenzhang;
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return null;
	}
	
	public void delWenZhang(Wenzhang wenzhang){
		Session session = (Session)HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			session.delete(wenzhang);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}
	
	public Type getType(int id){
		Session session = (Session)HibernateSessionFactory.getSession();
		try {
			Type type = (Type)session.get(Type.class, id);
			return type;
		} catch (Exception e) {
			HibernateSessionFactory.closeSession();
		}
		return null;
	}
	
	
	public void delType(Type type){
		Session session = (Session)HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			session.delete(type);
		} catch (Exception e) {
			HibernateSessionFactory.closeSession();
		}finally{
			
		}
	}
	
	
	public static void main(String[] args) {
//		List<Personal> list = Login("admin", "123");
//		Personal personal = list.get(0);
//		System.out.println(personal.toString());
		
	}

}
