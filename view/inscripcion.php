<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Anton|Montserrat&display=swap" rel="stylesheet">
    <title>Cursa Bellvitge</title>
  </head>
  <body>
   
    <header class="header">
        <div class="bg-dark ">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">   
                    <button class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                      <span class=" navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                      <div class=" navg navbar-nav w-100 justify-content-center " >
                        <a class="nav-item nav-link" href="../index.php">Inicio</a>
                        <a class="nav-item nav-link" href="#">Clasificaciones</a>
                        <a class="nav-item nav-link active" href="./inscripcion.php">Inscripciones</a>
                        <a class="nav-item nav-link" href="#">Noticias</a>
                        <a class="nav-item nav-link" href="#">Galeria</a>
                      </div>
                    </div>
                  </nav>
            </div>
        </div>
        <div class="text-header d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8">
                        <h2> Noticias  </h2>
                        <p>Bienvenido a la mejor página web sobre cursas en bellvitge. Dale a "Noticias" para acceder directamente a los últimos post de la web.</p>
                        <a href="" class="btn btn-yo"> <span>Noticias</span> </a>
                    </div>
                </div>
            </div>
        </div>
        </header>
<form style="margin-top:2%;" class="formInscripcion">
<img src="../img/form2-test.png" style="float:right;margin-right:5.8%;">
  <div class="form-row" style="margin-left:5%;">
    <div class="form-group col-md-2">
      <label for="Nombre">Nombre: </label>
      <input type="text" class="form-control" id="name" name="nombre" placeholder="Introduce tu nombre...">
    </div>
    <div class="form-group col-md-2">
      <label for="DNI">DNI: </label>
      <input type="text" class="form-control" id="dni" name="dni" placeholder="Introduce tu DNI...">
    </div>
  </div>
  <div class="form-row" style="margin-left:5%;">
  <div class="form-group col-md-2">
    <label for="inputAddress">Primer apellido: </label>
    <input type="text" class="form-control" id="primerApellido" name="primerApellido" placeholder="Introduce tu primer apellido...">
  </div>
  <div class="form-group col-md-2">
    <label for="inputAddress2">Segundo apellido: </label>
    <input type="text" class="form-control" id="segundoApellido" name="segundoApellido" placeholder="Introduce tu segundo apellido...">
  </div>
  </div>
  <div class="form-row" style="margin-left:5%;">
    <div class="form-group col-md-2">
      <label for="inputCity">Fecha Nacimiento: </label>
      <input type="date" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-2">
      <label for="email">Email: </label>
      <input type="email" class="form-control" name="mail" id="mail" placeholder="Introduce tu mail...">
    </div>
    </div>
    <div class="form-group col-md-4" style="margin-left:4.5%;">
      <label for="inputState">Género</label>
      <select id="inputState" class="form-control">
        <option>Hombre</option>
        <option>Mujer</option>
      </select>
    </div>
    <div class="form-group col-md-4" style="margin-left:4.5%;">
      <label for="Categoria">Categoria: </label>
      <input type="text" class="form-control" id="categoria" name="categoria">
    </div>
  <button type="submit" class="btn btn-secondary" style="margin-left:5.3%;margin-bottom:2%;">Inscribirse</button>
</form>
    <footer class="page-footer font-small blue">
        <div class="footer-copyright text-center py-3">© 2020 Copyright: David Juan Aranda
        </div>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>