%Can we win Roulette?!


function roul_sim

N = 50;
spins = round(random('unif',1,38,[1,N]));
%19,20 are green  -> 46.37
%21-38 are red  -> 46.37
%1-18 are black  -> 7.26

bet_start = 1
balance = 100
balance_arr = [];
%Bet on Black and never go back

for x = [1:N]
    if spins(x) < 19
        balance = bet_start*2 + balance;
        bet_start = 1
        balance_arr(x) = balance;
    else
        balance = balance - bet_start;
        bet_start = bet_start*2
        balance_arr(x) = balance;
    end

end



% plot(balance_arr,'Linewidth',2)
% title('Roulette Doubling Strat')
% ylabel('Balance')
% xlabel('Spin')


end











