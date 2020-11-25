package com.example.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Model.AddmissionModel;

@Service
public class AddmissionService {
	@Autowired
	private AddmissionRepository addmissionrepository;
	
	public AddmissionModel addAddmission(AddmissionModel addmissionmodel)
	{
		addmissionmodel = addmissionrepository.save(addmissionmodel);
		return addmissionmodel;
	}
	// FETCH ADDMISSION DATA FROM DB
	public ArrayList<AddmissionModel> getAllAddmissionRecordFromDB()
	{
		ArrayList<AddmissionModel> alladdmission = new ArrayList<AddmissionModel>();
		addmissionrepository.findAll().forEach(alladdmission::add);
		return alladdmission;
	}
	//METHOD FOR SEARCH ADDMISSION USING EMAIL
	public ArrayList<AddmissionModel> getAlldbSearchByEmail(String email)
	{
		ArrayList<AddmissionModel> addmission1 = (ArrayList<AddmissionModel>)addmissionrepository.findByEmail(email);
		return addmission1;
	}

	//METHOD FOR DELETE BOOKING RECORDS
	public void deleteAddmissionRecord(int id) 
	{
		addmissionrepository.deleteById(id);
	}
	
}
