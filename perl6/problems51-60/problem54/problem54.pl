
#!/usr/bin/perl
use Games::Cards::Poker;

open FILE, "<poker.txt";
$wins = 0;
while ($cards=<FILE>) {
  @hands=split / /,$cards;
  @hand1=@hands[0,1,2,3,4];
  @hand2=@hands[5,6,7,8,9];
  if (ScoreHand(ShortHand(@hand1))<ScoreHand(ShortHand(@hand2))) {
    $wins++;
  }
}
print "Hello";
print "$wins\n";
