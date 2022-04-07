void main(List<String> args) {
  
  Outerlopp:for(int i=0;i<5;i++)
  {
    Inneloop:for(int j=0;j<5;j++)
    {
      if(j==3)
      {
        break Inneloop;
      }
      print("$i $j");
    }
    if(i==3)
    {
      break Outerlopp;
    }
  }
}