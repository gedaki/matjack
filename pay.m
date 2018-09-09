
debt = debt + pot;
if debt >0
    pot = debt;
    debt = 0;
    amount = 0;
    text = ['You owe nothing! You have ' num2str(pot)];
    disp(text)
    if eyes < 2
        eyes = eyes + 1;
        text = ['Thank you. To show our appreciation we fixed an eye for you.'];
        disp(text)
    end
else
    pot = 0;
    debt;
    text = ['You are still in the black by ' num2str(debt)];
    disp(text)
end
window = 10000;