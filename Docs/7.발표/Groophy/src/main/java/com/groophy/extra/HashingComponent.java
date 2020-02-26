package com.groophy.extra;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.Pbkdf2PasswordEncoder;

public class HashingComponent {
	private BCryptPasswordEncoder bcrypt;
	private Pbkdf2PasswordEncoder pbkdf2;

	public void setBcrypt(BCryptPasswordEncoder bcrypt) {
		this.bcrypt = bcrypt;
	}

	public void setPbkdf2(Pbkdf2PasswordEncoder pbkdf2) {
		this.pbkdf2 = pbkdf2;
	}

	public String hashByBcrypt(String rawPassword) {
		String hashedPassword = null;

		hashedPassword = bcrypt.encode(rawPassword);

		return hashedPassword;
	}

	public String hashByPbkdf2(String rawPassword) {
		String hashedPassword = null;

		hashedPassword = pbkdf2.encode(rawPassword);
		return hashedPassword;
	}
	
	public boolean matchByBcrypt(String rawPassword, String hashedPassword) {
		boolean result=false;
		
		result=bcrypt.matches(rawPassword, hashedPassword);
		
		return result;
	}

	public boolean matchByPbkdf2(String rawPassword, String hashedPassword) {
		boolean result=false;
		
		result=pbkdf2.matches(rawPassword, hashedPassword);
		
		return result;
	}
	
	
}
