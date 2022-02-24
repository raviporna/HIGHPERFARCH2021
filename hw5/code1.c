#include<stdio.h>
int main(){
  int i,j,k;
  int n=8;
  double a[8][8], A[8][8];
  /* init array a */
  for (i=0;i<n;i++)
    for (j=0;j<n;j++) 
      a[i][j] = i;
  /* matrix multiplication*/
  for (i=0;i<n;i++)
    for (j=0;j<n;j++) {
      A[i][j] = 0;
      for(k=0;k<n;k++) A[i][j] += a[i][k]*a[k][j];
    }

  /* result */
  for (i=0;i<n;i++){
    for (j=0;j<n;j++) printf("%f\t", A[i][i]);
    printf("\n");
  }
  return 0;
}