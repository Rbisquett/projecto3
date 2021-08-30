# # Funciones

# def calculo_iva (valor_bruto)
# return valor_bruto * 1.19
# fin

# def imprimir_arreglo (v)
# v.each do | item |
# pone "Estoy imprimiendo el artículo # {artículo}"
# fin
# fin

# pone "El calculo del iva es # {calculo_iva (10000)}"

# arreglo1 = [1, 2, 3, 4, 5]
# arreglo2 = ["roberto", "jose", "ricardo", "raul"]
# arreglo3 = [verdadero, falso, verdadero, falso]
# arreglo4 = [{nombre: "roberto"}, {nombre: "camilo"}, {nombre: "carol"}]

# imprimir_arreglo (arreglo1)
# imprimir_arreglo (arreglo2)
# imprimir_arreglo (arreglo3)
# imprimir_arreglo (arreglo4)

clientes  = [
	{ nombre : "Roberto" ,  numero_de_productos : 30 } ,
	{ nombre : "Ricardo" ,  numero_de_productos : 3 } ,
	{ nombre : "manuel" ,  numero_de_productos : 10 } ,
	{ nombre : "javier" ,  numero_de_productos : 60 } ,
	{ nombre : "carol" ,  numero_de_productos : 40 }	
]


def  mayor_numero_de_productos ( clientes )
	max  =  clientes [ 0 ]
	clientes . cada uno  hace | artículo |
		if  item [ : numero_de_productos ] > max [ : numero_de_productos ]
			max  =  artículo
		fin
	fin
	max
fin

def  acumulador ( clientes )
	suma  =  0
	clientes . cada uno  hace | cliente |
		suma  =  suma + cliente [ : numero_de_productos ]
	fin
	suma
fin

def  promedio ( clientes )
	suma  =  acumulador ( clientes )
	total_clientes  =  clientes . Talla
	promedio  =  suma / total_clientes
	promedio
fin

def  promedio2 ( clientes )
	acumulador ( clientes ) / clientes . Talla
fin

def  promedio3 ( clientes )
	clientes . suma { | cliente | cliente [ : numero_de_productos ] } / clientes . Talla
fin