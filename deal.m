% first declare 'pot' in command window (e.g. 'pot = 1000')
% change the betting amount (must be less than pot)
% yourhand is output
% Run hit.m for a hit
% Run ddown.m to double down
% Run stand.m to stand
% Run ace.m to change Ace from 1 to 11

disp([' ';' '])
plays = plays +1;
bet2 = 0;
if length(shuff)<3
    run cards.m
end
if (plays-time)>window
    if debt <0
       eyes = eyes -1;
       time = plays;
       if eyes > -1
          text = ['Did not pay up, punched out an eye'];
          disp(text)
          disp([' '])
       else
          text = ['did not pay up, dead now'];
          disp(text)
          disp([' '])
       end
    end
end

if bet>0
    realbet = bet;
    if bet > pot

        if eyes>0
            text = ['Not enough money. Change your bet or take out a loan.'];
            disp(text)
            disp([' '])
        else
            debt
            text = ['casino took you out after ' num2str(plays) ' hands'];
            disp(text)
            disp([' '])
        end
    else





        hand = shuff(1:2);
        shuff(1:2) = [];

        isace = sum(hand==1);
        isten = sum(hand==10);
        handt = sum(hand);



        if eyes>0
            if eyes>2
                yourhand = hand(1:2);
            else
                yourhand = hand(1:eyes);
            end
        elseif eyes==0
            yourhand = [];
        end

                if isace>0
                    if isten>0
                        yourhand = handt + 10;
                        pot = pot + (bet*2.5);
                        disp(['You: ' num2str(yourhand)])
                        text = ['Blackjack! You won ' num2str(realbet*2.5) '! You have ' num2str(pot) ' remaining.'];
                        disp(text)
                        casino = casino - (realbet*2.5);
                        disp([' ';' '])

                    else
                        disp(['You: ' num2str(yourhand)])
                        disp([' '])
                    end
                else
                    disp(['You: ' num2str(yourhand)])
                    disp([' '])
                end

        if eyes>2
           text = ['nExT cArD(s): ' num2str(shuff(1:eyes-2))];
           disp(text)
           disp([' '])
        end
    end
else
    disp(['BET MUST BE POSITIVE'])
end
    
debt = debt - (interest*amount);

if casino<1
    if debt<0
        casino = pot;
        pot = 0;
        disp(['Think you can pull that one eh? Think again.'])
    else
       text = ['congratulations - you have beaten the casino!'];
       disp(text)
       disp([' '])
    end
end