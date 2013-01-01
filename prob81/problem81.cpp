#include <iostream>
#include <sstream>
#include <vector>
#include <map>

using namespace std;

long calculateMinSum(const vector<vector<int> >& matrix, int row, int col, const int &N);
// Add a lookup table for memoization
map<pair<int,int>, long> lookup_table;

int main(int argc, char **argv)
{
  // Read the dimension from the command line
  int N;
  istringstream iss(argv[1]);
  iss >> N;
  // Read in the vector from stdin
  vector<vector<int> > matrix;
  for(int i=0; i<N; ++i)
  {
    matrix.push_back(vector<int>());
    for(int j=0; j<N; ++j)
    {
      int elem; cin>>elem;
      matrix[i].push_back(elem);
    }
  }
  cout<<calculateMinSum(matrix,0,0,N)<<endl;
  return 0;
}

long calculateMinSum(const vector<vector<int> >& matrix, int row, int col, const int &N)
{
  // Memoized for better speed
  if(lookup_table.find(make_pair(row,col)) != lookup_table.end())
  {
    return lookup_table[make_pair(row,col)];
  }

  if(row == N-1 && col == N-1)
  {
    return matrix[row][col];
  }
  else if(row == N || col == N)
  {
    return INT_MAX;
  }
  else
  {
    long tmp = matrix[row][col] + min(calculateMinSum(matrix, row+1, col, N),
        calculateMinSum(matrix, row, col+1, N));
    lookup_table[make_pair(row,col)] = tmp;
    return tmp;
  }
}
