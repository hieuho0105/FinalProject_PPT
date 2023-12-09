function result = Lagrange_dt_ns(xa, ya)
    syms x;
    n = length(xa);
    sum = 0;
    for i = 1:n
        product = ya(i);
        for j = 1:n
            if i ~= j
                product = product * (x - xa(j)) / (xa(i) - xa(j));
            end
        end
        sum = sum + product;
    end
    result = char(simplify(sum));
end