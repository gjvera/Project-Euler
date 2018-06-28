#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int get_factorial(int num){
    if(num == 1)
        return num;
    return num * get_factorial(num - 1);
}
int main(){
    int res = get_factorial(100);
    int length = (int)floor(log10((float)res)) + 1;
    int * arr = (int *) malloc(length * sizeof(int));
    int i = 0;
    do {
        arr[i] = res % 10;
        res /= 10;
        i++;
    } while (res != 0);
    int sum = 0;
    for(int i = 0; i < sizeof(arr)/sizeof(int); i++){
        sum+=arr[i];
    }
    printf("%d\n", sum);
    return 0;

}
