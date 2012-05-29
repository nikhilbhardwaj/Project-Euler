#include<iostream>
#include<cmath>

using namespace std;

#define ull unsigned long long

int total_divisors(ull target_number)
{
  int no_of_divisors = 0;
  for(ull j=1; j <= sqrt( target_number ) ; ++j)
  {
    if(target_number % j == 0){ no_of_divisors += 2; }
  }
  //each number divides itself too!
  return no_of_divisors;
}

int main()
{
  ull triangle_number = 0;

  for(ull i=1; ; ++i)
  {
    if(total_divisors(triangle_number) >= 500)
    {
      std::cout<<"The answer is "<<triangle_number;
      return 0;
    }
    triangle_number += i;
  }
  return 1;
}
