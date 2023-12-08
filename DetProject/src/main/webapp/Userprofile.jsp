


<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <script>
        var loadFile = function(event) {
            var image = document.getElementById("output");
            image.src = URL.createObjectURL(event.target.files[0]);
        };
    </script>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bree+Serif&family=Caveat:wght@400;700&family=Lobster&family=Monoton&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Playfair+Display+SC:ital,wght@0,400;0,700;1,700&family=Playfair+Display:ital,wght@0,400;0,700;1,700&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&family=Source+Sans+Pro:ital,wght@0,400;0,700;1,700&family=Work+Sans:ital,wght@0,400;0,700;1,700&display=swap');

        .my-nav {

            height: 12vh;
        }

        .logo {
            width: 40px;
            height: 40px;
        }

        .my-side-bar {
            padding-top: 10vh;
        }

        .bg-container {
            background-size: cover;
            width: 100vw;
            padding-top: 20vh;
        }

        .container {
            max-width: 450px;

            margin: 10px auto;
            padding: 30px;
            background-color: rgb(255, 255, 255);
            border-radius: 5px;
            box-shadow: 0 0 10px rgb(0, 0, 0);
            font-size: 20px;

        }

        .input-container {
            position: relative;
            margin-bottom: 18px;
        }

        .input-container input {
            width: 45;
            padding: 8px;
            border: none;
            border-bottom: 1px solid #ccc;
            outline: none;
            font-size: 20px;
        }

        .input-container input:focus+.watermark {
            opacity: 0;
        }

        .watermark {
            position: absolute;
            top: 0;
            left: 0;
            padding: 10px;
            opacity: 0.5;
            transition: opacity 0.3s;
        }

        .btn-container {
            text-align: center;
        }

        .btn {
            padding: 10px 50px;
            background-color: #007bff;
            color: rgb(255, 255, 255);
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: rgb(48, 154, 72);
        }

        .main-bg-container {}

        .body {
            overflow: auto;
        }

        .profile-pic {
            margin-bottom: 20px;
            color: transparent;
            transition: all 0.3s ease;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            transition: all 0.3s ease;
        }

        .profile-pic input {
            display: none;
        }

        .profile-pic img {
            position: absolute;
            object-fit: cover;
            width: 165px;
            height: 165px;
            box-shadow: 0 0 10px 0 rgba(255, 255, 255, 0.35);
            border-radius: 100px;
            z-index: 0;
        }

        .profile-pic .-label {
            cursor: pointer;
            height: 165px;
            width: 165px;
        }

        .profile-pic:hover .-label {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: rgba(0, 0, 0, 0.8);
            z-index: 10000;
            color: #fafafa;
            transition: background-color 0.2s ease-in-out;
            border-radius: 100px;
            margin-bottom: 0;
        }

        .profile-pic span {
            display: inline-flex;
            padding: 0.2em;
            height: 2em;
        }
    </style>
</head>

<body background="" style="background-size:cover; font-family: 'Times New Roman' , Times, serif">
    <nav class="navbar navbar-light bg-info fixed-top ">
        <div class="container-fluid">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="dashboard.html">
                <img src="https://igamemom.com/wp-content/uploads/2014/10/Expense-Tracker-2.0-logo.png" class="logo" />
            </a>
        </div>
    </nav>
    <div class="d-flex flex-row main-bg-container ">
        <div class="my-side-bar" >
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav p-2 ">
                    <a class="nav-link active" id="navItem1" href="#">
                        
                        <span class="sr-only">(current)</span>
                    </a>
                    <a class="nav-link" href="#" id="navItem2">2</a>
                    <a class="nav-link" href="#" id="navItem3">3</a>
                    <a class="nav-link" href="#" id="navItem4">4</a>
                </div>
            </div>
        </div>
        <div class="bg-container d-flex flex-column justify-content-center align-items-center">


            <div class="container d-flex flex-column justify-content-center align-items-center " style="color: rgb(54, 112, 111);">

                <h2 style="text-align: center;margin-bottom:22px;color:  rgb(17, 78, 111);font-size:35px">Update Profile</h2>

               
                
                <form  method="post" action="UserProfileServlet">
                    <fieldset>

                        <div class="profile-pic">
                            <label class="-label" for="file">
                                <span class="glyphicon glyphicon-camera"></span>
                                <span>Change Image</span>
                            </label>
                            <input id="file" type="file" name="profilePic" accept="image/*" onchange="loadFile(event)" />
                            <img src="https://cdn-icons-png.flaticon.com/512/9131/9131529.png" id="output" />
                        </div>


                        <div class="input-container">
                            <label for="name">Name:</label>
                            <input type="text" id="name" name="Name" style="font-family: 'Times New Roman', Times, serif" placeholder="enter name">
                        </div>

                        <div class="input-container">
                            <label for="email">Email:</label>
                            <input type="text" id="email" name="email" style="font-family: 'Times New Roman', Times, serif" value="${email}" readonly>
                        </div>

                        <div class="btn-container">
                            <button type="submit" class="btn">Update</button>
                        </div>

                    </fieldset>
                </form>
                <script>
                
		const userID = document.getElementById("email");

// Set the value of the input element to the user's email
		userID.value = userId;
		</script>
		
            </div>

        </div>
    </div>
</body>

</html>