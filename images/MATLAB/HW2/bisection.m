function c= bisection(f,interval,es)
    a = interval(1);
    b = interval(2);
    if f(a)*f(b) >= 0
        error('Use a bracketing interval')
    end
        c = mean([a,b]);
    ea = 1;
        while ea > es
                if f(a)*f(c) < 0
                    b = c;
            else
                    a = c;
            end
                c = mean([a,b]);
        ea = abs(c-b);
    end
end