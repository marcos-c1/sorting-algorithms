#include "quickSort.h"
#include "../Utils/utils.h"

int partition(int *v, int low, int high)
{
    int pivot = v[high];
    int i = low - 1;

    for(int j = low; j < high - 1; j++){
        if (v[j] < pivot){
            i++;
            swap(&v[i], &v[j]);
        }
    }
    swap(&v[i+1], &v[high]);
    return i+1;
}

void quickSort(int *v, int low, int high){
    if (low < high)
    {
        int pi = partition(v, low, high);

        quickSort(v, low, pi - 1);
        quickSort(v, pi + 1, high);
    }
}

