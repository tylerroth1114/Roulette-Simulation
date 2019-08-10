%Monte Carlo for Roulette
close all; clear all;

N_sim = 10000;
%inputs
N = 500;
balance = 1000;
bet_start = 1;
maxbid = 500;


result=[];

for x = [1:N_sim]
    result(x) = roul_sim(N,balance,bet_start,maxbid);
end


hist(result,500)




