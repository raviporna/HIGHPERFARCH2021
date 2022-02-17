/* gcc -o code1.exe code1.c -fopenmp */

#include <stdio.h>
#include <time.h>
#include <omp.h>

/* N for sample size, NUM for data size */
#define N 10000
#define NUM 500000

void original(){
  int a[NUM];
  for (int i=0;i<NUM;i++) {
    a[i]=2*i+i;
  }
  return;
}

void withOMP(){
  int a[NUM];
  #pragma omp parallel
  #pragma omp for nowait schedule(static)
  for (int i=0;i<NUM;i++) {
    a[i]=2*i+i;
  }
  return;
}

int main(void) {
  clock_t t;
  double time_taken1,time_taken2;

  /* originally */
  t = clock();
  for(int i=0;i<N;i++) original();
  t = clock() - t;
  float t1 = t;
  time_taken1 = ((double)t) * 1000 / CLOCKS_PER_SEC / N;

  /* with OpenMP */
  t = clock();
  for(int i=0;i<N;i++) withOMP();
  t = clock() - t;
  float t2 = t;
  time_taken2 = ((double)t) * 1000 / CLOCKS_PER_SEC / N;

  printf("with data size = %d\n",NUM);
  printf("originally took %f ms to execute \n", time_taken1);
  printf("OpenMP     took %f ms to execute \nSpeedup=%f\n", time_taken2, t1/t2);
  
  return 0;
}
