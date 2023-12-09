function [nghiem,solanlap] = lap(fp,a,b,saiso)
    solanlap = 0;
    while (solanlap<20000)
        nghiem = fp(a);
        if abs(nghiem-a) < saiso
            break;
        end
        a = nghiem;
        solanlap = solanlap+1;
    end
    nghiem = double(nghiem);
end