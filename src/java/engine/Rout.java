/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package engine;

import bean.Disease;
import bean.Patient;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
@WebServlet(name = "Router", urlPatterns = {"/Router"})
public class Rout extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        
        String url = "/index.jsp";
        String signal = request.getParameter("signal");
        String msg = "";
        
        switch(signal){
            case "get_report":
                String symptoms="";
                String sickness="";
                String f_name = request.getParameter("f_name");
                String l_name = request.getParameter("l_name");
                String date = request.getParameter("date");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String gender = request.getParameter("gender");
                String address = request.getParameter("address");
                String city = request.getParameter("city");
                String state = request.getParameter("state");
                String[] symptoms_a =request.getParameterValues("symptoms");
                for(int i=0; i<symptoms_a.length;i++){
                 symptoms=symptoms+symptoms_a[i]+"_";
                 
                }
                String current_medication = request.getParameter("current_medication");
                 long l_time = System.currentTimeMillis();
                        String id = String.valueOf(l_time).substring(7);
                
                if(symptoms.contains("headache") && symptoms.contains("musclePain")&& symptoms.contains("weakness")){
                 sickness="malaria";
                }
                else if(symptoms.contains("headache") && symptoms.contains("stomachPain")&& symptoms.contains("diarrhea")){
                 sickness="Typhiod";
                }
                else{
                    sickness="MedNow";
                }
                
                boolean patient = ConnectDb.report(f_name,l_name,date,phone,email,gender,address,city,state,symptoms,sickness,current_medication,id);
                
                String report=ConnectDb.getreport(sickness);
                String[] report_a=report.split("_");
                Patient pat=new Patient();
                pat.setFirstname(f_name);
                pat.setLastname(l_name);
                pat.setId(id);
                request.setAttribute("patient", pat);
                Disease disease=new Disease();
                disease.setName(sickness);
                disease.setDescription(report_a[0]);
                disease.setPrescription(report_a[1]);
                disease.setTreatment(report_a[2]);
                request.setAttribute("disease", disease);
                url="/report.jsp";
                break;
        }
        request.setAttribute("msg", msg);
    getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Rout.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Rout.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
