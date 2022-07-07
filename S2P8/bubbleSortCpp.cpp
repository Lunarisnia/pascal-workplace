#include <iostream>

void bubbleSort();
void selectionSort();

int main(int argc, char const *argv[])
{
    selectionSort();
    return 0;
}

void selectionSort() {
    int unsorted[12] { 2, 0, 2, 1, 4, 3, 5, 0, 0, 4, 7, 3 };

    int i, j, min_idx;

    for (i = 0; i < (sizeof(unsorted) / sizeof(unsorted[0])) - 1; i++) {
        min_idx = i;
        for (j = i + 1; j < (sizeof(unsorted) / sizeof(unsorted[0])); j++) {
            if (unsorted[j] < unsorted[min_idx]) {
                min_idx = j;
            }
        }
        int temp = unsorted[i];
        unsorted[i] = unsorted[min_idx];
        unsorted[min_idx] = temp;
    }
    

    for (int i = 0; i < (sizeof(unsorted) / sizeof(unsorted[0])); i++)
        std::cout << unsorted[i] << std::endl;
}

void bubbleSort() {
    int unsorted[5] { 9, 2, 3, 1, 8 };
    bool swapped { false }; 
    do
    {
        swapped = false;
        for (int i = 0; i < (sizeof(unsorted) / sizeof(unsorted[0])) - 1; i++) {
            int leftElement { unsorted[i] };
            int rightElement { unsorted[i + 1] };
            if (leftElement > rightElement) {
                unsorted[i] = rightElement;
                unsorted[i + 1] = leftElement;
                swapped = true;
            }
        }
    } while (swapped);
    
    for (int i = 0; i < (sizeof(unsorted) / sizeof(unsorted[0])); i++)
        std::cout << unsorted[i] << std::endl;
}