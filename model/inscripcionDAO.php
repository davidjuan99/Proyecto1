<?php

class InscripcionDAO {
    public function __construct(){
        //include './model/connection.php';
        //$this->pdo=$pdo;
    }
	public function insertBBDD(){
	include '../model/connection.php';
	try {
		$pdo->beginTransaction();
		srand((double)microtime()*1000000);
		$dorsal = rand(1,999);
		$curdate=date("Y/m/d");
		$sql=$pdo->prepare("INSERT INTO tbl_inscripcion (`ins_dorsal`,`fecha_ins`,`pagadoSINO`,`precio_ins`) VALUES (?, ?, NULL, NULL);");
		$sql->bindParam(1,$dorsal);
		$sql->bindParam(2,$curdate);
		$sql->execute();
		$stmt=$pdo->prepare("INSERT INTO tbl_participante (`DNI_parti`,`nom_parti`,`apellido_parti`,`apellido2_parti`, `fechaNac`, `genero_parti`,`email_parti`,`id_categoria`,`dorsal`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);");
		$nombre=$_POST['nombre'];
		$apellido1=$_POST['primerApellido'];
		$apellido2=$_POST['segundoApellido'];
		$fechaNac=$_POST['fechaNac'];
		$email=$_POST['mail'];
		$categoria=$_POST['categoria'];
		$genero=$_POST['genero'];
		$DNI=$_POST['dni'];
		$stmt->bindParam(1,$DNI);
		$stmt->bindParam(2,$nombre);
		$stmt->bindParam(3,$apellido1);
		$stmt->bindParam(4,$apellido2);
		$stmt->bindParam(5,$fechaNac);
		$stmt->bindParam(6,$genero);
		$stmt->bindParam(7,$email);
		$stmt->bindParam(8,$categoria);
		$stmt->bindParam(9,$dorsal);
		$stmt->execute();
		//print_r($stmt);
	    $pdo->commit();
		} catch (Exception $ex){
			$pdo->rollback();
			echo $ex->getMessage();
		}
}
}

?>