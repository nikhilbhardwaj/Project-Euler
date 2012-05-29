import java.util.*;
import java.math.BigInteger;

public class Prob36
{
  private static boolean isPalindrome(String number)
  {
    StringBuffer tmp = new StringBuffer(number);
    if(number.equalsIgnoreCase(tmp.reverse().toString()))
    {
      return true;
    }
    return false;
  }

  public static void main(String [] args)
  {
    BigInteger biggy = new BigInteger("1");
    int sum = 0;

    for(int i=0; i <= 1000000; i += 2)
    {
      if(isPalindrome(biggy.toString()) && isPalindrome(biggy.toString(2)))
      {
        System.out.println(biggy);
        sum += biggy.intValue();
      }
      //Only odd no's will be palindromes in base 2
      biggy = biggy.add(new BigInteger("2"));
    }
    System.out.println("The answer you seek is " + sum);
  }
}
