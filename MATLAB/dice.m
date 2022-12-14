function [tot, distrib] = dice(N,iter,s)
% DICE(N,iter,s) simulates rolling N s-sided di, iter times and returns the total of the
% roll(s), the roll distributions, and distribution graphs
    if nargin == 1
        s = 6;
        iter = 1;
    end
    if nargin == 2
        s = 6;
    end
    % chooses random number between 1 and s
    di = randi([1 s],[iter N]);
    distrib = di;
    tot = sum(di,2);
    if s == 6
        visual(di)
    end
    % graph the individual roles and the total roles
    figure()
    histogram(distrib(:),s)
    xlabel("Dice Rolls")
    if iter>1
       figure()
        histogram(tot,N*s-N+1)
        xlabel("Total Roll") 

    end
end

function visual(rolls)
% draws dice images based on rolls of DICE
    s = size(rolls);
    i=1;
    hold on
    for j = 1:s(1)
        for k = 1:s(2)
            switch rolls(j,k)
                case 1
                    subplot(s(1),s(2),i);
                    imshow("dice/one.png")
                case 2
                    subplot(s(1),s(2),i);
                    imshow("dice/two.png")
                case 3
                    subplot(s(1),s(2),i);
                    imshow("dice/three.png")
                case 4
                    subplot(s(1),s(2),i);
                    imshow("dice/four.png")
                case 5
                    subplot(s(1),s(2),i);
                    imshow("dice/five.png")
                case 6
                    subplot(s(1),s(2),i);
                    imshow("dice/six.png")
            end
            i=i+1;
        end
    end
    hold off
end