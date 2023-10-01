package com.model;

public class Register {
private int id;
private String name;
private String email;
private String course;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getCourses() {
	return course;
}
public void setCourses(String courses) {
	this.course = courses;
}
public Register(String _name, String _email, String _courses) {
	name = _name;
    email = _email;
    course = _courses;
 }
public Register(int _id,String _name, String _email, String _courses) {
	id = _id;
	name = _name;
    email = _email;
    course = _courses;
 }
}
