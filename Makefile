FILES=utils bubbleSort heapSort mergeSort insertionSort selectionSort quickSort countingSort
CFLAGS=-Wall
GCC=gcc -c

run: main rm

main: sorting
	gcc $(CFLAGS) $(FILES) main.c -o main

sorting: utils
	$(GCC) ./BubbleSort/bubbleSort.c -o bubbleSort
	$(GCC) ./HeapSort/heapSort.c -o heapSort
	$(GCC) ./MergeSort/mergeSort.c -o mergeSort
	$(GCC) ./InsertionSort/insertionSort.c -o insertionSort
	$(GCC) ./SelectionSort/selectionSort.c -o selectionSort
	$(GCC) ./QuickSort/quickSort.c -o quickSort
	$(GCC) ./CountingSort/countingSort.c -o countingSort

utils:  
	$(GCC) ./Utils/utils.c -o utils

rm:
	rm -f *.o $(FILES)
	./main