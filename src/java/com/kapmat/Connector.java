package com.kapmat;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

public class Connector {

	private static HibernateUtil helper;
	private static Session session;

	public static void register(Task task) {
		Task t = new Task();
		t.setName(task.getName());
		session = helper.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(t);
		session.getTransaction().commit();
		session.close();
	}

	public static void updateTask(int id, Task newTask) {
		session = helper.getSessionFactory().openSession();
		session.beginTransaction();
		Task task = (Task) session.get(Task.class, id);
		task.setName(newTask.getName());
		task.setDescription(newTask.getDescription());
		task.setDate(newTask.getDate());
		System.out.println(newTask.getDate());
		session.update(task);
		session.getTransaction().commit();
		session.close();
	}
		
		
	public static void updateStatus(int id, Task newTask) {
		session = helper.getSessionFactory().openSession();
		session.beginTransaction();
		Task task = (Task) session.get(Task.class, id);
		task.setDone(newTask.isDone());
		session.update(task);
		session.getTransaction().commit();
		session.close();
	}
	
	public static void addToDatabase(Task task) {
		Task t = new Task();
		t.setName(task.getName());
		t.setDescription(task.getDescription());
		t.setDate(task.getDate());
		session = helper.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(t);
		session.getTransaction().commit();
		session.close();
	}

	public static Task getObjectByID(int id) {
		session = helper.getSessionFactory().openSession();
		session.beginTransaction();
		Task task = (Task) session.get(Task.class, id);
//		List<Task> taskList = session.createCriteria(Task.class).list();
//		Criteria criteria = session.createCriteria(Task.class);
//		Task task = (Task) criteria.add(Restrictions.eq("name", "qq")).uniqueResult();
		session.close();
		return task;
	}

	public static List<Task> getTaskList() {
		session = helper.getSessionFactory().openSession();
		session.beginTransaction();
		List<Task> taskList = session.createCriteria(Task.class).list();
		session.close();
		return taskList;
	}

	public static int getDataBaseSize() {
		session = helper.getSessionFactory().openSession();
		session.beginTransaction();
		List<Task> taskList = session.createCriteria(Task.class).list();
		session.close();
		return taskList.size();
	}

	public static void deleteFromDataBase(int id) {
		session = helper.getSessionFactory().openSession();
		session.beginTransaction();
		try {
			Task task = (Task) session.get(Task.class, id);
			session.delete(task);
			session.getTransaction().commit();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}

	}
}
