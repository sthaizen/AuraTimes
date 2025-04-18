package com.Auratimes.util;


import java.time.LocalDate;
import java.time.Period;
import java.util.regex.Pattern;
import jakarta.servlet.http.Part;

public class ValidationUtil {

	public static boolean isNullOrEmpty(String input) {
        return input == null || input.trim().isEmpty();
    }

    public static boolean isValidEmail(String email) {
        return email != null && email.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$");
    }

    public static boolean isValidPhoneNumber(String phoneNumber) {
        return phoneNumber != null && phoneNumber.matches("^98\\d{8}$");
    }

    public static boolean isAlphanumericStartingWithLetter(String username) {
        return username != null && username.matches("^[A-Za-z][A-Za-z0-9_]{4,}$");
    }

    public static boolean isValidPassword(String password) {
        return password != null && password.matches("^(?=.*[A-Z])(?=.*\\d)(?=.*[@#$%^&+=!]).{8,}$");
    }

    public static boolean isValidGender(String gender) {
        return gender != null && (gender.equalsIgnoreCase("male") || gender.equalsIgnoreCase("female"));
    }
}