ventas = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 21000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
}

# Los valores ingresados serán distintos.
# Es un ejercicio de arrays o de hashes. ¿Se necesitan los keys?
# Revisar la documentación del método .each_slice.
# Necesitamos iterar elementos, o elementos con índices.

#ventas.values.each_slice(3) {|a| print a} #lo que va entre parentesis es para ver por cuanto se agrupa (trimestre => 3)
# [[:Enero, 15000], [:Febrero, 22000], [:Marzo, 12000]]
# [[:Abril, 17000], [:Mayo, 81000], [:Junio, 13000]]
# [[:Julio, 21000], [:Agosto, 41200], [:Septiembre, 25000]]
# [[:Octubre, 21500], [:Noviembre, 91000], [:Diciembre, 21000]]
#entonces metodo each.slice dice cuántos elementos tienen que agruparse

quarters = {} #hash vacío
# # quarters["llave1"] = 1234567 #se crea una llave nueva
# #{"llave1"=>1234567}

# ventas.values.each_slice(3).each_with_index do |element, index|
#      quarter["Q#{index + 1}"] = element[0][1] + element[1][1] + element [2][1]
# end

ventas.values.each_slice(3).each_with_index do |element, index|
    quarters["Q#{index + 1}"] = element.sum
end 
print quarters