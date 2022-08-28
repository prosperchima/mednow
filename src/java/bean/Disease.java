
package bean;

import java.io.Serializable;


public class Disease implements Serializable {
    
    private String name;
    private String description;
    private String prescription;
    private String treatment;

    public Disease() {
        this.name = "";
        this.description = "";
        this.prescription = "";
        this.treatment = "";
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getPrescription() {
        return prescription;
    }

    public String getTreatment() {
        return treatment;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPrescription(String prescription) {
        this.prescription = prescription;
    }

    public void setTreatment(String treatment) {
        this.treatment = treatment;
    }
    
    
}
