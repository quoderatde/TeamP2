package com;

import java.util.ArrayList;

public class CrollingDTO 
{
	private ArrayList<String> list_img;
	private ArrayList<String> list_title;
	private ArrayList<String> list_link;
	public ArrayList<String> getList_img() {
		return list_img;
	}
	public void setList_img(ArrayList<String> list_img) {
		this.list_img = list_img;
	}
	public ArrayList<String> getList_title() {
		return list_title;
	}
	public void setList_title(ArrayList<String> list_title) {
		this.list_title = list_title;
	}
	public ArrayList<String> getList_link() {
		return list_link;
	}
	public void setList_link(ArrayList<String> list_link) {
		this.list_link = list_link;
	}
	public CrollingDTO(ArrayList<String> list_img, ArrayList<String> list_title, ArrayList<String> list_link) {
		
		this.list_img = list_img;
		this.list_title = list_title;
		this.list_link = list_link;
	}
	
	

}
