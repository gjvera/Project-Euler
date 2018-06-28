#include<stdio.h>
#include<math.h>
int get_next_even(int n){
    return n / 2;
}

int get_next_odd(int n){
    return ((3*n) + 1);
}

int get_longest_chain(int start, int stop, int max, int longest_chain){
    printf("%d -> ", start);
    int is_longest = 0;
    if(start == stop){
        return max;
    }
    else{
        int current_elem = start;
        int current_chain = 0;
        while(current_elem != 1 && is_longest == 0){
            if(current_elem % 2 == 0){
                current_elem = get_next_even(current_elem);
                printf("%d -> ", current_elem);
                current_chain++;
                if(current_chain > longest_chain)
                    is_longest = 1;
            }
            else{
                current_elem = get_next_odd(current_elem);
                printf("%d -> ", current_elem);
                current_chain++;
                if( current_chain > longest_chain){
                    is_longest = 1;
                }
            }
        }
        printf("\n\n%d has a chain length of %d\n", start, current_chain);
        if(current_chain > longest_chain){
            return get_longest_chain(start - 1, stop, start, current_chain);
        }
        else{
            return get_longest_chain(start - 1, stop, max, longest_chain);
        }
    }
}

int main(){
    printf("\n\n%d", get_longest_chain(900000, 800000, 0, 0));
    return 0;
}
