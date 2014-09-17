public class Prob49{
    
    Primes pri = new Primes(2000);
    int[] primes;
    
    public Prob49(){
        primes = pri.getPrimes();
        int i = 1;
        while (primes[i] < 1000) i++;
        while (primes[i] < 10000){
            int j = i+1;
            while (2*primes[j]-primes[i] < 10000){
                String jStr = String.valueOf(primes[j]);
                if (isPermutation(primes[i], jStr)){
                    int pk = 2*primes[j] - primes[i];
                    if (pri.isPrime(pk) && isPermutation(pk, jStr)){
                        System.out.println(primes[i] + " " + primes[j] 
                        + " " + pk);
                    }
                }    
                j++;
            }    
            i++;
        }
    }
    
    private boolean isPermutation(int i, String jStr){
        String iStr = String.valueOf(i);
        for (int k = 0; k<iStr.length(); k++){
            if (jStr.indexOf(iStr.charAt(k)) < 0) return false;
        }
        for (int k = 0; k < jStr.length(); k++){
            if (iStr.indexOf(jStr.charAt(k)) < 0) return false;
        }
        return true;
    }
    
    public static void main(String[] args){
        long start = System.currentTimeMillis();
        Prob49 pps = new Prob49();
        long stop = System.currentTimeMillis();
        System.out.println("Time used: " + (stop-start) + "ms.");
    }
}

class Primes
{
  private int [] primes;
  //computes the first n primes
  public Primes(int n)
  {
    primes = new int[n];
    primes[0] = 2; primes[1] = 3;
    int i = 2;
    int j = 5;
    while(i<n)
    {
      if(isPrime(j)){ primes[i++] = j; }
      ++j;
    }
  }
  
  public int [] getPrimes()
  {
    return primes;
  }
  
  static boolean isPrime(int num)
  {
    if(num % 2 == 0) return false;
    for(int j=3; j<= java.lang.Math.sqrt(num); j+=2)
    {
      if(num % j == 0) return false;
    }
    return true;
  }
}