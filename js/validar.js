function validacionForm() {
    // variables 
    var mail=document.getElementById('mail').value;
    var nombre=document.getElementById('nombre').value;
    var dni=document.getElementById('dni').value;
    var primerApellido=document.getElementById('primerApellido').value;
    var segundoApellido=document.getElementById('segundoApellido').value;
    var fechaNac=document.getElementById('fechaNac').value;
    if (dni=='') {
        document.getElementById("dni").style.border = "thick groove #FF0000";
    }
    if (nombre=='') {
        document.getElementById("nombre").style.border = "thick groove #FF0000";
    }
    if (primerApellido=='') {
        document.getElementById("primerApellido").style.border = "thick groove #FF0000";
    }
    if (segundoApellido=='') {
        document.getElementById("segundoApellido").style.border = "thick groove #FF0000";
    }
    if (mail=='') {
        document.getElementById("mail").style.border = "thick groove #FF0000";
    }
    if (fechaNac=='') {
        document.getElementById("fechaNac").style.border = "thick groove #FF0000";
    }

    if (dni!='') {
        document.getElementById("dni").style.border = "grey";
    }
    if (nombre!='') {
        document.getElementById("nombre").style.border = "grey";
    }
    if (primerApellido!='') {
        document.getElementById("primerApellido").style.border = "grey";
    }
    if (segundoApellido!='') {
        document.getElementById("segundoApellido").style.border = "grey";
    }
    if (mail!='') {
        document.getElementById("mail").style.border = "grey";
    }
    if (fechaNac!='') {
        document.getElementById("fechaNac").style.border = "grey";
    }
    if (dni=='' || nombre=='' || primerApellido=='' || segundoApellido=='' || mail=='' || fechaNac=='') {
        document.getElementById('message').innerHTML='<p style="color:red">Rellena los campos vacios, por favor.</p>';
        return false
    } else {
        validarDNI();
    }
    return true
}

function validarDNI() {
      // Validar DNI/NIE
    var dniNie = document.getElementById('dni').value;
    var letras = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];
    // var let = prompt("Introduce la letra de tu NIE/DNi");
    var semaforoNIE=false;
    // Solución
    //NIE con letra
    //Pregunto si el primer caracter es una letra
    if (isNaN(parseInt(dniNie.substr(0,1)))) {
        if ("XYZ".indexOf(dniNie.substr(0,1))!=-1) {
            //tengo un NIE con inicio valido
            var solonum="XYZ".indexOf(dniNie.substr(0,1))+dniNie.substr(1,7);
            return true
        } else {
            document.getElementById('message').innerHTML='<p style="color:red">El NIE no es válido.</p>';
            return false
        }
    }
    //pregunto si el ultimo caracter es una letra
    if (isNaN(parseInt(dniNie.substr(-1,1)))) {
        if (letras[dniNie.substr(0,8)%23] === dniNie.substr(-1,1)) {
            document.getElementById('message').innerHTML='<p style="color:red">NIF correcto.</p>';
            return true
        }else{
            document.getElementById('message').innerHTML='<p style="color:red">La letra del NIF está mal.</p>';
            return false
        }
    }else {
        document.getElementById('message').innerHTML='<p style="color:red">Debe acabar con letra.</p>';
        return false
    }
}
