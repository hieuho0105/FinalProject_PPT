function y = DaoHamTien(f, x0, h, ss)
    if ss == "O(h)"
        y = (f(x0+h)-f(x0))/h;
    elseif ss =="O(h^2)"
        y = (-f(x0+2*h)+4*f(x0+h)-3*f(x0))/(2*h);
    end
end