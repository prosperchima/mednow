<%@page import="bean.Patient"%>
<%@page import="bean.Disease"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Medic | MedNow</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
</head>

<body class="bg-gradient-white">
  <header>
    <div
      class=" d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-gradient-white border-bottom shadow-sm">
        <h5 class="my-0 mr-md-auto font-weight-normal text-primary"> <a href="index.jsp" style="text-decoration: none;"><i class="fas fa-user-md fa-2x"></i>MedNow</a></h5>
      <!-- <img class="photo my-0 mr-md-auto font-weight-normal" src="images/omney1.png"> -->
      <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="index.jsp">Home</a>
        <a class="p-2 text-dark" href="page.jsp">Health Checker</a>
        <a class="p-2 text-dark" href="about.jsp">About Us</a>
      </nav>
      <!-- <a class="btn btn-outline-light" href="login.html">LiveResult</a> -->
    </div>
  </header>
  <section>
    <div class="container">
      <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
          <!-- <h4 class="text-primary mt-5">Health Status Report</h4> -->
        </div>
        <div class="col-md-4"></div>
      </div>
    </div>
  </section>
  <section>
    <div class="container-fluid top-margin pb-3">
      <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8 bg-gray">
          <form class="" method="POST" id="form">
            <div class="text-center text-dark pt-3 ">
              <h4 class="text-primary">Result of Diagnosis</h4>
              
              <% 
                  Disease disease = (Disease) request.getAttribute("disease");
                  Patient pat=(Patient) request.getAttribute("patient");
              %>
              <h5><%= pat.getFirstname()+" "+pat.getLastname() %></h5>
                
                 <h5>Report ID:<%=pat.getId() %> </h5>
              <p>You can use the report ID to search and recall the result of your diagnosis whenever you come back.</p>
              <hr><hr>
              <div class="mt-5">
                  <p>You are been diagonised to have  <b><%=disease.getName() %></b></p>
                  <p><%=disease.getDescription() %></p>
              <hr>
              <h5><b>Treatment</b></h5>
              <p><%=disease.getTreatment() %></p>
              
                  </div>
<!--                  <button type="submit" class="btn mb-3 btn-primary"></button>-->
                  <!-- Button trigger modal -->
                        <button type="button" class="btn mb-3 btn-primary" data-toggle="modal" data-target="#exampleModal">
                          Get Drug Prescription
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Drug Prescription</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true"></span>
                                </button>
                              </div>
                              <div class="modal-body">
                                  <%=disease.getPrescription() %>
                              </div>
                              <div class="modal-footer">
                                  <button onclick="relo()" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                              </div>
                            </div>
                          </div>
                        </div>
                   
                    
                
            </div>
          </form>
        </div>
        <div class="col-lg-2"></div>
      </div>
    </div>
  </section>
   <script>
        function relo(){
       window.location.href="index.jsp";
      }
    </script>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
  <script src="js/function.js"></script>

</body>

</html>