package Teacher.Demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Student.Bean.Stu;
import Student.Bean.Student;
import Teacher.Bean.*;

public class TeacherDemo {

	

	public int check (String u,String p)
	{	ResultSet rs=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q="select * from teacher where Name='"+u+"' and Employee_ID='"+p+"'";
	
		Statement st=con.createStatement();
			rs=st.executeQuery(q);
			if(rs.next())
				 return 1;
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
			 return 0;
		
	
		
	}
	public int setData(Teacher s)
	{int r=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q="insert into teacher (Name,Age,Address,Email,Class_xii,Education,Father_Name,Dob,Phone_Number,Class_x,"
					+ "Employee_Id,Aadhar_No,Department) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement p=con.prepareStatement(q);
			p.setString(1, s.getName());
			p.setString(2, s.getAge());
			p.setString(3, s.getAddress());
			p.setString(4, s.getEmail());
			p.setString(5, s.getClass_xii());
		p.setString(6, s.getEducation());
			p.setString(7, s.getFather_Name());
			p.setString(8, s.getDob());
			p.setString(9, s.getPhone_Number());
			p.setString(10, s.getClass_x());
			p.setString(11, s.getEmployee_Id());
			p.setString(12, s.getAadhar_No());
			p.setString(13, s.getDepartment());
			
			r=p.executeUpdate();
			return r;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
		
	}

	public int UpdateData(Teacher s,String m)
	{int r=0;
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q="update teacher set Name='"+s.getName()+"',Age='"+s.getAge()+"' , Address='"+s.getAddress()+"',"
					+ "Email='"+s.getEmail()+"',Class_xii='"+s.getClass_xii()+"',Education='"+s.getEducation()+"',"
							+ "Father_Name='"+s.getFather_Name()+"',Dob='"+s.getDob()+"',Phone_Number='"+s.getPhone_Number()+"',Class_x='"+s.getClass_x()+"',"
									+ "Employee_ID='"+s.getEmployee_Id()+"',Aadhar_No='"+s.getAadhar_No()+"',Department='"+s.getDepartment()+"'" 
									+ "where Employee_ID='"+m+"' ";
			
			PreparedStatement p=con.prepareStatement(q);
			r=p.executeUpdate();
		
			return r;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return r;
		
	}
	
	public int del(String m)
	{int r=0;
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q=" delete from teacher where Employee_ID='"+m+"'";
			
			PreparedStatement p=con.prepareStatement(q);
			r=p.executeUpdate();
		
			return r;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return r;
		
	}
	
	public ArrayList<Teacher> getList()
	{ArrayList<Teacher> ls=new ArrayList<Teacher>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q="select * from teacher";
			ResultSet rs=null;
		Statement st=con.createStatement();
			rs=st.executeQuery(q);
	while(rs.next())
	{Teacher s=new Teacher();
		s.setName(rs.getString(1));
		s.setAge(rs.getString(2));
		s.setAddress(rs.getString(3));
		s.setEmail(rs.getString(4));
		s.setClass_xii(rs.getString(5));
	     s.setEducation(rs.getString(6));
		s.setFather_Name(rs.getString(7));
		s.setDob(rs.getString(8));
		s.setPhone_Number(rs.getString(9));
		s.setClass_x(rs.getString(10));
		s.setEmployee_Id(rs.getString(11));
		s.setAadhar_No(rs.getString(12));
		s.setDepartment(rs.getString(13));
		
		ls.add(s);
	}
			return ls;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}

	public int setatten(String r,String p1)
	{ResultSet rs=null;
		int r1=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");

			 Statement st=con.createStatement();
		
			
			String q="insert into tea_attendance(Employee_ID,Date,Attendance)values('"+r+"', NOW(),'"+p1+"')";
		  
		   r1=st.executeUpdate(q);
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

			  return r1;
		
		
	}
	
	public ArrayList<Tea> getAttenList()
	{ResultSet rs=null;
	ArrayList<Tea> ls=new ArrayList<Tea>();
		int r1=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");

			 Statement st=con.createStatement();
		
			
			String q="select * from tea_attendance";
			rs=st.executeQuery(q);
			while(rs.next())
			{
				Tea t=new Tea();
				t.setEmployee_ID(rs.getString("Employee_ID"));
			
				t.setDate(rs.getString("Date"));
				t.setAttendance(rs.getString("Attendance"));
				ls.add(t);
			}
		    
		    
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

			  return ls;
		
		
	}
	public Teacher getTea(String m)
	{Teacher s=new Teacher();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q="select * from teacher where Employee_ID='"+m+"'";
			ResultSet rs=null;
		Statement st=con.createStatement();
			rs=st.executeQuery(q);
	while(rs.next())
	{
		s.setName(rs.getString(1));
		s.setAge(rs.getString(2));
		s.setAddress(rs.getString(3));
		s.setEmail(rs.getString(4));
		s.setClass_xii(rs.getString(5));
		
		s.setEducation(rs.getString(6));
		s.setFather_Name(rs.getString(7));
		s.setDob(rs.getString(8));
		s.setPhone_Number(rs.getString(9));
		s.setClass_x(rs.getString(10));
		s.setEmployee_Id(rs.getString(11));
		s.setAadhar_No(rs.getString(12));
		s.setDepartment(rs.getString(13));
		
		break;
	}
			return s;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return s;
		
	}
	

	public Teacher getTeaDetails(String m,String p)
	{Teacher s=new Teacher();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q="select * from teacher where Name='"+m+"' and Employee_ID='"+p+"'";
			ResultSet rs=null;
		Statement st=con.createStatement();
			rs=st.executeQuery(q);
	while(rs.next())
	{
		s.setName(rs.getString(1));
		s.setAge(rs.getString(2));
		s.setAddress(rs.getString(3));
		s.setEmail(rs.getString(4));
		s.setClass_xii(rs.getString(5));
		
		s.setEducation(rs.getString(6));
		s.setFather_Name(rs.getString(7));
		s.setDob(rs.getString(8));
		s.setPhone_Number(rs.getString(9));
		s.setClass_x(rs.getString(10));
		s.setEmployee_Id(rs.getString(11));
		s.setAadhar_No(rs.getString(12));
		s.setDepartment(rs.getString(13));
		
		break;
	}
			return s;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return s;
		
	}
	
	
	
}
