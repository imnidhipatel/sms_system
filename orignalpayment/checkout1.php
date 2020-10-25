<?php
session_start();
if(isset($_POST['amount']))
{
    $amount= $_POST['amount'];
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Table V01</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="./vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->
</head>

<body>

    <div class="limiter">
        <div class="container-table100">
            <div class="wrap-table100">
                <div class="table100">
                    <form method="post" action="Paytm_Web_Sample_Kit_PHP-master/PaytmKit/pgRedirect.php">
                        <table>
                            <thead>
                                <tr class="table100-head">
                                    <th class="column1">S.no</th>
                                    <th class="column2">Label</th>
                                    <th class="column3">Value</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td><label>ORDER_ID::*</label></td>
                                    <td><input id="ORDER_ID" tabindex="1" maxlength="20" size="20" name="ORDER_ID" autocomplete="off" value="<?php echo  "ORDS" . rand(10000,99999999)?>">
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><label>CUST_NAME ::*</label></td>
                                    <td><input id="CUST_ID" tabindex="2" maxlength="12" size="12" name="CUST_ID" autocomplete="off" value="<?php echo $_SESSION['user']='asd';?>"></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><label>INDUSTRY_TYPE_ID ::*</label></td>
                                    <td><input id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail"></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td><label>Channel ::*</label></td>
                                    <td><input id="CHANNEL_ID" tabindex="4" maxlength="12" size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td><label>txnAmount*</label></td>
                                    <td>
                                        <select name="amount">
                                            <option value="100">100</option>
                                            <option value="200">200</option>
                                            <option value="300">300</option>
                                            <option value="400">400</option>
                                        </select>
                                    </td>
                                </tr><br>



                            </tbody>
                        </table><br>
                        <center><input value="CheckOut" class="btn btn-success" type="submit" onclick=""></center>
                    </form>
                </div>
            </div>
        </div>
    </div>




    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>

</body>

</html>
