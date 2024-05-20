El propósito del Scrip "a-variable" es interactuar con el usuario solicitando ciertas entradas, y luego mostrar una salida formateada que combina tanto las variables definidas dentro del script como las entradas proporcionadas por el usuario.
Funcionamiento del Script
1.	Definición de Variables:
	Se definen tres variables nombre, edad y ciudad con valores preestablecidos.
2.	Solicitar Entrada al Usuario: 
	echo "Ingresar tu actividad favorita:" imprime un mensaje en la consola pidiendo al usuario que ingrese su actividad favorita.
	read actividad captura la entrada del usuario y la almacena en la variable actividad.
	echo "Ingresa tu comida favorita:" imprime un mensaje en la consola pidiendo al usuario que ingrese su comida favorita.
	read comida captura la entrada del usuario y la almacena en la variable comida.
3.	Impresión de Resultados:
	echo Mi nombre es $nombre, tengo $edad años y vivo en $ciudad imprime un mensaje que incluye las variables predefinidas del script.
	echo "Mi actividad favorita es $actividad. Mi comida favorita es $comida" imprime un mensaje que incluye las entradas del usuario.

-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

El propósito del Scrip "Parametros" es interactuar con el usuario solicitando la entrada de tres modelos de celulares y el color deseado para un celular, y luego mostrar una salida formateada que utiliza las entradas del usuario para generar mensajes específicos.
Explicación paso a paso:
1.	Solicitud de modelos de celulares:
Las primeras líneas del script solicitan al usuario que introduzca tres modelos de celulares:
Bash
echo "Introduce 3 Modelos de celulares"
read celular1
read celular2
read celular3
	echo: Imprime un mensaje en la consola para indicar al usuario qué debe ingresar.
	read: Lee la entrada del usuario y la almacena en la variable correspondiente (celular1, celular2 o celular3).
2.	Impresión de modelos:
Las siguientes líneas imprimen el primer y tercer modelo de celular introducidos por el usuario:
Bash
echo "Los Celulares más caros son: $celular1"
echo "Los Celulares más vendidos son: $celular3"
	$celular1 y $celular3: Se reemplazan estas variables por sus valores respectivos dentro del texto.
3.	Solicitud de color:
Las siguientes líneas solicitan al usuario que introduzca un color de preferencia:
Bash
echo "Introduce el color que deseas"
read Color
	echo: Imprime un mensaje en la consola para indicar al usuario qué debe ingresar.
	read: Lee la entrada del usuario y la almacena en la variable Color.
4.	Conteo de parámetros:
La siguiente línea cuenta la cantidad de parámetros introducidos por el usuario (en este caso, siempre serán 3):
Bash
cantidad_parametros=3
	cantidad_parametros: Se asigna el valor 3 a esta variable, ya que el script siempre espera 3 modelos de celulares.
5.	Completar y mostrar la frase final:
La última línea del script completa y muestra la frase final con la información introducida y la cantidad de parámetros:
Bash
echo "Con el color $Color existen $cantidad_parametros celulares"
	$Color y $cantidad_parametros: Se reemplazan estas variables por sus valores respectivos dentro del texto.


-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

El próposito del script "Condiciomnales1" permite al usuario ingresar su nombre de usuario y verifica si tiene permisos de root. Si el usuario no es root, el script muestra un mensaje de error.
Explicación paso a paso:
1.	Solicitud de nombre de usuario:
La primera línea del script solicita al usuario que ingrese su nombre de usuario:
Bash
read -p "Ingrese su usuario para una rápida Verificación: "
	read: Lee la entrada del usuario y la almacena en la variable usuario.
	-p: Indica al script que muestre un mensaje previo a la entrada del usuario.
2.	Verificación de permisos:
La siguiente línea compara el nombre de usuario ingresado con el usuario root ("root"):
Bash
if [ "$usuario" != "root" ]; then
	if: Comienza una instrucción condicional.
	[ "$usuario" != "root" ]: Compara el valor de $usuario con "root" usando la instrucción [ ].
	fi: Termina la instrucción condicional.
3.	Mensaje de error:
Las siguientes líneas muestran un mensaje de error si el usuario no es root:
Bash
echo "No tiene acceso como root. Por favor, ejecute el script con un usuario root."
	echo: Imprime un mensaje en la consola.
4.	Espera de 3 segundos:
La siguiente línea hace que el script espere 3 segundos antes de mostrar el mensaje de error:
Bash
sleep 3
	sleep: Hace que el script se pause durante la cantidad de segundos especificada (en este caso, 3).

