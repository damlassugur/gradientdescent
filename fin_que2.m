
 syms x y z
 
 f = (x)^2+(y-x)^2+(z-y)^2+(1-z)^2;% = 0.5*[x,y,z].'*Q*[x;y;z]+b*[x;y;z]+c;
 Q = [4,-2,0;
     -2,4,-2;
     0,-2,4];
 b = [0;0;-2];
 c = 1;
 
 x0 = -Q\b    % f = 0.5*x.'*Q*x+b*x+c; grad(f) = Q*x+b=0 --> x0=Q^(-1)*b;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% constant alpha %%%%%
 v0 = [0.2,0.4,0.3].';
 % 2/eigs(Q,1)  % for constant alpha gradient descent method: 0 < alpha < 2/eigs(Q,1)
 alpha = 0.25;
 [fun,grad,hess]=quadr_class(Q,b,c,v0);
 v1 = v0 - alpha*grad;
 [fun,grad,hess]=quadr_class(Q,b,c,v1);
 v2 = v1 - alpha*grad;
 [fun,grad,hess]=quadr_class(Q,b,c,v2);
 v3 = v2 - alpha*grad; 
 [fun,grad,hess]=quadr_class(Q,b,c,v3);
 v4 = v3 - alpha*grad;  
 [fun,grad,hess]=quadr_class(Q,b,c,v4);
 v5 = v4 - alpha*grad;  
 [fun,grad,hess]=quadr_class(Q,b,c,v5);
 v6 = v5 - alpha*grad;  
 [fun,grad,hess]=quadr_class(Q,b,c,v6);
 v7 = v6 - alpha*grad   
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 

 

 v0 = [0.2,0.4,0.3].';
 [fun,grad,hess]=quadr_class(Q,b,c,v0);
 alpha = (grad.'*grad)/(grad.'*Q*grad);
 v1 = v0 - alpha*grad
 [fun,grad,hess]=quadr_class(Q,b,c,v1);
 alpha = (grad.'*grad)/(grad.'*Q*grad);
 v2 = v1 - alpha*grad
 [fun,grad,hess]=quadr_class(Q,b,c,v2);
 alpha = (grad.'*grad)/(grad.'*Q*grad);
 v3 = v2 - alpha*grad; 
 [fun,grad,hess]=quadr_class(Q,b,c,v3);
 alpha = (grad.'*grad)/(grad.'*Q*grad);
 v4 = v3 - alpha*grad; 
 [fun,grad,hess]=quadr_class(Q,b,c,v4);
 alpha = (grad.'*grad)/(grad.'*Q*grad);
 v5 = v4 - alpha*grad;  
 [fun,grad,hess]=quadr_class(Q,b,c,v5);
 v6 = v5 - alpha*grad;  
 [fun,grad,hess]=quadr_class(Q,b,c,v6);
 alpha = (grad.'*grad)/(grad.'*Q*grad);
 v7 = v6 - alpha*grad;   
 [fun,grad,hess]=quadr_class(Q,b,c,v7);
 alpha = (grad.'*grad)/(grad.'*Q*grad);
 v8 = v7 - alpha*grad  
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Newton's method
  % d = H(x0)^(-1)*gradf(x0)
  % gradf(x0) = Q*x0+b;
  % H(x0) = D(gradf(x0)) = D(Q*x0+b) = Q
  % d = Q^(-1)*gradf(x0)
  % x1 = x0-Q^(-1)*gradf(x0)
  % x1 = x0-Q^(-1)*[Q*x0+b]
  % x1 = x0-Q^(-1)*Q*x0+Q^(-1)*b = x0 - x0 + Q^(-1)*b = Q^(-1)*b-->min  
  
 v0 = [0.2,0.4,0.3].';
 [fun,grad,hess]=quadr_class(Q,b,c,v0);
 v1 = v0 - hess\grad  
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%