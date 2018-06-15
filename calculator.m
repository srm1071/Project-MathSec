function [c] = calculator(R1,R2,R3)
    %for R1
    if strcmp(R1,'One')
        R1='1';
    elseif strcmp(R1,'Two')
        R1='2';
    elseif strcmp(R1,'Three')
        R1='3';
    elseif strcmp(R1,'Four')
        R1='4';
    elseif strcmp(R1,'Five')
        R1='5';
    elseif strcmp(R1,'Six')
        R1='6';
    elseif strcmp(R1,'Seven')
        R1='7';
    elseif strcmp(R1,'Eight')
        R1='8';
    elseif strcmp(R1,'Nine')
        R1='9';
    elseif strcmp(R1,'Ten')
        R1='10';
    end
%     %for R2
    if strcmp(R2,'One')
        R2='1';
    elseif strcmp(R2,'Two')
        R2='2';
    elseif strcmp(R2,'Three')
        R2='3';
    elseif strcmp(R2,'Four')
        R2='4';
    elseif strcmp(R2,'Five')
        R2='5';
    elseif strcmp(R2,'Six')
        R2='6';
    elseif strcmp(R2,'Seven')
        R2='7';
    elseif strcmp(R2,'Eight')
        R2='8';
    elseif strcmp(R2,'Nine')
        R2='9';
    elseif strcmp(R2,'Ten')
        R2='10';
    end 

    if R3 == '+'
        c = str2double(R1)+str2double(R2);
    elseif R3 == 'x'
        c = str2double(R1)*str2double(R2);
    end
end