-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

El script "Condicionales2" permite al usuario ingresar dos números y compara cuál de ellos es mayor, menor o igual. El script muestra un mensaje personalizado dependiendo del resultado de la comparación.
Explicación paso a paso:
1.	Solicitud de números:
Las primeras líneas del script solicitan al usuario que ingrese dos números:
Bash
echo "Ingrese el primer número: "
read n1
echo "Ingrese el segundo número: "
read n2
	echo: Imprime un mensaje en la consola para indicar al usuario qué debe ingresar.
	read: Lee la entrada del usuario y la almacena en la variable correspondiente (n1 o n2).
2.	Comparación de números:
La siguiente instrucción condicional compara los números ingresados:
Bash
if [ "$n1" == "$n2" ]; then
	if: Comienza una instrucción condicional.
	[ "$n1" == "$n2" ]: Compara el valor de $n1 con $n2 usando la instrucción [ ] y el operador de igualdad (==).
	fi: Termina la instrucción condicional.
3.	Mensaje de números iguales:
Las siguientes líneas muestran un mensaje si los números son iguales:
Bash
echo "Los números ingresados son iguales."
	echo: Imprime un mensaje en la consola.
4.	Comparación de n1 y n2:
Si los números no son iguales, el script entra en la siguiente instrucción elif:
Bash
elif [ "$n1" -gt "$n2" ]; then
	elif: Comienza una instrucción condicional alternativa.
	[ "$n1" -gt "$n2" ]: Compara el valor de $n1 con $n2 usando la instrucción [ ] y el operador de mayor que (-gt).
	fi: Termina la instrucción condicional.
5.	Mensaje de n1 mayor:
Las siguientes líneas muestran un mensaje si n1 es mayor que n2:
Bash
echo "n1 es mayor que n2."
	echo: Imprime un mensaje en la consola.
6.	Mensaje de n2 mayor:
Si n1 no es mayor que n2, el script entra en la última instrucción else:
Bash
else
echo "n2 es mayor que n1."
fi
	else: Comienza una instrucción condicional alternativa.
	echo: Imprime un mensaje en la consola.
	fi: Termina la instrucción condicional.

-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

En el Scrip "Condicionales3" permite al usuario ingresar un número y verifica si es divisible por 2. El script muestra un mensaje personalizado dependiendo del resultado de la verificación.
Explicación paso a paso:
1.	Solicitud de número:
La primera línea del script solicita al usuario que ingrese un número:
Bash
echo "Ingrese un valor: "
read value
	echo: Imprime un mensaje en la consola para indicar al usuario qué debe ingresar.
	read: Lee la entrada del usuario y la almacena en la variable value.
2.	Verificación de divisibilidad:
La siguiente instrucción condicional verifica si el número ingresado es divisible por 2:
Bash
if [ $(($value % 2)) -eq 0 ]; then
	if: Comienza una instrucción condicional.
	$(($value % 2)): Calcula el residuo de la división del valor ingresado ($value) por 2 (% 2) y almacena el resultado en una variable temporal.
	-eq 0: Compara el valor de la variable temporal con 0 usando la instrucción [ ] y el operador de igualdad (==).
	fi: Termina la instrucción condicional.
3.	Mensaje de divisible por 2:
Las siguientes líneas muestran un mensaje si el número es divisible por 2:
Bash
echo "El valor ingresado es divisible por 2."
	echo: Imprime un mensaje en la consola.
4.	Mensaje de no divisible por 2:
Si el número no es divisible por 2, el script entra en la última instrucción else:
Bash
else
echo "El valor ingresado no es divisible por 2."
fi
	else: Comienza una instrucción condicional alternativa.
	echo: Imprime un mensaje en la consola.
	fi: Termina la instrucción condicional.

-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

Este script de "Sustitución" permite al usuario ingresar su fecha de nacimiento y calcula su edad actual en años. El script utiliza la fecha actual del sistema y la fecha de nacimiento ingresada para calcular la diferencia en segundos, y luego la convierte en años.

Explicación paso a paso:
1.	Solicitud de fecha de nacimiento:
La primera línea del script solicita al usuario que ingrese su fecha de nacimiento:
Bash
read -p "Por favor, ingrese su fecha de nacimiento (formato: YYYY-MM-DD): " fecha_nacimiento
	read -p: Lee la entrada del usuario y la almacena en la variable fecha_nacimiento.
	-p: Indica al script que muestre un mensaje previo a la entrada del usuario.
