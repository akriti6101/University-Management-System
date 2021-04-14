package Student.Demo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



import Student.Bean.*;
public class StudentDemo {
	
	public int setData(Student s)
	{int r=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q="insert into Student (Name,Age,Address,Email,Class_xii,Roll,Branch,Father_Name,Dob,Phone_Number,Class_x,"
					+ "Aadhar_No,Course) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement p=con.prepareStatement(q);
			p.setString(1, s.getName());
			p.setString(2, s.getAge());
			p.setString(3, s.getAddress());
			p.setString(4, s.getEmail());
			p.setString(5, s.getClass_xii());
			p.setString(6, s.getRoll());
			p.setString(7, s.getBranch());
			p.setString(8, s.getFather_Name());
			p.setString(9, s.getDob());
			p.setString(10, s.getPhone_Number());
			p.setString(11, s.getClass_x());
			p.setString(12, s.getAadhar_No());
			p.setString(13, s.getCourse());
			
			r=p.executeUpdate();
			return r;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
		
	}
	public int upMarks(Student s)
	{int r=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q="update Student set sub1='"+s.getSub1()+"',sub2='"+s.getSub2()+"' , sub3='"+s.getSub3()+"',"
					+ "sub4='"+s.getSub4()+"',sub5='"+s.getSub5()+"',m_S1='"+s.getM_S1()+"',m_S2='"+s.getM_S2()+"',"
							+ "m_S3='"+s.getM_S3()+"',m_S4='"+s.getM_S4()+"',m_S5='"+s.getM_S5()+"' where Roll='"+s.getRoll()+"'";
			
			PreparedStatement p=con.prepareStatement(q);
			r=p.executeUpdate();
			return r;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
		
	}

	public int UpdateData(Student s,String m)
	{int r=0;
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q="update Student set Name='"+s.getName()+"',Age='"+s.getAge()+"' , Address='"+s.getAddress()+"',"
					+ "Email='"+s.getEmail()+"',Class_xii='"+s.getClass_xii()+"',Roll='"+s.getRoll()+"',Branch='"+s.getBranch()+"',"
							+ "Father_Name='"+s.getFather_Name()+"',Dob='"+s.getDob()+"',Phone_Number='"+s.getPhone_Number()+"',Class_x='"+s.getClass_x()+"'"
									+ ",Aadhar_No='"+s.getAadhar_No()+"',Course='"+s.getCourse()+"'" 
									+ "where Roll='"+m+"'";
			
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
			String q=" delete from Student where Roll='"+m+"'";
			
			PreparedStatement p=con.prepareStatement(q);
			r=p.executeUpdate();
		
			return r;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return r;
		
	}
	
	
	public ArrayList<Student> getList()
	{ArrayList<Student> ls=new ArrayList<Student>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q="select * from Student";
			ResultSet rs=null;
		Statement st=con.createStatement();
			rs=st.executeQuery(q);
	while(rs.next())
	{Student s=new Student();
		s.setName(rs.getString(1));
		s.setAge(rs.getString(2));
		s.setAddress(rs.getString(3));
		s.setEmail(rs.getString(4));
		s.setClass_xii(rs.getString(5));
		s.setRoll(rs.getString(6));
		s.setBranch(rs.getString(7));
		s.setFather_Name(rs.getString(8));
		s.setDob(rs.getString(9));
		s.setPhone_Number(rs.getString(10));
		s.setClass_x(rs.getString(11));
		s.setAadhar_No(rs.getString(12));
		s.setCourse(rs.getString(13));
		
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
		
			
			String q="insert into stud_attendance(Roll_No,Date,Attendance)values('"+r+"', NOW(),'"+p1+"')";
		  
		   r1=st.executeUpdate(q);
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

			  return r1;
		
		
	}

	public ArrayList<Stu> getAttenList()
	{ResultSet rs=null;
	ArrayList<Stu> ls=new ArrayList<Stu>();
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
		
			
			String q="select * from stud_attendance";
			rs=st.executeQuery(q);
			while(rs.next())
			{
				Stu t=new Stu();
				t.setRoll_No(rs.getString("Roll_No"));
			
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
	

	
	public Student getStud(String m)
	{Student s=new Student();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q="select * from Student where Roll='"+m+"'";
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
		s.setRoll(rs.getString(6));
		s.setBranch(rs.getString(7));
		s.setFather_Name(rs.getString(8));
		s.setDob(rs.getString(9));
		s.setPhone_Number(rs.getString(10));
		s.setClass_x(rs.getString(11));
		s.setAadhar_No(rs.getString(12));
		s.setCourse(rs.getString(13));
		s.setSub1(rs.getString(14));
		s.setSub2(rs.getString(15));
		s.setSub3(rs.getString(16));
		s.setSub4(rs.getString(17));
		s.setSub5(rs.getString(18));
		s.setM_S1(rs.getString(19));
		s.setM_S2(rs.getString(20));
		s.setM_S3(rs.getString(21));
		s.setM_S4(rs.getString(22));
		s.setM_S5(rs.getString(23));
		break;
	}
			return s;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return s;
		
	}
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
			String q="select * from Student where Name='"+u+"' and Roll='"+p+"'";
	
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
	
	public Student getStudDetails(String m,String p)
	{Student s=new Student();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "root");
			String q="select * from Student where Name ='"+m+"' and Roll='"+p+"'";
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
		s.setRoll(rs.getString(6));
		s.setBranch(rs.getString(7));
		s.setFather_Name(rs.getString(8));
		s.setDob(rs.getString(9));
		s.setPhone_Number(rs.getString(10));
		s.setClass_x(rs.getString(11));
		s.setAadhar_No(rs.getString(12));
		s.setCourse(rs.getString(13));
		s.setSub1(rs.getString(14));
		s.setSub2(rs.getString(15));
		s.setSub3(rs.getString(16));
		s.setSub4(rs.getString(17));
		s.setSub5(rs.getString(18));
		s.setM_S1(rs.getString(19));
		s.setM_S2(rs.getString(20));
		s.setM_S3(rs.getString(21));
		s.setM_S4(rs.getString(22));
		s.setM_S5(rs.getString(23));
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
