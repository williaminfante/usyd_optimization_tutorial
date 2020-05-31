%Filename:     tut_opt_multiobjective.m
%Description:
%
%Modification History:
%======================================================================
%Author          Date        Ver   Remarks
%======================================================================
%william         2019-02-26  1.0   Creation
%======================================================================

f1 =    [ 3;  1]; 
f2 =    [-1; -2];

A  =    [ 0, 1;
          3,-1;
         -1, 0]; 
b =     [ 3; 6; 0];

kappa_set   = 0:0.1:1; 
x_set       = zeros(size(kappa_set, 2), 2); 
y_set       = zeros(size(kappa_set, 2), 1); 
x           = zeros(2,1);

for kappa_index = 1:size(kappa_set, 2)    
    kappa   = kappa_set(kappa_index);
    mult_f  = kappa*f1 + (1- kappa)*f2; 
    x       = linprog(mult_f, A, b); 
    x_set(kappa_index,:)    = x;
    y_set(kappa_index)      = x'*mult_f;    
end


