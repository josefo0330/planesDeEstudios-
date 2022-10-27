$(document).ready(function () {
    const URI = '/api/products/tabla';
    $.ajax({
        url: URI,
        type: 'POST',
        success: function (response) {
            var tablas = ''
            var i = 0;
            //console.log(response)
            var string = dividir('PlanE', response)
            console.log(string.length)
            var subtitulo = 'PRIMER AÑO - PRIMER SEMESTRE'
            var auxTitle = dividir('\n', string[0])
            var tituloPrin = ''//'U N I V E R S I D A D  D E  P A N A M Á';
            for (i = 3; i < auxTitle.length - 6; i++){
                if((auxTitle[i].trim()!='Pagina 1 de 5')&&(auxTitle[i].trim()!='rplanes3.rdf')){
                    tituloPrin = tituloPrin +'<br><br>' +  auxTitle[i] 
                }
            }
            $('#titleP').html(tituloPrin)
            for (i = 1; i < string.length; i++) {
    
                string2 = dividir('\n', string[i])
                var j = 0
                var fila = 0
                var z = 0;
                var colum;
                var materias = []
                var aux = '' + string2[j]
                tablas = tablas + '<br> <br><table  class="table table-success table-striped  table-bordered"> <h3 class="text-black">' + subtitulo + '</h3>'
                tablas = tablas + `
                <thead class="table-dark">
                <tr>

                <th>ASIG</th>
                <th>ABREV</th>
                <th>NUM</th>
                <th>NOMBRE</th> 
                <th>CR</th>
                <th>TEO</th>
                <th>PRAC</th>
                <th>CLIN</th>
                <th>LAB</th>
                <th>TIPOMATERIA</th>
              </tr>
              </thead> 
              `
                while ((aux.trim() != 'PRIMER AÑO') && (aux.trim() != 'SEGUNDO AÑO') && (aux.trim() != 'TERCER AÑO') && (aux.trim() != 'CUARTO AÑO') && (aux.trim() != 'QUINTO AÑO') && (aux.substring(0, 10) != '----------') && (j < string2.length)) {
                    colum = 9;
                    z = 0
                    var aux2 = [];
                    var aux3=[];
                    if (aux.trim() == 'OPTATIVA' || aux.trim() == 'FUNDAMENTAL' || aux.trim() == 'REGULAR') {
                        materias[fila] = new Array(colum)
                        for (var x = materias[fila].length ; x >= 0; x--) {
                            console.log('hola')
                            materias[fila][x] = '' + string2[j - z]
                            if (x == 2) {
                                aux2[0] = materias[fila][x].trim()
                                if (aux2[0].length < 5) {
                                    materias[fila][x] = '' + string2[j - z - 1] + string2[j - z]
                                    z++
                                }
                                aux3= dividir(' ',materias[fila][x])
                                materias[fila][x]=aux3[1]
                                x--
                                materias[fila][x]=aux3[0]
                                

                            }
                            z++;
                        }
                        fila++;
                    }
                    j++;
                    var aux = '' + string2[j]
                }
                //PROBLEM**********************************************
                if ((aux.trim() == 'PRIMER AÑO') || (aux.trim() == 'SEGUNDO AÑO') || (aux.trim() == 'TERCER AÑO') || (aux.trim() == 'CUARTO AÑO') || (aux.trim() == 'QUINTO AÑO')) {
                    subtitulo = string2[j] + ' - ' + string2[j + 1]
                }
                for (var p1 = 0; p1 < fila; p1++) {
                    tablas = tablas + '<tr>'
                    for (var p2 = 0; p2 < materias[p1].length; p2++) {
                        tablas = tablas + '<td>' + materias[p1][p2] + '</td>'
                    }
                    tablas = tablas + '</tr>'
                }
                tablas = tablas + '</table>'
                console.log(materias)
                console.log('##################')
            }

            //var string2 =  dividir('\n',string[1])
            //$('#parrafo').html(response.)
            console.log(tablas)
            $("#tablas").html(tablas);
        },
        error: function (err) {
            console.log(err);
        }
    })
});
function dividir(sep, cad) {
    var nuevaCad = cad.split(sep)
    return nuevaCad;
}
function comparar(cad1, cad2) {
    var n = cad1.localeCompare(cad2)

    return n;
}
//PlanE