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

#datos para ver que se vendió tal cantidad
search_data = ARGV.map do |element|
    element.to_i
end

#sales_inverted = ventas.invert

# search_data.each do |sale|
# #     #evaluar si la llave sale existe o es nil
#     if !sales_inverted[sale].nil? #nil? es opcional
#         puts sales_inverted[sale]
#     else
#         puts "no encontrado"
#     end 
# end

# print sales_inverted[15000]
# print sales_inverted[31000].nil? 
# print sales_inverted[27000].nil? 

founded = false #falso porque no se ha encontrado nada

search_data.each do |sale|
    ventas.each do |key, value| #va a recorre el hash uno por uno 
        if sale == value 
            puts key #llave vendría a ser el mes
            founded = true #true porque la encontró
        end
    end
    if founded == false
        puts "no encontrado"
    end
    founded = false
end