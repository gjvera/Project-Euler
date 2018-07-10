class DiffSumSquare{
    public static void main(String args[]){
        int SumSquares = 0;
        int SquareSum = 0;
        for(int i = 0; i < 101; i++){
            SquareSum += i;
            SumSquares += Math.pow(i, 2);
        }
        System.out.printf("%d\n",(int) Math.pow(SquareSum, 2) - SumSquares);
    }
}
