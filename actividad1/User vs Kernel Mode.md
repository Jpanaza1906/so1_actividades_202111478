<b>
Jose David Panaza Batres<br>
202111478<br>
Sistemas Operativos 1
</b>
<h1>
<center>
User vs Kernel mode
</center> 
</h1>
<div style="text-align: justify;">
En el mundo de los sistemas operativos, la manera de como se gestionan los recursos y la seguridad son un tema sumamente importante. Es por ello que es necesario abordar la distinción entre el "Modo Usuario" y el "Modo Kernel" los cuales surgen como un principio fundamental para la operación y control de un sitema operativo.

<h2>Modo Usuario (User Mode)</h2>

El modo usuario es un modo operativo en el que las aplicaciones se ejecutan con acceso limitado al sistema. Cada aplicación se ejecuta en aislamiento, lo que significa que si la aplicacion llega a fallar, no afectaría otras aplicaciones del sistema operativo.

Cuando se lanza una aplicación en modo de usuario, se crea un proceso para ella. Este proceso proporciona a la aplicación un espacio de direcciones virtual y una tabla de manejadores privada.

Es lógico que los programas en modo usuario tienen menos privilegios que las aplicaciones en modo Kernel y no se les permite acceder directamente a los recursos del sistema.

<h2>Modo Kernel (Kernel Mode)</h2>

El modo Kernel es un estado operativo especializado en el sistema, el cual otorga a los componentes de software el absoluto control sobre el hardware. A diferencia del Modo de Usuario, este modo Kernel otorga un acceso ilimitado a la memoria del sistema y a los dispositivos externos. Este se puede considerar como un modo privilegiado, el cual reside en el núcleo del sistema operativo. Es esencial para el control y supervisión del sistema.

El Kernel es el programa central en el que confían todos los componentes del sistema. Este gestiona y permite el acceso a los componentes de hardware donde se programa la prioridad de los programas que deben ejecutarse.

<h2>Transición entre modos</h2>

Las razones de la transición puede suceder cuando una aplicación a nivel de usuario requiere realiza una operación donde se solicita el modo Kernel, comom por ejemplo acceder a dispositivos de hardware o modificar la configuración del sistema. Esto lo realiza de tal manera que cambia el procesador de modo usuario a modo kernel para ejecutar la llamada al sistema, y luego vuelve al modo usuario cuando se completa la operación.

Esto pasa de dicha manera ya que la seguridad no se ve comprometida, la operación en modo dual mejora la seguridad del sistema, ya que se previene cualquier caso de acceso no autorizado a recursos que se consideran críticos en el sistema.

<h2> Ejemplo práctico </h2>

<ul>
<li>Cuando una aplicacion necesita realizar una operacion con permisos</li>

![Ejemplo](https://th.bing.com/th/id/R.cd8b718c20f5040d0a9d651596c456ff?rik=fGidUQy9JU%2b1GA&riu=http%3a%2f%2f4.bp.blogspot.com%2f-u0LiRM4jN4U%2fT9ah89YdUwI%2fAAAAAAAAAEo%2foSzZF6P-Pns%2fw1200-h630-p-k-no-nu%2fllamadas.png&ehk=ENCDdpMDJfSgtSe6OgezuT95arOpU2nMGqHOWyG9WAg%3d&risl=&pid=ImgRaw&r=0)
</ul>
</div>
<h2>Tabla comparativa sobre Modo Kernel y Modo de Usuario</h2>

| Aspecto               | Modo Kernel                               | Modo de Usuario                           |
|-----------------------|-------------------------------------------|------------------------------------------|
| **Descripción**       | El modo kernel es el nivel privilegiado del sistema operativo, donde se ejecuta el código central y se tiene acceso completo al hardware. | El modo de usuario es el nivel menos privilegiado, donde se ejecutan las aplicaciones y se tiene acceso restringido al hardware. |
| **Características**   | Ejecuta operaciones críticas del sistema, como la gestión de memoria y controladores de dispositivos. | Ejecuta aplicaciones y procesos de usuario, dependiendo de servicios del kernel para funciones críticas. |
| **Seguridad**         | Tiene acceso completo a los recursos del sistema, lo que implica riesgos si se corrompe o se ve comprometido. | Tiene acceso limitado a los recursos, lo que reduce el impacto en caso de fallo o compromiso. |
| **Acceso**            | Acceso total a recursos del hardware.       | Acceso restringido a través de llamadas al sistema operativo. |
| **Beneficios**        | Permite ejecutar operaciones críticas con eficiencia y control total del hardware. | Proporciona un entorno aislado y seguro para la ejecución de aplicaciones de usuario. |
| **Desventajas**       | Mayor riesgo de impacto global en caso de fallo o corrupción. Menor aislamiento y potencial para vulnerabilidades de seguridad. | Limitaciones en el acceso directo a hardware, depende del kernel para funciones esenciales. Mayor complejidad en llamadas al sistema. |

<h2>Referencias bibliográficas</h2>

1. GeeksforGeeks. (s.f.). Difference Between User Mode and Kernel Mode.
2. PCMag. (s.f.). Definition of user mode.
3. GeeksforGeeks. (s.f.). User mode and Kernel mode Switching.
4. Coding Horror. (2008). Understanding User and Kernel Mode.
5. Stack Overflow. (2009). What is the difference between user and kernel modes in operating systems.