bet2 = realbet;
if length(shuff)<1
    run cards.m
end

hand(1) = handt;
hand(2) = 0;
hand(2) = shuff(1)
shuff(1) = [];


handt = sum(hand);


isace = sum(hand==1);


    if isace>0
        if handt <12
            handt = handt + 10;
        end
    else
        yourhand = hand;
    end

 if handt>21
 pot = pot - realbet - bet2;
 end

run stand.m