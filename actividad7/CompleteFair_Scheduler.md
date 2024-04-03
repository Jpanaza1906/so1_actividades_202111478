<b>
Jose David Panaza Batres<br>
202111478<br>
Sistemas Operativos 1
</b>
<h1>
<center>
Completely Fair Scheduler
</center> 
</h1>
<div style="text-align: justify;">

## Características principales del Completely Fair Scheduler (CFS) de Linux

**1. Planificación basada en tiempo:** CFS utiliza un algoritmo de "colas de tiempo" para distribuir la CPU a los procesos. A cada proceso se le asigna un "presupuesto de tiempo" en función de su prioridad y la cantidad de CPU disponible. El proceso con el mayor presupuesto de tiempo en ejecución se ejecuta hasta que agota su presupuesto o hasta que se bloquea.

**2. Árbol rojo-negro:** CFS organiza las tareas en un árbol rojo-negro. Este árbol permite un acceso rápido y eficiente a la información de las tareas, lo que mejora el rendimiento del planificador.

**3. Prioridades:** CFS admite prioridades de proceso. Las tareas con mayor prioridad reciben más tiempo de CPU que las tareas con menor prioridad.

**4. Interactividad:** CFS está diseñado para ser sensible a las necesidades de los procesos interactivos. Los procesos interactivos, como los editores de texto y los navegadores web, reciben una mayor prioridad que los procesos en segundo plano.

**5. Equidad:** CFS se esfuerza por proporcionar un uso justo de la CPU a todos los procesos. Esto significa que todos los procesos tienen la oportunidad de ejecutarse y no se monopoliza la CPU por un solo proceso.

## Funcionamiento del CFS

**1. Cálculo del presupuesto de tiempo:** El presupuesto de tiempo de un proceso se calcula en función de su prioridad y la cantidad de CPU disponible. La prioridad de un proceso se puede establecer mediante el comando `nice`.

**2. Ejecución de la tarea:** El proceso con el mayor presupuesto de tiempo en ejecución se ejecuta hasta que agota su presupuesto o hasta que se bloquea.

**3. Reajuste del presupuesto:** Cuando un proceso agota su presupuesto de tiempo, se le asigna un nuevo presupuesto en función de la cantidad de CPU disponible y la prioridad de otros procesos en ejecución.

**4. Gestión de colas:** CFS utiliza colas de espera para organizar los procesos que están esperando para ejecutarse. Hay una cola de espera para cada nivel de prioridad.

**5. Interactividad:** CFS aumenta la prioridad de los procesos interactivos para que reciban una mayor cantidad de tiempo de CPU.

**6. Equidad:** CFS utiliza un algoritmo de "colas de tiempo justas" para garantizar que todos los procesos tengan la oportunidad de ejecutarse.


</div>