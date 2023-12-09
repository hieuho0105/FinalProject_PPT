function [nghiem,solanlap] = tieptuyen(f,a,b,saiso)
     syms x;
     fd1 = str2func(['@(x)' char(diff(f(x)))]); % đạo hàm cấp 1 của f(x)
     fd2 = str2func(['@(x)' char(diff(fd1(x)))]); %đạo hàm cấp 2 của f(x)
     x0 = a;
     solanlap = 0;
     while f(x0) * fd2(x0) < 0
         solanlap = solanlap + 1;
         x0 = (x0 + b)/2;
     end
     while 1
         solanlap = solanlap + 1;
         x1 = x0 - f(x0)/fd1(x0);
         if abs(x1 - x0) < saiso
            break
         end
         x0 = x1;
     end
     nghiem = x1;
end