#include <stdio.h>

// Algoritmos de Ordenação
#include "./BubbleSort/bubbleSort.h"
#include "./MergeSort/mergeSort.h"
#include "./HeapSort/heapSort.h"
#include "./InsertionSort/insertionSort.h"

// Utils
#include "./Utils/utils.h"

#define tam 10

int main(){
    int *v = (int*)malloc(sizeof(int)*tam);
    generate(v, tam);

    int opcao = 0;

    printf("\n1- BubbleSort\n2- HeapSort\n3- MergeSort\n4- InsertionSort\n\n> ");
    scanf("%d", &opcao);

    switch(opcao){
        case 1: bubbleSort(v, tam); break;
        case 2: heapSort(v, 0, tam); break;
        case 3: mergeSort(v, 0, tam); break;
        case 4: insertionSort(v, tam); break;
        default: return -1;
    }

    printArray(v, tam);

    free(v);
    return 0;
}