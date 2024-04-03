#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t child_pid;

    // Crear un proceso hijo
    child_pid = fork();

    if (child_pid < 0) {
        perror("Error al crear el proceso hijo");
        exit(EXIT_FAILURE);
    } else if (child_pid == 0) {
        // Código ejecutado por el proceso hijo
        printf("Proceso hijo creado.\n");
        sleep(30);
        exit(EXIT_SUCCESS);
    } else {
        // Código ejecutado por el proceso padre
        printf("Proceso padre esperando.\n");

        // Esperar 5 segundos antes de llamar a wait()
        sleep(10);
        // Comprobar el estado de los procesos antes de llamar a wait()
        printf("Estado de los procesos antes de esperar al hijo:\n");
        system("ps -l");

        // Esperar al proceso hijo sin bloquear el padre
        waitpid(child_pid, NULL, WNOHANG);

        // Comprobar el estado de los procesos después de esperar al hijo
        printf("\nEstado de los procesos después de esperar al hijo:\n");
        system("ps -l");
    }
    return 0;
}
