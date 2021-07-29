FILES=utils bubbleSort heapSort mergeSort insertionSort
CFLAGS=-Wall

run: main rm

main: sorting
	gcc $(CFLAGS) $(FILES) main.c -o main

sorting: utils
	gcc -c ./BubbleSort/bubbleSort.c -o bubbleSort
	gcc -c ./HeapSort/heapSort.c -o heapSort
	gcc -c ./MergeSort/mergeSort.c -o mergeSort
	gcc -c ./InsertionSort/insertionSort.c -o insertionSort

utils:  
	gcc -c ./Utils/utils.c -o utils

rm:
	rm -f *.o $(FILES)