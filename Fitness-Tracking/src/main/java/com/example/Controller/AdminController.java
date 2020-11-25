package com.example.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.Model.AddmissionModel;
import com.example.Model.CourseModel;
import com.example.Service.AddmissionService;
import com.example.Service.CourseService;

@Controller
public class AdminController {
	
	@Autowired
	private CourseService courseserviceobj;
	@Autowired
	private AddmissionService addmissionservice;
	
	//FOR ADMIN LOGIN
	@RequestMapping(value="/adminlogincheck", method = RequestMethod.POST)
	public ModelAndView AdminLoginCheck(@RequestParam String admin_id, String password, HttpSession session)
	{
		ModelAndView mv = new ModelAndView();
		if(admin_id.equals("admin") && password.equals("admin")) 
		{
			session.setAttribute("adminstudname", "ADMIN");
			mv.addObject("errormsg", "VALID ADMIN");
			mv.setViewName("adminafterlogin.jsp");
		}
		else
		{
			mv.addObject("errormsg", "INVALID UID OR PASSWORD");
			mv.setViewName("adminlogin.jsp");
		}
		
		return mv;
	}

		//FOR ADD COURSE
	/*@RequestMapping(value="/adminaddcourse", method=RequestMethod.POST)
	public String AddCourse(CourseModel coursemobj, HttpSession session)
	{
		coursemobj = courseserviceobj.addCourseDetails(coursemobj);	//ADDING TOUR BY PASSING OBJECT
		ArrayList<CourseModel> courselist = courseserviceobj.getAllCourseRecordFromDB();//AFTER ADDING FETCHING ALL DETAILS FROM DB
		session.setAttribute("allcourselist", courselist);//SET VALUES FOR JSP PAGE

		return "showallcourse.jsp";
	}
	*/
	@RequestMapping(value="/adminaddcourse", method=RequestMethod.POST)
	public String AddCourse(CourseModel coursemobj, HttpSession session)
	{
		coursemobj = courseserviceobj.addCourseDetails(coursemobj);
		ArrayList<CourseModel> courselist = courseserviceobj.getAllCourseRecordFromDB();
		session.setAttribute("allcourselist", courselist);
		return "showallcourse.jsp";
	}
	//FOR GET ALL RECORD FROM COURSE DB
	@RequestMapping("/viewallcourse")
	public String openAdminViewAllStudent(HttpSession session)
	{
		ArrayList<CourseModel> courselist = courseserviceobj.getAllCourseRecordFromDB();
		session.setAttribute("allcourselist", courselist);
		System.out.println(courselist.size());
		return "showallcourse.jsp";
	}
	
	//FOR DELETE ANY TOUR FROM DB
	@RequestMapping("/deletecourse")
	public ModelAndView deletecourse(@RequestParam int id,HttpSession session)
	{
		//System.out.println("INSIDE deletecourse Method IN CONTROLLER CLASS");
		
		courseserviceobj.deleteCourseRecord(id);
		ArrayList<CourseModel> courselist = courseserviceobj.getAllCourseRecordFromDB();
		session.setAttribute("allcourselist", courselist);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "RECORD DELETED");
		mv.setViewName("showallcourse.jsp");
		return mv;
	}
	
	//FOR GET ALL RECORD FROM ADDMISSION DB
	@RequestMapping("/adminshowalladdmission")
	public String openAdminViewAlladdmission(HttpSession session)
	{
		ArrayList<AddmissionModel> addlist = addmissionservice.getAllAddmissionRecordFromDB();
		session.setAttribute("addmissionlist", addlist);
		System.out.println(addlist.size());
		return "adminshowaddmission.jsp";
	}
	
	
	
	// FOR ADMIN LOGOUT
	@RequestMapping("/adminlogout")
	public  String Logout(HttpSession session) 
	{
		session.removeAttribute("adminstudname");
		session.invalidate();
		
		return "home.jsp";
	}
	
	
}
