<!DOCTYPE html>

<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" type ="text/css" href="style.css">
    </head>
    <body>
        
        <div class="container">
            
            <div class ="row">
                
                <div class ="col-md-6">
                     
                    <h2>Receptionist Login Page</h2>
                    <form action ="validation.php" method="post">
                        
                        <div class ="form-group">
                            <label>Username</label>
                            <input type ="text" name ="user" class="form-control" required>
                        </div>
                        
                         <div class ="form-group">
                            <label>Password</label>
                            <input type ="password" name ="password" class="form-control" required>
                         </div>
                        <button type="submit" class ="btn btn-primary"> Login </button>
                    </form>
                    
                </div>
            </div>
        </div
        
        >
   
    </body>
</html>
