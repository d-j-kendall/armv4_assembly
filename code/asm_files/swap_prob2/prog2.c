#include<stdio.h>
extern void swap(int *a, int *b);
int main(int argc, char *argv[]){
    int a,b;

    printf("Enter a: ");
    scanf("%d",&a);
    printf("Enter b: ");
    scanf("%d",&b);
    
    printf("Before swap: a=%d, b=%d\n",a,b);
    swap(&a, &b);
    printf("After swap : a=%d, b=%d\n",a,b);
    
    return 0;
}
