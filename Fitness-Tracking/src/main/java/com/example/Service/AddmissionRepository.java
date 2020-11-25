package com.example.Service;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.Model.AddmissionModel;

public interface AddmissionRepository extends CrudRepository<AddmissionModel, Integer>{

	List<AddmissionModel>findByEmail(String email);
}
