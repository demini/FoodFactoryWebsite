package com.demini.entity;

public class Food {
	String number;
	String id;
	String smalldis;
	String largedis;
	String ingradients;
	Double price;
	String image;
	String bigimage;
	
	public String getNumber(){
		return number;
	}
	
	public void setNumber(String number){
		this.number=number;
	}
	
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
	
	public String getImage(){
		return image;
	}
	
	public void setImage(String image){
		this.image=image;
	}
	
	public String getBigimage(){
		return bigimage;
	}
	
	public void setBigimage(String bigimage){
		this.bigimage=bigimage;
	}
	
}
