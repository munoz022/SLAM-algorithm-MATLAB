function B=fremovezeros(A)
%Function that eliminates the componentes with certain val and keeps the
%rest and their order
B = A(any(A ~= 0, 2), :);

