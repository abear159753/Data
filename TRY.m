clear;clc;

load('InData_All_2025_310.mat')
%save("InData_All_2025_310.mat","InData_310")

[H, L] = size(InData_310);
Bingo =zeros(H,5);
addBingo_3_4 = [];

for i = H:H
    for j = 1:H-1
        if i ~= j

            [tf, loc] = ismember(InData_310(i,:), InData_310(j,:));

            if sum(tf) == 1
                Bingo(i,1)  = Bingo(i,1) +1;
            elseif sum(tf) == 2
                Bingo(i,2)  = Bingo(i,2) +1;
            elseif sum(tf) == 3
                Bingo(i,3)  = Bingo(i,3) +1;
                %%addBingo_3_4 = [addBingo_3_4; InData_310(j,:)];
            elseif sum(tf) == 4
                Bingo(i,4)  = Bingo(i,4) +1;
                addBingo_3_4 = [addBingo_3_4; InData_310(j,:)];
            elseif sum(tf) == 5
                Bingo(i,5)  = Bingo(i,5) +1;
                %%addBingo_3_4 = [addBingo_3_4; InData_310(j,:)];
            end

        end
    end
end