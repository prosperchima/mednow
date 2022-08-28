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
        <h5 class="my-0 mr-md-auto font-weight-normal text-primary"><a href="index.jsp" style="text-decoration: none;"><i class="fas fa-user-md fa-2x"></i>MedNow</a></h5>
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
          <h4 class="text-primary mt-5">Let us know a liltle about you</h4>
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
          <form action="Router" method="POST" id="form">
                <div id="form1">
                  <div class="form-row top-margin ">
                    <div class="form-group col-md-6">
                        <input type="text" class="form-control" name="f_name" id="f_name" placeholder="Enter FirstName" required>
                    </div>
                    <div class="form-group col-md-6">
                        <input type="text" class="form-control"name="l_name" id="l_name" placeholder="Enter lastName" required>
                    </div>
                  </div>
                  <div class="form-row ">
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">D.O.B</label>
                      <input type="date" name="date" class="form-control" id="date" placeholder="D.O.B" required>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="exampleInputEmail1">Phone Number</label>
                      <input type="text" name="phone" class="form-control" id="phone" placeholder="" required>
                    </div>
                  </div>
                  <div class="form-row ">
                    <div class="form-group col-md-7">
                        <input type="email" name="email" class="form-control" id="email" placeholder="Email Adress" required>
                    </div>
                    <div class="form-group col-md-5">
                        <select class="custom-select" name="gender" id="gender" aria-label="Example select with button addon">
                        <option selected>Gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                      <input type="text" name="address" class="form-control" id="address" placeholder="Home Adress" required>
                  </div>
                  <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="inputCity">City</label>
                      <input type="text"name="city" class="form-control" id="inputCity">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="inputState">State</label>
                      <select id="inputState" name="state" class="form-control">
                        <option selected>Choose...</option>
                        <option value="Abia">Abia</option>
                        <option value="Imo">Imo</option>
                        <option value="Las0">Lagos</option>
                      </select>
                    </div>
                  </div>
                  <div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group mr-2" role="group" aria-label="First group">
                      <label class="form-check-label mr-2" for="gridCheck">
                        Proceed to the next page
                      </label>
                      <a onclick="show1()" class="btn btn-primary text-white">1</a>
                      <a onclick="show2()" class="btn btn-primary text-white">2</a>
                      <a onclick="show3()" class="btn btn-primary text-white">3</a>
                    </div>
                  </div>
                </div>

                <div id="form2">
                  <div class="form-group pt-3">
                    <center>
                      <h5>SYMPTOMS</h5>
                    </center>
                    <center>
                      <p>What hurts? Tell us and we will help you fix it.</p>
                    </center>
                    <center>
                      <div class="">
                        <p style="padding-bottom: 0px;margin-bottom: 0px;color: black;">Weakness</p>
                        <input class="mx-auto" type="checkbox" class="form-check-input" id="w_k" value="weakness" name="symptoms">
                      </div>
                    </center>
                    <center>
                      <div class="">
                        <p style="padding-bottom: 0px;margin-bottom: 0px;color: black;">Stomach pain</p>
                        <input class="mx-auto" type="checkbox" class="form-check-input" id="s_p" value="stomachPain" name="symptoms">
                      </div>
                    </center>
                    <center>
                      <div class="">
                        <p style="padding-bottom: 0px;margin-bottom: 0px;color: black;">Headache</p>
                        <input class="mx-auto" type="checkbox" class="form-check-input" id="h_a" value="headache" name="symptoms">
                      </div>
                    </center>
                    <center>
                      <div class="">
                        <p style="padding-bottom: 0px;margin-bottom: 0px;color: black;">Diarrhea or Constipation</p>
                        <input class="mx-auto" type="checkbox" class="form-check-input" id="d_c" value="diarrhea" name="symptoms">
                      </div>
                    </center>
                    <center>
                      <div class="">
                        <p style="padding-bottom: 0px;margin-bottom: 0px;color: black;">Anemia</p>
                        <input class="mx-auto" type="checkbox" class="form-check-input" id="a_m" value="anemia" name="symptoms">
                      </div>
                    </center>
                    <center>
                      <div class="">
                        <p style="padding-bottom: 0px;margin-bottom: 0px;color: black;">Muscle pain</p>
                        <input class="mx-auto" type="checkbox" class="form-check-input" id="m_p" value="musclePain" name="symptoms">
                      </div>
                    </center>
                    <center>
                      <div class="">
                        <p style="padding-bottom: 0px;margin-bottom: 0px;color: black;">Convulsion</p>
                        <input class="mx-auto" type="checkbox" class="form-check-input" id="c_v" value="convulsion" name="symptoms">
                      </div>
                    </center>
                    <center>
                      <div class="">
                        <p style="padding-bottom: 0px;margin-bottom: 0px;color: black;">Fainting</p>
                        <input class="mx-auto" type="checkbox" class="form-check-input" id="f_t" value="fainting" name="symptoms">
                      </div>
                    </center>
                   
                  </div>
                  <div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group mr-2" role="group" aria-label="First group">
                      <label class="form-check-label mr-2" for="gridCheck">
                        Proceed to the next page
                      </label>
                      <a onclick="show1()" class="btn btn-primary text-white">1</a>
                      <a onclick="show2()" class="btn btn-primary text-white">2</a>
                      <a onclick="show3()" class="btn btn-primary text-white">3</a>
                    </div>
                  </div>
                </div>

                <div id="form3">
                  <div class="form-group pt-3">
                    <center>
                      <h5>CURRENT/PAST MEDICATION</h5>
                    </center>
                    <center>
                      <p>What Medication have you taken thus far in treatment,list them below.</p>
                    </center>
                      <textarea name="current_medication" id="c_m" class="form-control" id="exampleFormControlTextarea1"
                      placeholder="Current medication e.g Paracetamol" rows="10"></textarea>
                  </div>
                  <div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
                    <div class="btn-group mr-2" role="group" aria-label="First group">
                      <label class="form-check-label mr-2" for="gridCheck">
                        Proceed to the next page
                      </label>
                      <a onclick="show1()" class="btn btn-primary text-white">1</a>
                      <a onclick="show2()" class="btn btn-primary text-white">2</a>
                      <a onclick="show3()" class=" btn btn-primary text-white">3</a>
                    </div>
                  </div>
                  <button type="submit" class="btn bg-gradient-success text-white mb-3">Get Report</button>
                  <input type="text" name="signal" value="get_report" hidden>
                </div>
          </form>
        </div>
        <div class="col-lg-2"></div>
      </div>
    </div>
  </section>

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