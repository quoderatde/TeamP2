package com.member;

public class MemberDTO {
	private String email;
	private String pw;
	private String name;
	private String tel;
	private String address;
	private String youtube;
	private String sex;
	
	public MemberDTO(String email, String pw, String name, String tel, String address, String youtube, String sex) {
		this.email = email;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.address = address;
		this.youtube = youtube;
		this.sex =sex;
	}


	public MemberDTO(String email, String name, String tel, String address, String youtube) {
		this.email = email;
		this.name = name;
		this.tel = tel;
		this.address = address;
		this.youtube = youtube;
	}

	public MemberDTO(String email, String pw) {
		this.email = email;
		this.pw = pw;
	}

	public MemberDTO(String email, String pw, String tel, String address) {
		this.email = email;
		this.pw = pw;
		this.tel = tel;
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getYoutube() {
		return youtube;
	}

	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

}
