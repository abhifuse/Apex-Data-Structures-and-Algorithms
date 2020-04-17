/**
 *@author Brooks Johnson
 *@date 4/10/2020
 * @description class to calculate a factorial in both recursively and iteratively.
 */

public with sharing class FactorialCalculator {

        public static Integer iterativeFactorialCalc(Integer num){
            if(num == 0){
                return 1;
            }
            Integer factorial = 1;
            for (Integer i = 1; i <= num; i++){
                factorial *= i;
            }
            return factorial;
        }
    public static Integer recursiveFactorialCalc(Integer num){
        if(num == 0){
            return 1;
        }
        return num * recursiveFactorialCalc(num - 1);
    }
}