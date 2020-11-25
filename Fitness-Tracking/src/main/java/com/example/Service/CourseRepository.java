package com.example.Service;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.Model.CourseModel;

public interface CourseRepository extends CrudRepository<CourseModel, Integer>{
List<CourseModel>findByCoursename(String coursename);
}