2.	Cálculo de edad:
La siguiente línea calcula la edad del usuario:
Bash
edad=$((($(date +%s) - $(date -d "$fecha_nacimiento" +%s)) / 31536000))
	$(date +%s): Obtiene la fecha actual del sistema en formato de marca de tiempo (segundos desde la época Unix).
	$(date -d "$fecha_nacimiento" +%s): Obtiene la fecha de nacimiento ingresada por el usuario en formato de marca de tiempo.
	$(( )): Realiza una operación aritmética dentro de la cadena.
	/ 31536000: Divide la diferencia de segundos por la cantidad de segundos en un año (31536000) para obtener la edad en años.
	edad=$(( )): Almacena el resultado de la operación en la variable edad.
3.	Mostrar la edad:
La última línea del script muestra un mensaje personalizado con la edad calculada:
Bash
echo "Su edad es: $edad años"
	echo: Imprime un mensaje en la consola.
	$edad: Inserta el valor de la variable edad en el mensaje.

-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*

Este script de "Bucle" desafía al usuario a adivinar el PID (identificador de proceso) del propio script. El script utiliza un bucle while para repetir la solicitud de un número hasta que el usuario adivine correctamente el PID. El script muestra mensajes de pista para guiar al usuario, indicando si el número ingresado es menor, mayor o igual al PID real.
Explicación paso a paso:
1.	Obtener el PID:
La primera línea del script obtiene el PID del script actual y lo almacena en la variable pid:
Bash
pid=$$
	$$: Variable especial que contiene el PID del script actual.
2.	Inicializar el contador:
La siguiente línea inicializa la variable intentos en 0:
Bash
intentos=0
	intentos=0: Asigna el valor 0 a la variable intentos.
3.	Bucle de adivinanza:
El siguiente bloque de código implementa el bucle while de adivinanza:
Bash
while true; do
	while true; do: Inicia un bucle while que se repite infinitamente hasta que se encuentre una instrucción break dentro del bucle.
Dentro del bucle, se realizan las siguientes acciones:
	Incrementar contador:
Bash
((intentos++))
	((intentos++)): Incrementa el valor de la variable intentos en 1.
	Solicitar número:
Bash
echo "Intento $intentos. Ingrese un número:"
read numero
	echo: Imprime un mensaje indicando el número de intento y solicitando al usuario que ingrese un número.
	read numero: Lee la entrada del usuario y la almacena en la variable numero.
	Verificar número:
Bash
if [ $numero -eq $pid ]; then
  echo "¡Felicidades! Adivinaste el PID en $intentos intentos."
  break
elif [ $numero -lt $pid ]; then
  echo "El número ingresado es menor que el PID."
else
  echo "El número ingresado es mayor que el PID."
fi
	if: Comienza una instrucción condicional.
	`[ $numero -eq $pid

-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
Este script de "Bucle2" permite agregar y borrar archivos en el sistema. El script solicita al usuario que ingrese el nombre de un archivo para crear, luego espera unos segundos, muestra la lista de archivos actuales y, finalmente, pregunta si el usuario desea borrar un archivo. Si el usuario elige borrar un archivo, el script solicita el nombre del archivo a borrar y lo elimina.

Explicación paso a paso:
1.	Agregar un archivo:
	Las primeras líneas solicitan al usuario el nombre del archivo que desea agregar y almacenan la entrada en la variable nombre_archivo.
	El comando touch "$nombre_archivo" crea un archivo vacío con el nombre especificado en $nombre_archivo.
	Un mensaje de confirmación indica al usuario que el archivo se ha agregado correctamente.
2.	Esperar 3 segundos:
	El comando sleep 3 introduce una pausa de 3 segundos antes de continuar con la siguiente acción.
3.	Mostrar la lista de archivos:
	El comando ls se ejecuta para mostrar una lista de todos los archivos y directorios presentes en el directorio actual.
4.	Preguntar si se desea borrar un archivo:
	Se solicita al usuario si desea borrar un archivo, almacenando la respuesta en la variable respuesta.
5.	Borrar un archivo:
	Si la respuesta del usuario es "s" (sí):
	Se solicita al usuario el nombre del archivo que desea borrar, almacenándolo en la variable nombre_a_borrar.
	El comando rm -i "$nombre_a_borrar" elimina el archivo especificado en $nombre_a_borrar, con la opción -i para solicitar confirmación antes de eliminar.
	Un mensaje de confirmación indica al usuario que el archivo se ha borrado correctamente.
	Si la respuesta del usuario es "n" (no):
	Se imprime un mensaje indicando que no se borrará ningún archivo.
