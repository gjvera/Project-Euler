#include<stdio.h>
#include<math.h>

int num_of_divisors(int start){
    int counter = 0;
    int stop = (int) ceil(sqrt(start));
    for(int i = 1; i <= stop; i++){
        if (start % i == 0){
            counter = counter + 2;
            if(counter == 500){
                return start;
            }
    }}
        return -1;
}

int get_nth_triangle(int n){
    int sum = 0;
    for(int i = 0; i < n; i++){
        sum += (i+1);
    }
    return  sum;
}

int main(){
    int ans = -1;
    int iterator = 1;
    while(ans == -1){
        ans = num_of_divisors(get_nth_triangle(iterator));
        iterator++;
    }
    printf("%d\n", ans);
}
