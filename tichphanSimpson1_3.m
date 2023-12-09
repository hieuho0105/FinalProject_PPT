function y = tichphanSimpson1_3(fx,a,b,N,dx)
    h = (b-a)/N;
    y = fx(a)+ fx(b);
    for i = 1:(N-1)
        if mod(i,2) == 0
            y = y+ 2*fx(a+i*h);
        else
            y = y+ 4*fx(a+i*h);
        end
    end
    y = y*(dx*h/3);
end