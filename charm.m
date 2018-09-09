
if pot > 0
    rom = randi([0 pot]);
    pot = pot - rom;
    eyes = eyes +1;
    text = ['wE hAve TaKeN ' num2str(rom) ' YoU hAvE bEeN gRaNtEd An EyE'];
    disp(text)
else
    text = ['sOrRy, ThE sPiRiTs NeEd Ca$h'];
    disp(text)
end