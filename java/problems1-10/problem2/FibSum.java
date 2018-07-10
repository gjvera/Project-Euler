class FibSum{
    public static void main(String args[]){
        double prevTerm = 1;
        double curTerm = 1;
        double tempTerm;
        int sum = 0;
        while(curTerm < 4000000){
            tempTerm = curTerm;
            curTerm = prevTerm + curTerm;
            prevTerm = tempTerm;
            if(curTerm % 2 == 0){
                sum += curTerm;
            }
        }
        System.out.printf("%d\n", sum);
    }
}
