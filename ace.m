isace = sum(hand==1);
if isace>0
    handt = handt + 10;
    yourhand = handt;
    disp(['You: ' num2str(yourhand)])
else
    text = ['NO ACE HERE'];
    disp(text)
end