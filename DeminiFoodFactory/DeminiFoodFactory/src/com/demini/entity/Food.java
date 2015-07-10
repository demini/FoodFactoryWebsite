package com.demini.entity;

public class Food {
	String id;
	String smalldis;
	String largedis;
	String ingradients;
	Double price;
	
	public String getID(){
		return id;
	}
	
	public void setID(String id){
		this.id=id;
	}
	
	public String getSmalldis(){
		return smalldis;
	}
	
	public void setSmalldis(String smalldis){
		this.smalldis=smalldis;
	}
	
	public String getLargedis(){
		return largedis;
	}
	
	public void setLargedis(String largedis){
		this.largedis=largedis;
	}
	
	public String getIngradients(){
		return ingradients;
	}
	
	public void setIngradients(String ingradients){
		this.ingradients=ingradients;
	}
	
	public Double getPrice(){
		return price;
	}
	
	public void setPrice(Double price){
		this.price=price;
	}
	
}
