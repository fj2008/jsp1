package chapter4;

import java.io.Serializable;


public class MemberBeen implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4989136165931303074L;

	private int id;
	
	private String name;
	

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
	
	
}
