package com.user;

public class Course 
{

	String courseName;
	String professorName;
	WeekDay[] occurrences;
	String time;
	String roomNumber;
	String startDate;
	
public Course()
{}

public Course(String courseName, String professorName, WeekDay[] occurrences, String time, String roomNumber, String startDate)
{
	this.courseName = courseName;
	this.professorName = professorName;
	this.occurrences = occurrences;
	this.time = time;
	this.roomNumber = roomNumber;
	this.startDate = startDate;
	
	
}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getProfessorName() {
		return professorName;
	}

	public void setProfessorName(String professorName) {
		this.professorName = professorName;
	}

	public WeekDay[] getOccurrences() {
		return occurrences;
	}

	public void setWeekDay(WeekDay[] occurrences) {
		this.occurrences = occurrences;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	
	
}
