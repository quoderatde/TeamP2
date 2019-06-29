package com;

public class comu_DTO 
{
	
	private int Code;
	private String Title_tag;
	private String Title;
	private String Content;
	private String Name;
	private String Time;
	private int View_count;
	public int getCode() {
		return Code;
	}
	public void setCode(int code) {
		Code = code;
	}
	public String getTitle_tag() {
		return Title_tag;
	}
	public void setTitle_tag(String title_tag) {
		Title_tag = title_tag;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getTime() {
		return Time;
	}
	public void setTime(String time) {
		Time = time;
	}
	public int getView_count() {
		return View_count;
	}
	public void setView_count(int view_count) {
		View_count = view_count;
	}
	public comu_DTO(int code, String title_tag, String title, String content, String name, String time,
			int view_count) 
	{
		
		Code = code;
		Title_tag = title_tag;
		Title = title;
		Content = content;
		Name = name;
		Time = time;
		View_count = view_count;
	}
	public comu_DTO(String title_tag, String title, String content, String name) 
	{
		
		Title_tag = title_tag;
		Title = title;
		Content = content;
		Name = name;
	}
	
	
	
	
	
	

}
