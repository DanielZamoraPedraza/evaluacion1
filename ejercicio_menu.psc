Funcion resultado_matriz <- matriz_full(  )
	
	Escribir "Ingrese total de alumnos a ingresar"
	leer n
	
	
	definir matriz[n,4]
	
	Para fila<-1 Hasta n Con Paso 1 Hacer
		Para colu<-1 Hasta 4 Con Paso 1 Hacer
			Escribir "ingrese nombre:"
			leer nombre
			matriz[fila,colu]<-nombre
			
		Fin Para
		
	Fin Para
	
	
	
Fin Funcion





Funcion resultado_op8<-talento()
	Escribir "Ingrese numero de talentos a ingresar:" 
	leer num_talento
	
	Dimension talentos[num_talento]
	
	Para i<-1 Hasta num_talento Con Paso 1 Hacer
		Escribir "Ingrese Nombre del talento:"
		leer nombre_t
		talentos[i]<-nombre_t
		resultado_op8<-talentos[i]
	Fin Para
	
	
	Para i<-1 Hasta num_talento Con Paso 1 Hacer
		Escribir  talentos[i] Sin Saltar " " 
		si i mod 5 = 0 Entonces
			Escribir  " " 
		FinSi
	Fin Para
	Esperar Tecla
FinFuncion




Funcion resultado_op7 <-repetido()
	
	Dimension  arreglo_nombres[10]
	Dimension  arreglo_secundario[10]

	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "Ingrese Nombre de Persona numero:" i Sin Saltar
		leer nombre_persona
		arreglo_nombres[i]<-nombre_persona
	Fin Para

	Para col<-1 Hasta 9 Con Paso 1 Hacer
		contador<-0
		Para compara<-2 hasta 10 con paso 1 hacer
			si arreglo_nombres[col] = arreglo_nombres[compara] Entonces
				contador<-contador+1
				escribir "encontro " contador "igual"
				si contador>=2 entonces 
					Escribir "HAY MAS COINCIDENCIAS DE nombre"
					arreglo_secundario[col]<-arreglo_nombres[col]
					coincidencia<-1
				FinSi
			
			FinSi
			contador<-0
		Fin Para
	Fin Para
	si coincidencias=1 Entonces
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			Escribir "Los nombres que se repiten :" arreglo_secundario[i]
		Fin Para
	SiNo
		escribir "No hay nombres que coinciden más de 2 veces"
	FinSi
	
FinFuncion






Funcion resultado_op6<-Nombre_juan(win)
	resultado_op6<-" "
	Repetir
		nombres_j <-" "
		Escribir "Ingrese nombres que comience con J"
		leer nombres_j
		
		
		Para i<-1 hasta 1 Hacer
			Si subcadena(nombres_j,1,1) <> "j" O subcadena(nombres_j,1,1) <> "J" Entonces
				Escribir "Nombre debe comenzar con J"
			fin si
		FinPara
			
			
		si nombres_j = "juan" O nombres_j = "Juan" O nombres_j = "JUAN"  Entonces
			resultado_op6<-"Ganastes"
		FinSi
	Hasta Que nombres_j = "juan" O nombres_j = "Juan" O nombres_j = "JUAN" 
Fin Funcion





Funcion resultado_op5 <-calculando_op5()

	contador_op5<-0
	suma<-0
	promedio_op5<-0
	continua<- Verdadero
	
	Mientras continua = verdadero Hacer
		
		Escribir "Ingrese Numero: "
		leer numero
		suma<-suma+numero
		
		si numero = 0 Entonces
			continua<-Falso
			contador_op5<-contador_op5-1
		FinSi
		contador_op5<-contador_op5+1
	Fin Mientras
	resultado_op5<-suma/contador_op5
	
	Escribir "El numero de ingresos es: " contador_op5
	Escribir "El promedio de lo numeros es: " resultado_op5
Fin Funcion




Funcion resultado_op4 <- convi(numero_convertir)
	Segun numero_convertir Hacer
		1:
			resultado_op4<-"Uno"
		2:
			resultado_op4<-"Dos"
		3:
			resultado_op4<-"Tres"
		4:
			resultado_op4<-"Cuatro"
		5:
			resultado_op4<-"Cinco"
		6:
			resultado_op4<-"Seis"
		7:
			resultado_op4<-"Siete"
		8:
			resultado_op4<-"Ocho"
		9:
			resultado_op4<-"Nueve"
		10:
			resultado_op4<-"Diez"

	Fin Segun
Fin Funcion






