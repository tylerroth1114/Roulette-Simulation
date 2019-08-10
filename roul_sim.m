%Can we win Roulette?!


function [balance] =  roul_sim(N,balance,bet_start,maxbid)

%N = 500;
spins = round(random('unif',1,38,[1,N]));
%19,20 are green  -> 46.37
%21-38 are red  -> 46.37
%1-18 are black  -> 7.26

%bet_start = 1;
ogbet_start = bet_start;
%balance = 999;
balance_arr = [];
%Bet on Black and never go back

for x = [1:N]
    if balance > 0
        if spins(x) < 19
            balance = bet_start + balance;
            bet_start = ogbet_start;
            balance_arr(x) = balance;
        else
            balance = balance - bet_start;
            bet_start = bet_start*2;
            %Max bet = 50
            if bet_start > maxbid
                bet_start = maxbid;
            end
            
            balance_arr(x) = balance;
        end
    else
        balance = 0;
    end

end



% plot(balance_arr,'Linewidth',2)
% title('Roulette Doubling Strat')
% ylabel('Balance')
% xlabel('Spin')

end











