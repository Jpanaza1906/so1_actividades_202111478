#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>

void *thread_function(void *arg) {
    // Hilo de trabajo
    printf("hilo único\n");
    return NULL;
}

int main() {
    pid_t pid;

    pid = fork();
    if (pid == 0) {
        // Proceso hijo
        pid = fork();
        if (pid == 0) {
            // Segundo proceso hijo
            pthread_t tid;
            pthread_create(&tid, NULL, thread_function, NULL); // Crear un hilo en el segundo proceso hijo
        }
        else {
            printf("proceso único\n"); // Imprimir "proceso único" desde el primer proceso hijo
        }
    }
    else {
        printf("proceso único\n"); // Imprimir "proceso único" desde el proceso padre
    }

    fork(); // Crear otro proceso

    return 0;
}
