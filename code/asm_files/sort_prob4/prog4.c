#include<stdio.h>
extern void sort(int data[], int n);
int main(int argc, char *argv[]){
    int i, data[5] ;
    
    printf("Enter items to be sorted\n");
    for(i=0; i<5; i++){
        scanf("%d",&data[i]);
    }

    printf("Items before sorting: ");
    for(i=0; i<5; i++){
        printf("%d ",data[i]);
    }
    printf("\n");

    sort(data, 5);

    printf("Items after sorting: ");
    for(i=0; i<5; i++){
        printf("%d ",data[i]);
    }
    printf("\n");

    return 0;
}
