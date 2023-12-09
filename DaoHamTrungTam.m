function y = DaoHamTrungTam(f, x0, h, ss)
    if ss == "O(h)"
        y = (f(x0+h)-f(x0-h))/(2*h);
    elseif ss == "O(h^2)"
        y = (-f(x0+2*h)+8*f(x0+h)-8*f(x0-h)+f(x0-2*h))/(12*h);
    end
end
