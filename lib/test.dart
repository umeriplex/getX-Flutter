class Test{
  // function to calculate palindromic number
  int palindromicNumber(int number){
    int reverse = 0;
    int temp = number;
    while(temp > 0){
      int lastDigit = temp % 10;
      reverse = reverse * 10 + lastDigit;
      temp = temp ~/ 10;
    }
    return reverse;
  }

  // design table 2 rows and 3 columns

}