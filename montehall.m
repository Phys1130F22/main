function chance = montehall(N,flag)
%flag is for switching
truth = 3*ones(N,1)%randi([1 3],N,1)
choice = randi([1 3],N,1)
choice2 = zeros(N,1)
for k=1:length(flag)
if flag
    choice2(choice==3)=1
    choice2(choice==1)=3
    choice2(choice==2)=3
    win = sum(truth==choice2)
else
    win = sum(truth==choice)
end
chance = 100*win/N

end