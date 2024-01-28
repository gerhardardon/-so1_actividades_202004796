
<style>
.justify {
  text-align: justify;
}
.center {
    text-align: center;
}
</style>
<div class="justify">
<div class="center">

# Investigacion de sistemas operativos
### Gerhard Benjamin Ardon Valdez
### 202004796
## -   Tipos de Kernel y sus diferencias
</div>
El kernel se puede definir como el corazon o el nucleo del sistema operativo, ya que en grandes razgos tiene un papel muy importante, servir como intermediario entre el software y el hardware de la computadora.
Este es el encargado de coordinar el manejo y uso del hardware requerido por las aplicaciones y programas. 

Ademas, tiene el papel de ser un **administrador de recursos** ya que es el encargado de liberar memoria y procesador para garantizar un uso equitativo de los recursos mientras se ejecutran los programas. Tambien brinda **seguridad y proteccion** ya que es el encargado de implementar politicas de seguridad para proteger el S.O.
 
 Que tipos de Kernel existen?
 
 **Esenciales:**
 * Monolitico: Kernel de gran tamaño que genera todas las tareas del sistema operativo por su cuenta, con la desventaja de que al ocurrir un fallo en el Kernel, fallará tambien todo el S.O.
 * Microkernel: Kernel de pequeño tamaño que divide todas las tareas de un monolitico pero las fragmenta en pequeños modulos con funciones basicas. Busca evitar el fallo total del Kernel.
 * Híbrido: este es una mezcla de los dos anteriores, un Kernel grande con la capacidad de ser modulado, su principal desventaja es la complejidad.

 
 **No esenciales:**
 * Nanokernel: Kernel de muy poco tamaño diseñado para sistemas embebidos 
 * Exokernel: Se estructura verticalmente y esta destinado a fines investigativos unicamente, el Kernel se limita a evitar errores en los permisos de hardware y eludir conflictos.
 * Unikernel: Su objetivo es simplificar la comunicacion entre software y hardware, evitando capas intermedias, por lo que es muy usado en dsipositivos IOT 
 * Anykernel: Un concepto innovador que busca conservar las cualidades de los Kernel monolíticos, pero también facilitar el desarrollo de los controladores, al mismo tiempo que ofrece mayor seguridad al usuario.
 
 
![](https://www.thepowermba.com/es/wp-content/uploads/2023/05/Tipos-de-Kernel-980x722.jpg)

<div class="center">

## -   User vs Kernel Mode
</div>
 
* Modo usuario: Es por defecto el modo en el que se ejecutan los programas en un sistema operativo, cuando este programa empieza a ejecutarse, el sistema operativo designa un proceso y un espacio de direcciones virtuales para el. No tiene tantos privilegios, por ejemplo, si esta desea acceder a los recursos del sistema debera solicitarlo al Kernel por medio de llamadas al sistema.
* Modo Kernel: Es el modo en el cual se ejecutan los demas componentes del sistema operativo, ya que se utiliza para acceder a los componentes de hardware y programar qué procesos deben ejecutarse en un sistema informático y cuándo, y también gestiona la interacción del software y el hardware de la aplicación. . Por lo tanto, es el programa más privilegiado; a diferencia de otros programas, puede interactuar directamente con el hardware. 
![](https://media.geeksforgeeks.org/wp-content/uploads/20220106132002/Uservskernelmode-660x371.png)
<div class="center">

## -   Interruptions vs traps

</div>

* Traps: Una "trap" es tambien conocida como interrupción de software, esta es generada unicamente por este medio. Esta es sincrona. Estas pueden ser generadas por excepsiones como una division entre cero o errores al accesar memoria.
Una trampa cambia el S.O. a el kernel mode, ya que esta es tratada con urgencia por medio del "trap handler" (que es una region del sistema operativo), la cual maneja la excepcion ya sea por medio de terminar el proceso a la fuerza, indicarle al usuario o una funcion de software predefinida. Para luego volver a cambiar al user mode.

![](https://files.codingninjas.in/article_images/difference-between-trap-and-interrupt-in-operating-system-1-1691857647.webp) 

* Interruptions: una interrupcion es producida unicamente por una pieza de hardware, las interrupciones generalmente estan conectadas al PIN de interrupcion en el CPU y este a su vez utiliza un controlador de interrupciones para saber de que pieza de hardware proviene. 
Este funciona cuando una pieza de hardware notifica al CPU que se realizo una interrupcion, este suspende el programa y entra en kernel mode. Una vez ya dentro el programa llama al controlador de interrupciones para saver de que dispositivo proviene y comop manejarlo. Cuando este ya fue manejado ingresa a modo usuario y reanuda la ejecucion del programa.

![](https://files.codingninjas.in/article_images/difference-between-trap-and-interrupt-in-operating-system-2-1691857647.webp)

Algunos aspectos que remarcar es que todas las traps son interrupciones pero no todas las interrupciones son traps.


<div class="center">

