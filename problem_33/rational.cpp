#include<iostream>
#include "rational.h"

using namespace std;

// implementation of the various constructors
Rational::Rational()
  :numerator(0),denominator(1){}

Rational::Rational(int number)
  :numerator(number),denominator(1){}

Rational::Rational(int n,int d)
  :numerator(n),denominator(d)
{
  if(denominator == 0) denominator = 1;
  if(denominator < 0)
  {
    numerator *= -1;
    denominator *= -1;
  }
}

// implementation of overloaded operators
bool Rational::operator==(const Rational& rhs)const
{
  if( numerator * rhs.get_denominator() == denominator * rhs.get_numerator() )
  {
    return true;
  }
  else return false;
}

bool Rational::operator<(const Rational& rhs)const
{
  if( numerator * rhs.get_denominator() < denominator * rhs.get_numerator() )
  {
    return true;
  }
  else return false;
}

bool Rational::operator<=(const Rational& rhs)const
{
  return operator==(rhs) || operator<(rhs);
}

bool Rational::operator>(const Rational& rhs)const
{
  return !operator<(rhs);
}

bool Rational::operator>=(const Rational& rhs)const
{
  return operator==(rhs) || operator>(rhs);
}

//arithmetic operators
Rational Rational::operator+(const Rational& rhs)
{
  return Rational( (numerator * rhs.get_denominator() + denominator*rhs.get_numerator()), (denominator * rhs.get_denominator()) );
}

Rational Rational::operator-(const Rational& rhs)
{
  //reuse of the + operator for substraction
  return operator+(Rational(-1*rhs.get_numerator(),rhs.get_denominator()));
}

Rational Rational::operator*(const Rational& rhs)
{
  return Rational(numerator * rhs.get_numerator(), denominator * rhs.get_denominator());
}

Rational Rational::operator/(const Rational& rhs)
{
  //reuse of the * operator as division is the inverse of multiplication
  return operator*(Rational(rhs.get_denominator(),rhs.get_numerator()));
}

// friend output operator
ostream& operator<<(ostream& os, const Rational& r)
{
   os<<r.get_numerator()<<"/"<<r.get_denominator();
   return os;
}

// logic to simplify the rational no's
Rational Rational::simplify()
{
  int t_numerator = numerator / gcd(numerator,denominator);
  int t_denominator = denominator / gcd(numerator,denominator);
  return Rational(t_numerator,t_denominator);
}

//non member functions
int gcd(int n, int m)
{
  int temp;
  while( m > 0)
  {
        temp = n;
        n = m;
        m = temp % m;
  }
  return n;
}
