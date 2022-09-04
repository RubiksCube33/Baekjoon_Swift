import Foundation

var N = Int(readLine()!)!

if(N%2==0){
  N = ((N*(N+2))*(2*N+1))/8
}
else{
  N = ((N+1)*((2*(N*N))+(3*N)-1))/8
}

print(N)