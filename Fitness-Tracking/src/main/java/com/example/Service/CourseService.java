package com.example.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Model.CourseModel;

@Service
public class CourseService {
	
	@Autowired
	private CourseRepository courserepoobj;
	//ADD COURSE DATA IN DB
	public CourseModel addCourseDetails(CourseModel coursemodel)
	{
		coursemodel = courserepoobj.save(coursemodel);
		return coursemodel;
	}
	// FETCH COURSE DATA FROM DB
	public ArrayList<CourseModel> getAllCourseRecordFromDB()
	{
		ArrayList<CourseModel> allcoursedetails = new ArrayList<CourseModel>();
		courserepoobj.findAll().forEach(allcoursedetails::add);
		return allcoursedetails;
	}
	// DELETE COURSE DATA FROM DB
	public void deleteCourseRecord(int id) {
		courserepoobj.deleteById(id);
	}
	//METHOD FOR SEARCH COURSE USING course_name
	public ArrayList<CourseModel> searchCourseBycoursename(String coursename)
	{
		ArrayList<CourseModel> acourselist = (ArrayList<CourseModel>) courserepoobj.findByCoursename(coursename);
		return acourselist;
	}
	
	public CourseModel getCourseRecordFromDB(int id)
	{
		CourseModel tm_model = courserepoobj.findById(id).orElse(new CourseModel());
		return tm_model;
	}
}
