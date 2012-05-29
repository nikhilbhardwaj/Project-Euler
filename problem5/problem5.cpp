/*2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?   */

#include<iostream>

using namespace std;

int main()
{
  unsigned long int solution = 2520;
  while(1)
  {
    bool flag = true;
    for(int divisor=2;divisor<=20;divisor++)
    {
      if( solution % divisor == 0)
        flag = flag & true;
      else{
        flag = false;
        break;
      }
    }
    if(flag == true){
      cout<<solution<<endl;
      break;
    }
    solution++;
  }
  return 0;
}
