List<int> fabonacci(int startingNumber, int numberOfItems){
  int firstNumberOfSeries, nextNumberOfSeries, tempNumber;
  firstNumberOfSeries = startingNumber;
  nextNumberOfSeries = firstNumberOfSeries + 1;
  List<int> series= [];

  for(int i = 0; i <= numberOfItems; i++){
    if(i == 0){
      series.add(firstNumberOfSeries);
    } else{
      series.add(nextNumberOfSeries);
      tempNumber = firstNumberOfSeries + nextNumberOfSeries;
      firstNumberOfSeries = nextNumberOfSeries;
      nextNumberOfSeries = tempNumber;
    }
  }
  return series;
}