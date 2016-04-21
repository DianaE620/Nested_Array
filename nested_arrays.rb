
def chess
  peon_n = []
  peon_b = []
  n = []
  b = []
  blancas = [["Peon - B"],["Torre- B"],["Caballo- B"],["Alfil- B"],["Rey- B"],["Reina- B"]]

  negras = [["Peon - N"],["Torre- N"],["Caballo- N"],["Alfil- N"],["Rey- N"],["Reina- N"]]

  for i in 1..8
    peon_n << negras[0]
    peon_b << blancas[0]
  end

  for h in 1..3
    n << negras[h]
    b << blancas[h]

    if h == 3
      h.downto(1) do |num|
        n << negras[num]
        b << blancas[num]
      end
    end 
  end

  n.insert(3, negras[4]).insert(4, negras[5])

  b.insert(3, blancas[4]).insert(4, blancas[5])


  puts "|                                              Tablero de Ajedrez                                              |"
  puts "|--------------------------------------------------------------------------------------------------------------|"
  puts "#{n}"      
  puts "|--------------------------------------------------------------------------------------------------------------|"
  puts "#{peon_n} " 
  puts "|--------------------------------------------------------------------------------------------------------------|"

  puts "|--------------------------------------------------------------------------------------------------------------|"

  puts "|--------------------------------------------------------------------------------------------------------------|"

  puts "|--------------------------------------------------------------------------------------------------------------|"

  puts "|--------------------------------------------------------------------------------------------------------------|"
  puts "#{peon_b}"
  puts "|--------------------------------------------------------------------------------------------------------------|"
  puts "#{b}"
  puts "|--------------------------------------------------------------------------------------------------------------|"

end


chess()


puts "Tabla de Datos"

# | Nombre           | Edad | Genero   | Grupo  | Calificaciones |
# +------------------+------+----------+--------+----------------+
# |Rodrigo García    | 13   |Masculino |Primero  |[9, 9, 7, 6, 8] |                 
# |Fernanda Gonzalez | 12   |Femenino  |Tercero   |[6, 9, 8, 6, 8] |   
# |Luis Perez        | 13   |Masculino |Primero   |[8, 7, 7, 9, 8] |                
# |Ana Espinosa      | 14   |Femenino  |Segundo   |[9, 9, 6, 8, 8] |        
# |Pablo Moran       | 11   |Masculino |Segundo   |[7, 8, 9, 9, 8] |


table = [["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"], 
        ["Rodrigo Garcia", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]],
        ["Fenanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]],
        ["Luis Perez", 12, "Masculino", "Primero", [8, 7, 7, 9, 8]],
        ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]],
        ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]]]

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6

