/* compile: gcc -mavx2 -o test_avx test_avx.c
 * usage test_avx <array size> <sampling size>
 * or test_avx for default array size and sampling size
 * 6231353021 Raviporn Akekunanon
 */

#include <smmintrin.h>
#include <immintrin.h>
#include <time.h>
#include <stdio.h>
#include <stdint.h>

// NO AVX
void add(int size, int *a, int *b)
{
  for (int i = 0; i < size; i++)
    a[i] += b[i];
}

// AVX2
void add_avx(int size, int *a, int *b)
{
  int i = 0;
  for (; i < size; i += 8)
  {
    // load 256-bit chunks of each array
    __m256i av = _mm256_loadu_si256((__m256i *)&a[i]);
    __m256i bv = _mm256_loadu_si256((__m256i *)&b[i]);
    // add each pair of 32-bit integers in chunks
    av = _mm256_add_epi32(av, bv);

    // store 256-bit chunk to a
    _mm256_storeu_si256((__m256i *)&a[i], av);
  }
  // clean up
  for (; i < size; i++)
  {
    a[i] += b[i];
  }
}

int main(int argc, const char *argv[])
{

  int SIZE = 70000;
  int n = 20000;
  if (argc == 3)
  {
    SIZE = atoi(argv[1]);
    n = atoi(argv[2]);
  }

  // set minimum size for accuracy
  // (if too little, then program cannot detect loop and crash)
  if (SIZE < 10000)
    SIZE = 10000;
  if (n < 1000)
    n = 1000;

  printf("for array size %d\n", SIZE);
  printf("and sampling size %d\n", n);

  int a[SIZE], b[SIZE];
  b[0] = 1;

  // timer for no_avx
  clock_t t;
  t = clock();
  for (int i = 0; i < n; i++)
    add(SIZE, a, b);
  t = clock() - t;
  int t1 = t;
  double time_taken = ((double)t) * 1000000 / CLOCKS_PER_SEC / n; // in seconds
  printf("add()  \ttook %f us to execute \n", time_taken);

  // timer for avx
  t = clock();
  for (int i = 0; i < n; i++)
    add_avx(SIZE, a, b);
  t = clock() - t;
  int t2 = t;
  time_taken = ((double)t) * 1000000 / CLOCKS_PER_SEC / n; // in seconds
  printf("add_avx() took %f us to execute \n", time_taken);

  // speed
  double speedup = (t1 + 0.0) / (t2 + 0.0);
  printf("speedup = %f", speedup);
}