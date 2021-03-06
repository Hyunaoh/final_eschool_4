package com.kosta.th147_4group.vo;

import java.util.Date;


public class MemberVO2 {
	private int num;		// 가입순번
	private String id; 		// ID			***
	private String pw; 		// 비밀번호
	private String name; 	// 이름
	private String tel; 	// 핸드폰번호
	private String site; 	// 주소
	private String email; 	// email
	private String level; 	// 직급 
	private Date date;		// 가입날짜
	private String stName;	// 자녀의 이름		***
	private String sms;		// sms 동의 여부
	private String gender;	// 성별
	private String grade;	// 학년
	private String schoolClass;  	// 반 

	public MemberVO2() {
	}

	public MemberVO2(int num, String id, String pw, String name, String tel, String site, String email, String level,
			Date date, String stName, String sms, String gender, String grade, String schoolClass) {

		this.num = num;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.site = site;
		this.email = email;
		this.level = level;
		this.date = date;
		this.stName = stName;
		this.sms = sms;
		this.gender = gender;
		this.grade = grade;
		this.schoolClass = schoolClass;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getStName() {
		return stName;
	}

	public void setStName(String stName) {
		this.stName = stName;
	}

	public String getSms() {
		return sms;
	}

	public void setSms(String sms) {
		this.sms = sms;
	}

	@Override
	public String toString() {
		return "MemberVO [num=" + num + ", id=" + id + ", pw=" + pw + ", name=" + name + ", tel=" + tel + ", site="
				+ site + ", email=" + email + ", level=" + level + ", date=" + date + ", stName=" + stName + ", sms="
				+ sms + "]";
	}

	public void insert(MemberVO memberVO) {
		
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getSchoolClass() {
		return schoolClass;
	}

	public void setSchoolClass(String schoolClass) {
		this.schoolClass = schoolClass;
	}


}
