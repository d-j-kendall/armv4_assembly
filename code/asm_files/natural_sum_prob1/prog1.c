#include<stdio.h>
extern int sumnat(int n);
int main(int argc, char *argv[]){
    int n;

    printf("Enter n: ");
    scanf("%d",&n);
    
    printf("Sum of %d natural numbers: %d\n",n, sumnat(n));
    
    return 0;
}

