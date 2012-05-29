#ifndef RATIONAL_H
#define RATIONAL_H
#include<iostream>
//prototype for the gcd function
int gcd(int,int);

//Class Defn for rational no's
class Rational
{
  int numerator,denominator;
  public:
  // the various constructors
  Rational();
  Rational(int);
  Rational(int,int);

  //member functions
  int get_numerator()const{return numerator;}
  int get_denominator()const{return denominator;}
  Rational simplify();

  // overloaded operators
  // relational operators
  bool operator==(const Rational&)const;
  bool operator<(const Rational&)const;
  bool operator<=(const Rational&)const;
  bool operator>(const Rational&)const;
  bool operator>=(const Rational&)const;

  //arithmetic operators
  Rational operator+(const Rational&);
  Rational operator-(const Rational&);
  Rational operator*(const Rational&);
  Rational operator/(const Rational&);

  //output operator
  friend std::ostream& operator<<(std::ostream&, const Rational&);
};
#endif //RATIONAL_H