Funcion resultado_op3 <- cobro_baño( )
	Repetir
		Escribir "Ingrese que desea usar: 1.-Baño 2.-Ducha o 3-ambos"
		leer opcion_baño
		si opcion_baño = 1 Entonces
			Escribir "El cobro por uso del baño es 250 pesos"
		sino 
			si opcion_baño = 2 Entonces
				Escribir "El cobro por uso de la ducha es: 2500 pesos"
			Sino 
				si opcion_baño=3
					Escribir "El cobro de baño y ducha es ** Promocion *** 2700 Pesos"
				FinSi
				si opcion_baño>=4
					Escribir "Dato mal ingresado..."
				FinSi
			FinSi
		FinSi
	Hasta Que opcion_baño = 1 O opcion_baño = 2 O opcion_baño = 3
Fin Funcion

Funcion resultado_op2 <- opcion2()
	repetir 
		Escribir "Ingrese Sexo : 1.-Hombre - 2.-Mujer"
		Leer sexo
		si sexo>=3 Entonces
			Escribir "Sexo mal ingresano..."
		FinSi
	Hasta Que sexo=1 o sexo=2
	
	Escribir "Ingrese Nombre: "
	leer nombre
	
	si sexo = 1 entonces
		sexo_muestra<-"Hombre"
		Escribir nombre "de sexo " sexo_muestra
		resultado_op2<-	"Debe usar el baño o ducha de Hombres"
	SiNo
		si sexo = 2 entonces
		sexo_muestra<-"Mujer"
			Escribir nombre "de sexo " sexo_muestra
			Escribir "Debe usar el baño o ducha de Mujeres"
		FinSi
	FinSi
Fin Funcion

Funcion resultado_op1 <- prom( )
	Escribir "Ingrese primer numero :"
	leer num1
	Escribir "Ingrese segundo numero :"
	leer num2
	Escribir "Ingrese tercer numero :"
	leer num3
    resultado_op1<-(num1 + num2 + num3)/3
Fin Funcion


Algoritmo Multi
	
Repetir 
	Limpiar Pantalla
	Escribir "****************************************************************************"
	Escribir "**                       Bienvenido al SISTEMA                            **"
	Escribir "****************************************************************************"
	escribir " "
	escribir "**** M E N U ****"
	escribir "Escoja una opcion:" 
	escribir "1.- Secuencial "
	escribir "2.- Condicional	Si	entonces "
	escribir "3.- Condicional	Si	entonces	anidado "
	escribir "4.- Condicional	según "
	escribir "5.- Repetir mientras mientras "
	escribir "6.- Repetir Repetir  "
	escribir "7.- Repetitiva Para "
	escribir "8.- Arreglo	Simple"
	escribir "9.- arreglo Bidimencional "
	escribir "10.-Salir "
	leer Opcion
	
	Segun Opcion
		1: 
			res<-prom()
			Escribir "El Promedio de los tres numeros ingresados es: " res
			Escribir ""
			Escribir "Presiones cualquier tecla para continuar..."
			Esperar Tecla
			
		2:
			res2<-opcion2()
			escribir res2
			Escribir ""
			Escribir "Presiones cualquier tecla para continuar..."
			Esperar Tecla
			
		3:
			res2<-opcion2()
			res3<-cobro_baño()
	
			Escribir ""
			Escribir "Presiones cualquier tecla para continuar..."
			Esperar Tecla
			
		4:
			
			// Ingrese	un	número	del	1	al	10	y	mostrar	el	numero	en	palabras
			
			Repetir 
				Escribir "Ingrese Numero a transformar entre 1 y 10:"
				leer numero_convertir
				si numero_convertir<=0 O numero_convertir >=11 Entonces
					Escribir "Numero fuera del rango .."
				FinSi
				
			Hasta Que numero_convertir>=0 Y numero_convertir<=10
	
			res4<-convi(numero_convertir)
			
			Escribir "El numero " numero_convertir " en palabras es: " res4 Sin Saltar
			Escribir ""
			Escribir "Presiones cualquier tecla para continuar..."
			Esperar Tecla
		
		5:
			
			res5<-calculando_op5()
			Escribir ""
			Escribir "Presiones cualquier tecla para continuar..."
			Esperar Tecla
		
		6:
			win<-""
			res6<-Nombre_juan(win)
			escribir res6
			Esperar Tecla
			
		7:
			repetidos_7<-repetido()
			Escribir ""
			Escribir "Presiones cualquier tecla para continuar..."
			Esperar Tecla
			
		8:
			lista<-talento()
			
		9:
		10:
	FinSegun
Hasta que op == 10
FinAlgoritmo


