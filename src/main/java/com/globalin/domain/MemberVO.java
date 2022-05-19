package com.globalin.domain;

public class MemberVO {

	private int idx, age, height, weight, actindex, onedaykcal;
	private String id, name, pw, gender;

	public int getOnedaykcal() {
		return onedaykcal;
	}

	public void setOnedaykcal(int onedaykcal) {
		this.onedaykcal = onedaykcal;
	}


	public int getActindex() {
		return actindex;
	}

	public void setActindex(int actindex) {
		this.actindex = actindex;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "MemberVO [idx=" + idx + ", age=" + age + ", height=" + height + ", weight=" + weight + ", actindex="
				+ actindex + ", onedaykcal=" + onedaykcal + ", id=" + id + ", name=" + name + ", pw=" + pw + ", gender="
				+ gender + "]";
	}

}
