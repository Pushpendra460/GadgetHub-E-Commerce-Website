<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
     rel="stylesheet" 
     integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous">
    <link 
    rel="stylesheet" 
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" 
    integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" 
    crossorigin="anonymous" 
    referrerpolicy="no-referrer" />  
    <link rel="stylesheet" href="style.css">
</head>

  <body>
      <jsp:include page="header.jsp"/>
    <div class="container mt-5 mb-5 ">
          <div class="row p-3">
          <nav aria-label="breadcrumb" class="bg-warning rounded-3">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Profile</a></li>
              <li class="breadcrumb-item active" aria-current="page">Data</li>
            </ol>
          </nav>
    </div>

    <div class="row">
        <div class="col-lg-4">
            <div class="card mb-4">
                <img src="product.jfit.webp" class="img-fluid w-25" alt="">
                <h5 class="card-title">Hellow User</h5>
            </div>

            <div class="card ">
                <div class="card-body text-center">
                <h4>My Profile</h4>
            </div>
        </div>
    </div>

    <div class="col-lg-8">
        <div class="card">
            <div class="card-body">

                <div class="row border-bottom">
                    <div class="col-sm-4">
                        <p>Full Name</p>
                    </div>
                    <div class="col-sm-8">
                        <p>Pushpendra Shah</p>
                    </div>
                </div>

                <div class="row border-bottom">
                    <div class="col-sm-4">
                        <p>Email</p>
                    </div>
                    <div class="col-sm-8">
                        <p>pushps549@gmail.com</p>
                    </div>
                </div>

                <div class="row border-bottom">
                    <div class="col-sm-4">
                        <p>Address</p>
                    </div>
                    <div class="col-sm-8">
                        <p>Bhopal</p>
                    </div>
                </div>

                <div class="row border-bottom">
                    <div class="col-sm-4">
                        <p>Pin code</p>
                    </div>
                    <div class="col-sm-8">
                        <p>462022</p>
                    </div>
                </div>

                <div class="row ">
                    <div class="col-sm-4">
                        <p>Phone</p>
                    </div>
                    <div class="col-sm-8">
                        <p>6261955723</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>

    </div>


   <jsp:include page="footer.jsp"/>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
     crossorigin="anonymous"></script>
    
  </body>
</html>