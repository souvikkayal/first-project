package com.example.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Model.StudentModel;

@Service
public class StudentService {

	@Autowired
	private StudentRepository studreprositoryobj;
	
	// METHOD FOR ADD USER DETAILS TO DATABASE
	public StudentModel addStudentDetails(StudentModel smobj)
	{
		smobj = studreprositoryobj.save(smobj);
		return smobj;
	}
	
	public StudentModel searchStudentByEmail(String email)
	{
		StudentModel smobj = studreprositoryobj.findByEmail(email);
		return smobj;
	}
}
