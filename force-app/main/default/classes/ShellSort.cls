/**
 *@author Brooks Johnson
 *@date 4/10/2020
 * @description Shell sort is a optimized version of insertion sort. The basic theory being that Insertion sort can
 * perform better if it is given a largely sorted list.
 */

public with sharing class ShellSort {

    public static void sort(List<Integer> listToSort){
        //basic way to set gap interval
        for (Integer gap = listToSort.size() / 2; gap > 0; gap /=2 ){
            System.debug('current gap value = ' + gap);
            for (Integer i = gap; i < listToSort.size(); i++){
                Integer newElement = listToSort[i];
                System.debug('value of new element = ' + newElement);
                Integer j = i;
                System.debug('value of j = ' + j);

                while (j >= gap && listToSort[j - gap] > newElement){
                    System.debug('Swapping values of ' + listToSort[j] + ' and ' + listToSort[j -gap]);
                    listToSort[j] = listToSort[j - gap];
                    j -= gap;
                    System.debug('new value of j ' + j);
                }
                listToSort[j] = newElement;
                System.debug('value of list at position j is = ' + listToSort[j]);
            }
        }
    }

}