%Filename:     tut_opt_fixed_recourse_thread.m
%Description:  tut_opt_recourse with fixed first stage
%
%Modification History:
%======================================================================
%Author          Date        Ver   Remarks
%======================================================================
%william         2019-02-26  1.0   Creation
%======================================================================

tut_opt_recourse_test; 

Aeq = [q_alpha, q_beta_w1, q_gamma_w1,         0,          0; 
       q_alpha,         0,          0, q_beta_w2, q_gamma_w2;
       1, 0, 0, 0, 0];
              
fixed_first_stage = 18;
beq               = [q_b_w1; q_b_w2;
                      fixed_first_stage];
x_fixed_18        = intlinprog(f,intcon,A,b,Aeq,beq,lb,ub);
objective_18      = x_fixed_18'*f;

fixed_first_stage = 19;
beq               = [q_b_w1; q_b_w2;
                      fixed_first_stage];
x_fixed_19        = intlinprog(f,intcon,A,b,Aeq,beq,lb,ub);
objective_19      = x_fixed_19'*f;

fixed_first_stage = 20;
beq               = [q_b_w1; q_b_w2;
                      fixed_first_stage];
x_fixed_20        = intlinprog(f,intcon,A,b,Aeq,beq,lb,ub);
objective_20      = x_fixed_20'*f;

fixed_first_stage = 21;
beq               = [q_b_w1; q_b_w2;
                      fixed_first_stage];
x_fixed_21        = intlinprog(f,intcon,A,b,Aeq,beq,lb,ub);
objective_21      = x_fixed_21'*f;

fixed_first_stage = 22;
beq               = [q_b_w1; q_b_w2;
                      fixed_first_stage];
x_fixed_22        = intlinprog(f,intcon,A,b,Aeq,beq,lb,ub);
objective_22      = x_fixed_22'*f;

%Detailed MILP
%f1_fixed_stage = [f_alpha, f_beta_w1, f_gamma_w1, 0, 0];
%f2_fixed_stage = [f_alpha, 0, 0, f_beta_w2, f_gamma_w2];
%x1_fixed_stage = intlinprog(f1_fixed_stage,intcon,A(1,:),b(1,:),[Aeq(1,:); Aeq(3,:)],[beq(1,:); beq(3,:)],lb,ub);
%x2_fixed_stage = intlinprog(f2_fixed_stage,intcon,A(2,:),b(2,:),[Aeq(2,:); Aeq(3,:)],[beq(2,:); beq(3,:)],lb,ub);

