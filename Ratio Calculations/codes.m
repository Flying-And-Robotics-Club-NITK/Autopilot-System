
%this was just to test the function
rrho = [0.01:0.01:1.95];
for i = 1:length(rrho)
    g = rrho(i);
    [f1d rd qd epd nzd nyd] = fixedvalues(g);
    fin(i) = f1d;
   end
