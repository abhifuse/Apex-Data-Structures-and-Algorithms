/**
 *@author Brooks Johnson
 *@date 4/9/2020
 * @description  Insertion sort is a stable, in place, sorting algorithm.  It has quadratic time complexity
 */

public with sharing class InsertionSort {

    public static void sort(List<Integer>listToSort){
        for (Integer unsortedIndex = 1; unsortedIndex < listToSort.size(); unsortedIndex ++){
            Integer newElement = listToSort[unsortedIndex];
            System.debug('current value of new element ' + newElement);
            Integer i;
            for (i = unsortedIndex; i > 0 && listToSort[i - 1] > newElement; i--){
                System.debug('value of the index = ' + unsortedIndex);
                System.debug('value of listToSort[i-1]' + listToSort[i-1]);
                listToSort[i] = listToSort[i-1];
            }
            listToSort[i] = newElement;
        }
    }
}