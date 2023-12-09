function y = tichphanSimpson3_8(fx,a,b,N,dx)
    h = (b-a)/N;
    y = fx(a)+ fx(b);
    for i = 1:(N-1)
        if mod(i,3)==0
            y = y+ 2*fx(a+i*h);
        else
            y = y+ 3*fx(a+i*h);
        end
    end
    y = y*(dx*h*(3/8));
end