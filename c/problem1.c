#include<stdio.h>

int main(){
    int sum = 0;
    int upper_bound = 1000;
        for(int i = 3; i < upper_bound; i++ ){
            if(i % 3 == 0 || i % 5 == 0){
                sum+= i;
            }
        }
    printf("%d\n", sum);
    return 0;
}
