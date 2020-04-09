/**
 *@author Brooks Johnson
 *@date 4/7/2020
 */

public with sharing class BubbleSort {

    public static void sort(List<Integer> listToSort){
        for (Integer unsortedIndex = listToSort.size() -1; unsortedIndex > 0; unsortedIndex --){
            System.debug('value of the unsorted index = ' + unsortedIndex);
            for(Integer i = 0; i < unsortedIndex; i++){
                if (listToSort[i] > listToSort[i +1]) {
                    System.debug('comparing ' + listToSort[i] + ' with ' + listToSort[i+1]);
                    swap(listToSort, i, i+1);
                }
            }
        }
    }

    public static void swap(List<Integer> integerList, Integer i, Integer j){
        System.debug('swapping ' + i + ' and ' + j);
        if (i == j) {
            return;
        }
        Integer temp = integerList[i];
        integerList[i] = integerList[j];
        integerList[j] = temp;
    }
}