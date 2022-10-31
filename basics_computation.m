# Week 2, computing on data

a = [1 2; 3 4; 5 6]
b = [11 12; 13 14; 15 16]
c = [5 6 7; 8 9 10]

a * c
a .* b # element wise mult
a .^ 2 # elementwise squaring of a

v = [1; 2; 3]
1 ./ v # elementwise reciprical
log(v) # all of the following are elementwise
exp(v)
abs(v)

v + ones(length(v), 1) # add 1 to each value in v

a' # transpose of a

val = max(v)
[val, ind] = max(v) # returns value and index of max

v < 3 # elementwise comparison

find(v < 3) # index of values less than 3

A = magic(3) #magic square, all rows, columns and diagonals add to the same thing

[r, c] = find(A >= 7)

sum(v)
prod(v)
floor(v) # rounds down
ceil(v)

d = rand(3)
e = rand(3)
max(d, e) # takes max elementwise of matrices

max(A, [], 1) # columnwise max of A
max(A, [], 2) # max of rows
max(A) # max of columnwise
max(max(A)) # max of A
max(A(:)) # also max of A

A = magic(9)

sum(A, 1)
sum(A, 2)
sum(sum(A .* eye(9))) # sum of diag
sum(sum(A .* flipud(eye(9)))) # sum of other diag

A = magic(3)
pinv(A) # pseudoinverse of A
A * pinv(A)
