function [a1, a0, r2] = HoiQuyGiaoDien(mangX, mangY, giaTriX)
    n = length(mangX);
    sumX = 0;
    sumY = 0;
    sumXY = 0;
    sumX2 = 0;
    st = 0;
    sr = 0;
    %sumX = sum(mangX);
    %sumXY = sum(mangX.*mangY);
    for i = 1:n
        sumX = sumX + mangX(i);
        sumY = sumY + mangY(i);
        sumXY = sumXY + mangX(i)*mangY(i);
        sumX2 = sumX2 + mangX(i)*mangX(i);
    end
    xm = sumX/n;
    ym = sumY/n;
    a1 = (n*sumXY- sumX*sumY)/(n*sumX2- sumX*sumX);
    a0 = ym - a1*xm;
    for i = 1:n
        st = st +(mangY(i)-ym)^2;
        sr = sr +(mangY(i)-a1*mangX(i)-a0)^2;
    end
    r2 = (st-sr)/st;
end