  
yourhand = handt;
disp(['You: ' num2str(yourhand)])
if handt> 21
   text = ['BUST! You lost ' num2str(realbet + bet2) '. You have ' num2str(pot) ' remaining.'];
   disp(text)
   casino = casino + realbet + bet2;
   disp([' ';' '])
   
else
if length(shuff)<2
    run cards.m
end
    
    dealer = shuff(1:2);
    shuff(1:2)= [];
    
   
     
    isace = sum(dealer==1);
    isten = sum(dealer==10);
    dealert = sum(dealer);
    if isace>0
        if isten>0
            dealert = dealert +10;
        end
    end

    if dealert > handt
       dealershand = dealert;
       disp(['Dealer: ' num2str(dealert)])
       pot = pot - realbet - bet2;
       text = ['You lost ' num2str(realbet + bet2) '. You have ' num2str(pot) ' remaining.'];
       disp(text)
       casino = casino + realbet + bet2;
       disp([' ';' '])
        
    else
        if length(shuff)<3
            run cards.m
        end

        while dealert <= handt
            if dealert < handt
                dealert = dealert + shuff(1);
                if shuff(1) == 1
                    if 9 < dealert <= 11
                        dealert = dealert+ 10;
                    end
                end
                shuff(1) = [];
            elseif dealert == handt
                if dealert <= 14
                    dealert = dealert + shuff(1);
                    shuff(1) = [];
                elseif dealert > 14
                    if rand(1) > 0.7
                        dealert = dealert + shuff(1);
                        shuff(1) = [];
                    else
                        break
                    end
                end
            end
 
            if dealert>= 21
                break
            end
        end

        
        

        if handt > dealert
           dealershand = dealert;
           disp(['Dealer: ' num2str(dealert)])
           pot = pot + realbet + bet2;
           text = ['You won ' num2str(realbet + bet2) '! You have ' num2str(pot) ' remaining.'];
           disp(text)
           casino = casino - realbet - bet2;
           disp([' ';' '])
           
        elseif handt == dealert
            dealershand = dealert;
            disp(['Dealer: ' num2str(dealert)])
            text = ['Push. You still have ' num2str(pot) '.'];
            disp(text)
            disp([' ';' '])

        elseif dealert<= 21
            dealershand = dealert;
            disp(['Dealer: ' num2str(dealert)])
            pot = pot - realbet - bet2;
            text = ['You lost ' num2str(realbet + bet2) '. You have ' num2str(pot) ' remaining.'];
            disp(text)
            casino = casino + realbet + bet2;
            disp([' ';' '])
            
        elseif dealert>21
            dealershand = dealert;
            disp(['Dealer: ' num2str(dealert)])
            pot = pot + realbet + bet2;
            text = ['You won ' num2str(realbet + bet2) '! You have ' num2str(pot) ' remaining.'];
            disp(text)
            casino = casino - realbet - bet2;
            disp([' ';' '])
            
        end
    end
end

if casino<0
    text = ['Congratulations - you have beaten the casino!'];
    disp(text)
    disp([' ';' '])
end

hand = [];
yourhand = [];
handt = 0;
dealert= 0;

    
        