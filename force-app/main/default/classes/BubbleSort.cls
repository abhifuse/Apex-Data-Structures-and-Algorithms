/**
 *@author Brooks Johnson
 *@date 4/7/2020
 */

public with sharing class BubbleSort {

    public static void sort(List<Integer> listToSort){
        Integer totalOperations = 0;
        for (Integer unsortedIndex = listToSort.size() -1; unsortedIndex > 0; unsortedIndex --){
            for(Integer i = 0; i < unsortedIndex; i++){
                if (listToSort[i] > listToSort[i +1]) {
                    swap(listToSort, i, i+1);
                }
                totalOperations +=1;
            }
        }
        System.debug(totalOperations);
    }

    public static void swap(List<Integer> integerList, Integer i, Integer j){
        if (i == j) {
            return;
        }
        Integer temp = integerList[i];
        integerList[i] = integerList[j];
        integerList[j] = temp;
    }
}