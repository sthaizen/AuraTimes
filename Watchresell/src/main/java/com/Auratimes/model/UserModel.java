package com.Auratimes.model;
// user model class that stores and manage user details 
public class UserModel {
    private String username;
    private String email;
    private String dateOfBirth;
    private String gender;
    private String phoneNumber;

    public UserModel() {}
    
    //constructor that  creates user model with user details 
    public UserModel(String username, String email, String  dateOfBirth, String gender, String phoneNumber) {
        this.username = username;
        this.email = email;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.phoneNumber = phoneNumber;
    }
    
    // getter and setter method for each user 
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    // return user details 
    @Override
    public String toString() {
        return "UserModel [username=" + username + ", email=" + email + ", dateOfBirth=" + dateOfBirth +
                ", gender=" + gender + ", phoneNumber=" + phoneNumber + "]";
    }
}
