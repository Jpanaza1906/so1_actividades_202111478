<b>
Jose David Panaza Batres<br>
202111478<br>
Sistemas Operativos 1
</b>
<h1>
<center>
Interrupts vs Traps
</center> 
</h1>
<div style="text-align: justify;">

Cuando se habla de sistemas operativos, es necesario entender que la gestión de eventos y el manejo de situaciones críticas es una tarea muy importante y delicada, donde es indispensable un funcionamiento estable y seguro del sistema. Es por ello que es necesario abordar estos dos conceptos, los cuales son las Interrupciones (Interrupts) y Trampas (Traps).

<h2>Interrupciones (Interrupts)</h2>

Es considerada una señal recibida por el procesador, la cual indica que se debe interruptir el curso de la ejecución, y pasar a ejecutar el código específico parar tratar dicha situación. Las interrupciones puede ser por hardware o software.

Las interrupciones de hardware son generadas por dispositivos externos, mientras que las de software son invocadas por una instrucción en un el programa.

El Kernel funciona combinando los contextos de procesos con los contextos de las interrupciones. La parte de código del Kernel que es invocada por las llamadas al sistema que se producen por las aplicaciones se ejecutan en el contexto de procesos. Se debe considerar que los manejadores de interrupciones se ejecutan de forma asíncrona en el contexto de interrupciones.

<h2> Trampas (Traps) </h2>

Las trampas son interrupciones activadas por software. En comparación con las interrupciones las cuales son generadas por hardware; Las trampas son generadas netamente por el software.

Las trampas por software generalmente se utilizan para manejar errores y excepciones, donde el sistema detecta una situación en específico y el software genera una interrupción para evitar un colapso en el sistema.

Un ejemplo muy claro podría ser la división por cero, que cuando se detecta, se maneja la excepción la cual interrumpe la ejecución normal del programa.

<h2>Manejo de interrupciones y trampas</h2>

Como se especificó anteriormente, cuando el procesador detecta que se ha generado una interrupción, sin importar lo que esté haciendo, detiene lo que esté ejecutando e invoca la rutina de dicha interrupción o IRS registrada para la IRQ correspondiente.

Como en todo sistema operativo, la prioridad juega un papel muy importante para poder determinar un orden cuando se ejecutan varias acciones a la vez. Al igual sucede cuando hay varias lineas de petición de interrupción, donde el controlador de interrupciones utiliza las prioridades para escoger la interrupción sobre la que informará al procesador principal.

De manera más específica y adentrada al procesador, para que no se pierda el curso normal del sistema operativo, cuando se detecta una interrupción se guarda en la pila los registros y las flags, para que cuando se termine de ejecutar la interrupción, regrese a la posición que se guardo en la pila, y así ejecutar lo que se estaba haciendo.

<h2>Relación con User mode y Kernel mode </h2>

Las interrupciones y trampas están relacionadas con los modos de usuario y kernel en el sentido de que permiten al sistema operativo manejar eventos de hardware y software de manera eficiente y segura. Las interrupciones permiten al hardware comunicarse con el kernel, mientras que las trampas permiten al software solicitar servicios del kernel. Ambos mecanismos ayudan a mantener la seguridad y estabilidad del sistema operativo al permitir que el kernel controle y coordine el acceso a los recursos del sistema

</div>

<h2> Tabla comparativa sobre Interrupciones vs Trampas </h2>

| Aspecto            | Interrupciones                                      | Trampas                                     |
|--------------------|-----------------------------------------------------|---------------------------------------------|
| **Descripción**    | Señales asincrónicas que indican eventos externos al procesador y requieren atención inmediata. | Señales sincrónicas generadas por instrucciones del programa, utilizadas para manejar excepciones o eventos específicos. |
| **Características**| Asincrónicas, pueden interrumpir la ejecución normal del programa en cualquier momento. | Sincrónicas, generadas por instrucciones específicas, no interrumpen la ejecución normal a menos que se provoque una trampa. |
| **Funcionalidad**  | Utilizadas para manejar eventos externos como solicitudes de entrada/salida, temporizadores o fallos de hardware. | Manejan excepciones generadas por el programa, como divisiones por cero o acceso a memoria no permitido. |
| **Beneficios**     | Permiten la atención inmediata de eventos externos, mejorando la eficiencia y la capacidad de respuesta del sistema. | Proporcionan un mecanismo controlado para manejar excepciones y eventos específicos en el programa. |
| **Desventajas**    | Pueden introducir complejidad en el manejo de la concurrencia y deben ser manejadas cuidadosamente para evitar conflictos. | Limitadas a eventos específicos y requieren instrucciones adicionales, lo que puede afectar la eficiencia. |
| **Mayor Uso**      | Controlar eventos externos y mejorar la eficiencia del sistema operativo. | Manejar excepciones y eventos específicos en programas de aplicación. |
| **Ejemplos**       | Interrupciones de temporizador, interrupciones de dispositivo de entrada/salida. | Trampa de división por cero, trampa de punto flotante, trampa de acceso a memoria no permitido. |

<h2>Referencias bibliográficas</h2>

1. Interrupción - Wikipedia, la enciclopedia libre. (s.f.). En Wikipedia. Recuperado el 25 de enero de 2024
2. Definición y tipos de interrupciones. (s.f.). En Bing. Recuperado el 25 de enero de 2024
3. Arquitectura de Computadoras - Interrupciones by Francisco Javier. (s.f.). En Prezi. Recuperado el 25 de enero de 2024
4. TIPOS DE INTERRUPCIONES by Omar Zuñiga Quiroz - Prezi. (15 de enero de 2015). En Prezi. Recuperado el 25 de enero de 2024
5. Interrupción - Qué es, definición y concepto. (s.f.). En Definicion.de. Recuperado el 25 de enero de 2024
6. Difference between Hardware Interrupt and Software Interrupt. (s.f.). En GeeksforGeeks. Recuperado el 25 de enero de 2024
