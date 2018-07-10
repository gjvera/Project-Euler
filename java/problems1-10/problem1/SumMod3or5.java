class SumMod3or5 {
    public static void main(String args[]){
        int UpperBound = 1000;
        int sum = 0;
        for(int i = 3; i < UpperBound; i++){
            if(i % 3 == 0 || i % 5 == 0){
                sum += i;
            }
        }
        System.out.printf("%d\n", sum);
    }
}
