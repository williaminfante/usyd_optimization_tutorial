%Filename:     tut_opt_recourse_test.m
%Description:
%
%Modification History:
%======================================================================
%Author          Date        Ver   Remarks
%======================================================================
%william         2019-02-26  1.0   Creation
%======================================================================

tut_opt_params; 

%Objective w-> omega 
f = [   f_alpha; 
        varphi_1*f_beta_w1; 
        varphi_1*f_gamma_w1; 
        varphi_2*f_beta_w2; 
        varphi_2*f_gamma_w2  ];

%Constraints
A = [n_alpha, n_beta_w1, n_gamma_w1,         0,          0; 
     n_alpha,         0,          0, n_beta_w2, n_gamma_w2;]; 
b = [n_b_w1; n_b_w2];

Aeq = [q_alpha, q_beta_w1, q_gamma_w1,         0,          0; 
       q_alpha,         0,          0, q_beta_w2, q_gamma_w2;]; 
beq = [q_b_w1; q_b_w2;];

%Boundaries 
lb = [      0;      0;      0;      0;      0;]; 
ub = [50;50;50;50;50;];

%Integer Condition
intcon = [1,2,3,4,5];

%MILP
x = intlinprog(f,intcon,A,b,Aeq,beq,lb,ub);
f1 = [f_alpha, f_beta_w1, f_gamma_w1, 0, 0];
f2 = [f_alpha, 0, 0, f_beta_w2, f_gamma_w2];
x1 = intlinprog(f1,intcon,A(1,:),b(1,:),Aeq(1,:),beq(1,:),lb,ub);
x2 = intlinprog(f2,intcon,A(2,:),b(2,:),Aeq(2,:),beq(2,:),lb,ub);