disp(['Welcome to the casino!'])
disp([' '])



run cards.m

pot = 1000;
bet = 100;
bet2 = 0;
casino = 10000;
plays = 0;
debt = 0;
amount = 0;
interest = 0;
eyes = 2;
time = 0;
window = 100000;

text = ['You have ' num2str(pot) ', and you are betting ' num2str(bet) '.'];
disp(text)
disp(['To change your bet, enter "bet = " before a draw, followed by the amount you wish to bet.'])
disp([' '])
disp(['Type "deal" to draw your first hand.'])
disp([' '])
disp(['Type "hit" to take draw another card and "ddown" to double down.'])
disp([' '])
disp(['Type "stand" if you wish to stick with your hand. The dealer with then draw a hand.'])
disp([' '])
disp(['If you run out of money, you may take out a loan from the casino (with interest)'])
disp([' by typing "loan".'])
disp(['To keep track of how much you owe, type "iou" and pay up with "pay".'])
disp(['If you do not pay after 10 hands, the bailiff will punch out one of your eyes.'])
disp(['(This makes it harder to see your cards)'])
disp([' '])
disp(['If you are desperate the spirits who haunt the casino may grant you with another eye.'])
disp(['Type "charm" and you will be able to see an additional card'])
disp([' (in exchange for an indeterminate price).'])
disp([' '])
disp(['Good luck!'])
disp([' ';' '])
