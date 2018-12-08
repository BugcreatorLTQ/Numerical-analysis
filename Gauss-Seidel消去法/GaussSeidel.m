function val = GaussSeidel(A, b, x0)
D = diag(diag(A));
L = -tril(A,-1);
U = -triu(A,1);
B = (D-L)\U;
f = (D-L)\b;
val = x0;
eps = 1e-6;
count = 0;
while true
    count = count + 1;
    temp = val;
    val = B*val + f;
    if norm(val-temp) < eps
        disp('find!');
        loop_count = count
        return;
    end
    if count > 100
        disp('not find!');
        val = -ones(size(b));
        return;
    end
end
end