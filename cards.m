spades = [1 2 3 4 5 6 7 8 9 10 10 10 10];
clubs = [1 2 3 4 5 6 7 8 9 10 10 10 10];
hearts = [1 2 3 4 5 6 7 8 9 10 10 10 10];
diamonds = [1 2 3 4 5 6 7 8 9 10 10 10 10];
deck = [spades clubs hearts diamonds];
shuff = zeros(1,length(deck));
for i = 1:length(deck)
    shuf = randi([1 length(deck)]);
    shuff(i) = deck(shuf);
    deck(shuf) = [];
end