/**
 *@author Brooks Johnson
 *@date 4/7/2020
 * @DESCRIPTION Basic selection sort implementation. Unstable sort algorithm but generally less swapping than
 * bubble sort.
 */

public with sharing class SelectionSort {

    public static void sort(List<Integer> listToSort){
        Integer totalOperations = 0;
        for (Integer unsortedIndex = listToSort.size() -1; unsortedIndex > 0; unsortedIndex --){
            Integer largest = 0;
            for(Integer i = 1; i <= unsortedIndex; i++){
                if (listToSort[i] > listToSort[largest]) {
                    largest = i;
                    System.debug('value of largest = ' + largest);
                }
                totalOperations +=1;
            }
            swap(listToSort, largest, unsortedIndex);
        }
        System.debug(totalOperations);
    }

    private static void swap(List<Integer>integerList, Integer i, Integer j){
        System.debug('value of the list = ' + integerList);
        System.debug('swapping i =  ' + i);
        System.debug('swapping j =  ' + j);
        if (i == j) {
            return;
        }
        Integer temp = integerList[i];
        integerList[i] = integerList[j];
        integerList[j] = temp;
    }

}