/**
 * 
 */
package com.saygood.soft.model;

import java.io.Serializable;

/**
 * @author zhang kaiqiang
 *2013-5-17 11:46:34
 */
public class Client implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String info;
	private int score;
	private int classifyId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getClassifyId() {
		return classifyId;
	}
	public void setClassifyId(int classifyId) {
		this.classifyId = classifyId;
	}
	
	
	
	
	
	

}
