#include<stdio.h>
extern int binsrch(int data[], int item, int low, int high);
int main(int argc, char *argv[]){
    int data[5], item, i ;
    int ind = -1;

    printf("Enter items in the list\n");
    for(i=0; i<5; i++){
        scanf("%d",&data[i]);
    }

    printf("Enter item to be searched: ");
    scanf("%d",&item);
    
    ind = binsrch(data, item, 0, 4);
    if(ind >= 0){
        printf("Given item is in the list\n");
    }else{
        printf("Given item is not in the list\n");
    }
    return 0;
}
