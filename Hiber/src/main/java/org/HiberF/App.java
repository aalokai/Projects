package org.HiberF;

import java.util.List;

import org.HiberF.entity.Users;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

 

public class App {

	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Users.class).buildSessionFactory();
		Session session =factory.getCurrentSession();
		try {
			
			// create
//			//Create object of entity class
//			Users user=new Users("username","password","fname","lname");
//			
//			//Start transaction
//			session.beginTransaction();
//			
//			//Perform transaction
//			session.save(user);
//		
//			
//			//Commit the transaction
//			session.getTransaction().commit();
//			System.out.println("Row added");
			
			
			//read
			
//			//create object of entity class type
//			Users user=new Users();
//			//Start transaction
//			session.beginTransaction();
//			//Perform operation
//			user=session.get(Users.class, 12);
//			//Commit the transaction
//			session.getTransaction().commit();
//			System.out.println(user);
//			
			
//			//Update
//			
//			//create object of entity class type
//			Users user=new Users();
//			//Start transaction
//			session.beginTransaction();
//			//Perform operation
//			user=session.get(Users.class, 12);
//			user.setPassword("apple@123");
//			//Commit the transaction
//			session.getTransaction().commit();
//			System.out.println(user);
//			
			
			
//Delete
			
//			//create object of entity class type
//			Users user=new Users();
//			//Start transaction
//			session.beginTransaction();
//			//Perform operation
//			user=session.get(Users.class, 1);
//			session.remove(user); //session.delete(object);
//			//Commit the transaction
//			session.getTransaction().commit();
//			System.out.println(user);
			
			// HQL listing
			
//			session.beginTransaction();
//			List<Users> users=session.createQuery("from users").getResultList();
//			for(Users temp:users) {
//				System.out.println(temp);
//			}
					
			//where clause
			
//			session.beginTransaction();
//			List<Users> users=session.createQuery("from users where username='john'").getResultList();
//			for(Users temp:users) {
//				System.out.println(temp);
//			}
//			
			
			
			
			
			
			
			
		}
		finally {
			session.close();
			factory.close();
		}
		
		
	}

}
