#include<stdio.h>
extern int strrev(char src1[], char src2[]);
int main(int argc, char *argv[]){
    char src1[10] ;
    char src2[10] ;
    printf("Enter first string: ");
    scanf("%s",src1);
    printf("Enter second string: ");
    scanf("%s",src2); 
    
    int flag = strrev(src1, src2);
    
    if(flag == 1){
        printf("Given strings are reverse of each other\n");
    }else{
        printf("Given strings are not reverse of each other\n");
    }

    return 0;
}

