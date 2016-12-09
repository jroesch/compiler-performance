#include <stdio.h>

int main() {
  int i = 0;
  int sum = 0;

  for (int i = 0; i < 1000; i++) {
    sum += i;
  }

  printf("%d", sum);

  return 0;
}
