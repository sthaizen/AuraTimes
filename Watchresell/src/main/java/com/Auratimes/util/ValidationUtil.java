package com.Auratimes.util;

// importing 
import java.time.LocalDate;
import java.time.Period;
import java.util.regex.Pattern;
import jakarta.servlet.http.Part;
// utility class to validation 
public class ValidationUtil {
	public static boolean isNullOrEmpty(String input) {// Checks if a string is null or empty after trimming whitespace.
        return input == null || input.trim().isEmpty();
    }

    public static boolean isValidEmail(String email) { //email validation accpet basic structure of email
        return email != null && email.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$");
    }

    public static boolean isValidPhoneNumber(String phoneNumber) {// phone number validation accepts numbver starting form 98 and up to 10 digits exacetly
        return phoneNumber != null && phoneNumber.matches("^98\\d{8}$");
    }

    public static boolean isAlphanumericStartingWithLetter(String username) {// username validation accepts username that stars with a letter and should be atleas 5 chaarecters
        return username != null && username.matches("^[A-Za-z][A-Za-z0-9_]{4,}$");
    }

    public static boolean isValidPassword(String password) {// password validation accepts only atleast 1 uppercase letter one number 1 special charecter and minimum charecter
        return password != null && password.matches("^(?=.*[A-Z])(?=.*\\d)(?=.*[@#$%^&+=!]).{8,}$");
    }

    public static boolean isValidGender(String gender) {// gender validation accepts only name or female
        return gender != null && (gender.equalsIgnoreCase("male") || gender.equalsIgnoreCase("female"));
    }
}