function val = MyDet(A)
Size = size(A);
Size = Size(1);
Matrix = A;
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
val = 1;
for i = 1:Size
    val = val * Matrix(i,i);
end
end