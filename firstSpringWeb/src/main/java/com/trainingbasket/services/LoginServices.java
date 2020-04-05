package com.trainingbasket.services;

import org.springframework.stereotype.Component;

@Component
public class LoginServices {
	public boolean validateUser(String user, String pass) {
		return user.equalsIgnoreCase("trainingbasket") && pass.equals("pass123");
	}

}
