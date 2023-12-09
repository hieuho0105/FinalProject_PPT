function [nghiem,solanlap] = chiadoi(f,a,b,saiso)
    solanlap = 0;
    while abs(b-a) >= saiso
        nghiem = (a+b)/2;
        if f(nghiem)*f(a)<0
            b = nghiem;
        else
            a = nghiem;
        end
        solanlap = solanlap+1;
    end
end