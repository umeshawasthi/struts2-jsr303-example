/**
 * 
 */
package org.demo.validation.actions.dto;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

/**
 * A simple bean holding properties for user
 * This bean will be validated using bean validation API
 *
 * */
public class UserProfileDTO implements Serializable
{

   private static final long serialVersionUID = 1L;
   
   public UserProfileDTO() {
       
   }

      
  
   @NotBlank(message="not.blank")
   private String name;
   
   @NotBlank(message="not.blank")
   private String confirmName;
   
 
   @NotBlank(message="not.blank")
   private Date dateOfBirth;
   
   
   @NotBlank(message="not.blank")
   @NotNull(message="not.blank")
   private String gender;
   
   
   @NotNull(message="not.blank")
   @Min(value=45,message="min.number")
   private Integer weight;
   
   
   @Pattern(regexp="^([a-z0-9]{1,}[\\.\\_\\-]?[a-z0-9]{1,})\\@([a-z0-9]{2,}\\.)([a-z]{2,2}|org|net|com|gov|edu|int|info|biz|museum)$",message="invalid.email")
   private String email;
   
   @NotBlank(message="not.blank")
   private String bloodGroup;
   
   @NotBlank(message="not.blank")
   private String state;
   
   @NotBlank(message="not.blank")
   private String district;
   
   @NotBlank(message="not.blank")
   private String location;
   
   
   @NotBlank(message="not.blank")
   private String postalCode;
   
   
   @Size(min=10, max=10, message="mobile.number")
   private String mobile;
   
   @Size(min=10, max=12, message="mobile.number")
   @Digits(message="only.digits.allowed", fraction = 0 , integer = 0 )
   private String secondaryContactNumber;
   
  
   public String getName() {
       return this.name;
   }

   public void setName(String name) {
       this.name = name;
   }

   

   public void setDateOfBirth(Date dateOfBirth) {
       this.dateOfBirth = dateOfBirth;
   }

   public String getGender() {
       return this.gender;
   }

   public void setGender(String gender) {
       this.gender = gender;
   }

   public Integer getWeight() {
       return this.weight;
   }

   public void setWeight(Integer weight) {
       this.weight = weight;
   }

   public String getEmail() {
       return this.email;
   }

   public void setEmail(String email) {
       this.email = email;
   }

   public String getSecondaryContactNumber() {
       return this.secondaryContactNumber;
   }

   public void setSecondaryContactNumber(String secondaryContactNumber) {
       this.secondaryContactNumber = secondaryContactNumber;
   }

   public String getState() {
       return this.state;
   }

   public void setState(String state) {
       this.state = state;
   }

   public String getLocation() {
       return this.location;
   }

   public void setLocation(String location) {
       this.location = location;
   }

   public String getBloodGroup() {
       return this.bloodGroup;
   }

   public void setBloodGroup(String bloodGroup) {
       this.bloodGroup = bloodGroup;
   }

   public String getDistrict() {
       return this.district;
   }

   public void setDistrict(String district) {
       this.district = district;
   }

   public String getPostalCode() {
       return this.postalCode;
   }

   public void setPostalCode(String postalCode) {
       this.postalCode = postalCode;
   }

   public String getMobile() {
       return this.mobile;
   }

   public void setMobile(String mobile) {
       this.mobile = mobile;
   }

   public String getConfirmName()
   {
       return this.confirmName;
   }



   public void setConfirmName( String confirmName )
   {
       this.confirmName = confirmName;
   }


}
