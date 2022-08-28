
package bean;

import java.io.Serializable;


public class Patient implements Serializable {
    private String id;
    private String firstname;
    private String lastname;
    private String dateofbirth;
    private String phone;
    private String email;
    private String gender;
    private String homeaddress;
    private String city;
    private String state; 
    private String position;
    private String candidateid;
    private String weakness;
    private String stomachpain;
    private String headache;
    private String diarrhea;
    private String anemia;
    private String musclepain;
    private String convulsion;
    private String fainting;
    private String bloodystool;

    public Patient() {
        this.id = "";
        this.firstname = "";
        this.lastname = "";
        this.dateofbirth = "";
        this.phone = "";
        this.email = "";
        this.gender = "";
        this.homeaddress = "";
        this.city = "";
        this.state = "";
        this.position = "";
        this.candidateid = "";
        this.weakness = "";
        this.stomachpain = "";
        this.headache = "";
        this.diarrhea = "";
        this.anemia = "";
        this.musclepain = "";
        this.convulsion = "";
        this.fainting = "";
        this.bloodystool = "";
    }
    
    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public String getDateofbirth() {
        return dateofbirth;
    }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public String getGender() {
        return gender;
    }

    public String getHomeaddress() {
        return homeaddress;
    }

    public String getCity() {
        return city;
    }

    public String getState() {
        return state;
    }

    public String getPosition() {
        return position;
    }

    public String getCandidateid() {
        return candidateid;
    }

    public String getWeakness() {
        return weakness;
    }

    public String getStomachpain() {
        return stomachpain;
    }

    public String getHeadache() {
        return headache;
    }

    public String getDiarrhea() {
        return diarrhea;
    }

    public String getAnemia() {
        return anemia;
    }

    public String getMusclepain() {
        return musclepain;
    }

    public String getConvulsion() {
        return convulsion;
    }

    public String getFainting() {
        return fainting;
    }

    public String getBloodystool() {
        return bloodystool;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setHomeaddress(String homeaddress) {
        this.homeaddress = homeaddress;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public void setCandidateid(String candidateid) {
        this.candidateid = candidateid;
    }

    public void setWeakness(String weakness) {
        this.weakness = weakness;
    }

    public void setStomachpain(String stomachpain) {
        this.stomachpain = stomachpain;
    }

    public void setHeadache(String headache) {
        this.headache = headache;
    }

    public void setDiarrhea(String diarrhea) {
        this.diarrhea = diarrhea;
    }

    public void setAnemia(String anemia) {
        this.anemia = anemia;
    }

    public void setMusclepain(String musclepain) {
        this.musclepain = musclepain;
    }

    public void setConvulsion(String convulsion) {
        this.convulsion = convulsion;
    }

    public void setFainting(String fainting) {
        this.fainting = fainting;
    }

    public void setBloodystool(String bloodystool) {
        this.bloodystool = bloodystool;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    
}
