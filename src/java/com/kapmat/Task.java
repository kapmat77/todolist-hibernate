package com.kapmat;

public class Task {

	private int id;
	private String name;
	private String description;
	private String date;
	private boolean done = false;

	public Task() {
		this.name = "defaultName";
		this.description = "defaultDescription";
		this.date = "01/01/2016";
	}
	
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public boolean isDone() {
		return done;
	}

	public void setDone(boolean done) {
		this.done = done;
	}
}
