if length(shuff)<1
    run cards.m
end

hand(1) = handt;
hand(2) = 0;
hand(2) = shuff(1);
shuff(1) = [];


handt = sum(hand);
if eyes>0
    if eyes>2
            yourhand = hand(1:2);
        else
            yourhand = hand(1:eyes);
        end
else
    yourhand = [];
end

disp(['You: ' num2str(yourhand)])
disp([' '])

if handt>21
    pot = pot - realbet;
    text = ['BUST! You lost ' num2str(realbet) '. You have ' num2str(pot) ' remaining.'];
    disp(text)
    casino = casino + realbet;
    disp([' ';' '])
end

if eyes>2
    text = ['nExT cArD(s): ' num2str(shuff(1:eyes-2))];
    disp(text)
    disp([' '])
end

