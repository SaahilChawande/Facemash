<?php
    require 'config/config.php';
    require 'includes/form_handlers/register_handler.php';
    require 'includes/form_handlers/login_handler.php';
?>

<html>
    <head>
        <title>Welcome to Facemash</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="assets/css/register_style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="assets/js/register.js"></script>
    </head>
    <body>
        <?php
            if (isset($_POST['register_button']))   {
                echo '
                <script>
                    $(document).ready(function() {
                      $("#first").hide();
                      $("#second").show();
                    });
                </script>
                ';
            }
        ?>
        <div class="wrapper">
            <div class="login_box">
                <div class="login_header">
                    <h1>Facemash!</h1>
                    Login or Sign Up below!
                </div>
                <div id="first">
                    <form action="register.php" method="post">
                        <input type="email" name="log_email" placeholder="Email Address" value="<?php if (isset($_SESSION['log_email'])) echo $_SESSION['log_email'];?>" required/>
                        <br/>
                        <input type="password" name="log_password" placeholder="Password"  required/>
                        <br/>
                        <?php
                        if (in_array("Email or password was incorrect<br/>", $error_array))
                            echo '<div class="alert alert-danger"><strong>Email</strong> or <strong>password</strong> was <strong>incorrect</strong></div>';
                        ?>
                        <input type="submit" name="login_button" value="Login">
                        <br/>
                        <a href="#" id="signup" class="signup">Need an Account? Register Here!</a>
                    </form>
                </div>

                <div id="second">
                    <form action="register.php" method="post">
                        <input type="text" name="reg_fname" placeholder="First Name" value="<?php if (isset($_SESSION['reg_fname'])) echo $_SESSION['reg_fname'];?>" required>
                        <br>
                        <?php
                            if (in_array("Your first name must be between 2 and 25 characters<br/>",$error_array))
                                echo '<div class="alert alert-danger">Your <strong>first name</strong> must be between <strong>2 and 25 characters</strong></div>';
                        ?>
                        <input type="text" name="reg_lname" placeholder="Last Name" value="<?php if (isset($_SESSION['reg_lname'])) echo $_SESSION['reg_lname'];?>" required>
                        <br>
                        <?php
                            if (in_array("Your last name must be between 2 and 25 characters<br/>",$error_array))
                                echo '<div class="alert alert-danger">Your <strong>last name</strong> must be between <strong>2 and 25 characters</strong></div>';
                        ?>
                        <input type="email" name="reg_email" placeholder="Email" value="<?php if (isset($_SESSION['reg_email'])) echo $_SESSION['reg_email'];?>" required>
                        <br>
                        <input type="email" name="reg_email2" placeholder="Confirm Email" value="<?php if (isset($_SESSION['reg_email2'])) echo $_SESSION['reg_email2'];?>" required>
                        <br>
                        <?php
                            if (in_array("Email already in use<br/>",$error_array))
                                echo '<div class="alert alert-danger"><strong>Email</strong> already in use</div>';
                            else if (in_array("Invalid Format<br/>",$error_array))
                                echo '<div class="alert alert-danger"><strong>Invalid Format</strong></div>';
                            else if (in_array("Emails don't match<br/>",$error_array))
                                echo '<div class="alert alert-danger"><strong>Emails don\'t match</strong></div>';
                        ?>
                        <input type="password" name="reg_password" placeholder="Password" required>
                        <br>
                        <input type="password" name="reg_password2" placeholder="Confirm Password" required>
                        <br>
                        <?php
                            if (in_array("Your passwords do not  match<br/>", $error_array))
                                echo '<div class="alert alert-danger">Your <strong>passwords do not  match</strong></div>';
                            else if (in_array("Your password can only contain english characters or numbers<br/>",$error_array))
                                echo '<div class="alert alert-danger">Your <strong>password</strong> can only contain <strong>english characters or numbers</strong></div>';
                            else if (in_array("Your password must be between 5 and 30 characters<br/>",$error_array))
                                echo '<div class="alert alert-danger">Your <strong>password</strong> must be between <strong>5 and 30 characters</strong></div>';
                        ?>
                        <input type="submit" name="register_button" value="Register">
                        <br/>
                        <?php
                            if (in_array("<span style='color: #14C800;'>You're all set! Go ahead and login!</span><br/>",$error_array))
                                echo '<div class="alert alert-success"><span style="color: #14C800;">You\'re all set! Go ahead and <strong>login</strong>!</span></div>';
                        ?>
                        <a href="#" id="signin" class="signin">Already have an account? Sign in here!</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>