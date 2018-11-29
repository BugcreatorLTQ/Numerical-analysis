function val = MySolve(A, b)
val = ones(size(b));
Matrix = [A b];
Size = size(A);
Size = Size(1);
for i = 1:Size
    if Matrix(i,i) == 0
        %TODO:
        for j = i+1:Size
            if Matrix(j,i) ~= 0
                index = j;
                temp = Matrix(i,:);
                Matrix(i,:) = Matrix(index,:);
                Matrix(index,:) = temp;
                break;
            end
        end
    end
    for j = i+1:Size
        Matrix(j,:) = Matrix(j,:) - (Matrix(j,i)/Matrix(i,i))*Matrix(i,:);
        %disp(Matrix);
    end
end
A = Matrix(:,1:end-1);
b = Matrix(:,end);

for i = Size:-1:1
    val(i) = b(i)/A(i,i);
    b = b - val(i)*A(:,i);
    A(:,i) = 0;
end

end