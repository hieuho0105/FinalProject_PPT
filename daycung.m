function [nghiem,solanlap] = daycung(f,a,b,saiso)
    solanlap = 0;
    x0 = a;
    while (1)
        nghiem = (a*f(b)-b*f(a))/(f(b)-f(a));
        if abs(nghiem-x0) < saiso
            break;
        elseif f(nghiem)*f(a) < 0
            b = nghiem;
        else
            a = nghiem;
        end
        x0 = nghiem;
        solanlap = solanlap+1;
    end
    nghiem = double(nghiem);
end