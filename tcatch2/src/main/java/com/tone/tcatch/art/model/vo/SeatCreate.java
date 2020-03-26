package com.tone.tcatch.art.model.vo;

public class SeatCreate {

	public static void main(String[] args) {
		//65 == A
		for(int k=1; k<=5; k++) {
			for(int i = 65 ; i < 75; i++) { 
				for(int j =1 ; j <=30; j++) {
					if(j < 10) {
						System.out.println("INSERT INTO SEAT_FORM VALUES( '"+(char)i+"-0"+j+"' ,15 , "+k+" , 'Y' , '50000');");
					}else {
						System.out.println("INSERT INTO SEAT_FORM VALUES( '"+(char)i+"-"+j+"' ,15 , "+k+" , 'Y' , '50000');");	
					}
				}
			}
		}
	}

}
