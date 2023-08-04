<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration</title>
    <link rel="shortcut icon" href="images/logo.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <link href="css/product_reg.css" rel="stylesheet">
    <style>.vl {border-left: 6px solid #17202A;height: 450px;position: absolute;left: 100%;margin-left: -3px;top: 50px;}</style>
  </head>
  <body>

<!-- navigation -->
 <?php include("header.php"); ?>
<!--tearms nd condition-->
<div class="container">
    <div class="row">
      <div class="col-md-12">

        <div class="row">
          <div class="col-md-6">
          <div class="terms">
            <h3>Terms & Conditions:</h3>
            <li>Make sure you post in the correct category.</li>
            <li>Do not post the same ad more than once or repost an ad within 7 days.</li>
            <li>Do not upload pictures with watermarks.</li>
            <li>Do not put your email or phone numbers in the description box.</li>
            <li>Do not post ads containing multiple items unless its a package deal.</li>
          </div>
          <div class="vl">
            </div>

        </div>
        <div class="col-md-6 register-right">
              <h2><u>Post Your ad</u></h2>
              <form method="POST"  action="backends/equipment_server.php" enctype="multipart/form-data">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Title" name="title" required>
                </div>

                  <div class="form-group">
                  <input type="text" class="form-control" placeholder="Discription" maxlength="1000" name="description" required>
                </div>
                <div class="row">
                  <div class="col-md-6">
                  <div class="form-group">
                    <input type="digit" class="form-control" placeholder="Price(Rs) Per hour" name="price" required>
                  </div>
                  </div>
                </div>

                  <div class="form-group">
                    <input type="digit" class="form-control" placeholder="Phone Number" name="phone_number" required>
                  </div>
                    <h5>Location:</h5>
                    <div class="clearfix"></div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                            <select class="custom-select my-1" name="division">
                              <option selected value="0">Ahmedabad</option>
                              <option value="1">Gandhinagar</option>
                              <option value="2">Mehsana</option>
                              <option value="3">Rajkot</option>
                              <option value="4">Anand</option>
                              <option value="5">Amreli</option>
                              <option value="6">Wankaner</option>
                            </select>
                        </div>
                      </div>
                      <!-- <div class="col-md-6">
                        <div class="form-group">
                          <input type="text" class="form-control" placeholder="District" name="district" required>
                        </div>
                      </div> -->
                    </div>
                    <!-- <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <input type="text" class="form-control" placeholder="Upazila/Thana" name="thana" required>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <input type="text" class="form-control" placeholder="Para/Village name" name="para" required>
                        </div>
                      </div>
                    </div> -->

                    <div class="form-group">
                      <h5>Add Photos</h5>
                        <input type="file" name="image" required>
                    </div>

                    <div class="form-group">
                      <button type="submit" name="submit_btn" id="submit_btn" class="btn btn-primary">Submit</button>
                    </div>

                  </form>
          </div>
        </div>
    </div>
  </div>
</div>
  <!--connect-->
  <footer style="background-color: #3f3f3f;color: #d5d5d5;padding: 2rem;text-align: center;">
    <p>&copy 2023 Krushi Bazaar.All rights reserved.</p>
  </footer>
</body>
</html>
