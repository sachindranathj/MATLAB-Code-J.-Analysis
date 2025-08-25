%% 
% *This file contains the MATLAB code and the output of the examples given in 
% Remark 3.3 and Examples 4.1, 4.2, 4.3 from the manuscript.*
%% 
% *We use spectral norm for the matrices involved in Remark 3.3.*
%% |*Remark 3.3 (1).*|
% The following example suggests that we cannot determine which method gives 
% a better bound between Theorems 2.2 and 2.5 and Theorems 2.2 and  2.11. Let 
% $$T(\lambda)=-B_0+I\lambda+\frac{B_1}{\lambda-a}$$ be a $$2 \times 2$$ rational 
% matrix.
%% 
% First we compare bounds given in Theorems 2.2 and 2.5. 
% 
% If $$a = 0.1$, $$B_0 = \pmatrix{0 & 0 \cr  1 & 0} $ and $$B_1 = \pmatrix{1 
% & 0 \cr0 & 0}$$

tic
a= 0.1;
B0 = [0 0; 1 0];
B1 = [1 0; 0 0];
Z=[0 0; 0 0];
E=[Z -eye(2); B1 B0];
u1=norm(E)+abs(a);
r=[1 -(abs(a)+norm(B0)) (abs(a)*norm(B0)-norm(B1))];
v1=max(roots(r));
%% 
% If $$a = 1$, $$B_0 = \pmatrix{0 & 0 \cr  1 & 0} $ and $$B_1 = \pmatrix{1 & 
% 0 \cr0 & 0}$$

a= 1;
u2=norm(E)+abs(a);
r=[1 -(abs(a)+norm(B0)) (abs(a)*norm(B0)-norm(B1))];
v2=max(roots(r));
%% 
% 

for j=1
fprintf('If a=0.1 the bound due to Theorem 2.2 is  %.2f  \n',u1)
fprintf('and the bound due to Theorem 2.5 is  %.2f  \n',v1)
fprintf('***');
fprintf('If a=1 the bound due to Theorem 2.2 is  %.2f  \n',u2)
fprintf('and the bound due to Theorem 2.5 is  %.2f  \n',v2)
end
%% 
% Note that if $a=0.1$, the bound due to Theorem 2.2 is better. But when $a 
% = 1$, the bound due to Theorem 2.5 is better.
% 
% 
% 
% Now we compare bounds given in Theorems 2.2 and 2.11. 

a=0.1;
w1=(abs(a)+norm(B0)+sqrt((abs(a)-norm(B0))^2+4*norm(B1)))/2;
%% 
% 

a=1;
w2=(abs(a)+norm(B0)+sqrt((abs(a)-norm(B0))^2+4*norm(B1)))/2;
%% 
% 

for j=1
fprintf('If a=0.1 the bound due to Theorem 2.2 is  %.2f  \n',u1)
fprintf('and the bound due to Theorem 2.11 is  %.2f  \n',w1)
fprintf('***');
fprintf('If a=1 the bound due to Theorem 2.2 is  %.2f  \n',u2)
fprintf('and the bound due to Theorem 2.11 is  %.2f  \n',w2)
end
%% 
% Note that if $a=0.1$, the bound due to Theorem 2.2 is better. But when $a 
% = 1$, the bound due to Theorem 2.11 is better.
%% 
% 
%% |*Remark 3.3 (2).*|
% We cannot conclude which theorem gives a better bound between Theorems 2.3 
% and 2.9. Consider $$T(\lambda)=-B_0+I\lambda+\frac{B_1}{\lambda-a}$$,  where 
% $$B_0 = B_1 = I$, $the  $$2 \times 2$$ identity matrix.
%% 
% First we find the bound using Theorem 2.9, for $$a=1$ $and $a=i$.

a= 1;
B0 = eye(2);
B1 = eye(2);
u1 = [1 -norm(B0+a*eye(2)) -norm(a*B0+B1)];
max(roots(u1));
%% 
% 

a= i;
u2 = [1 -norm(B0+a*eye(2)) -norm(a*B0+B1)];
max(roots(u2));
%% 
% Note that the bound due to Theorem 2.3 is $\sqrt{\frac{(2m+1)+\sqrt{4m+1}}{2}} 
% + |a|$. Since $$m=1$$ and $$a=1$ or $a=i$$ the bound is 2.618 in both the cases. 

for j=1
fprintf('If a=1 the bound due to Theorem 2.9 is %.2f \n',max(roots(u1)))
fprintf('and the bound due to Theorem 2.3 is  %.2f  \n',2.618)
fprintf('***')
fprintf('If a=i the bound due to Theorem 2.9 is %.2f \n',max(roots(u2)))
fprintf('and the bound due to Theorem 2.3 is  %.2f  \n',2.618)
end
%% 
% Note that if $a=1$ the bound due to Theorem 2.3 is better. But when $a=i$ 
% the bound due to Theorem 2.9 is better.
% 
%% |*Remark 3.3 (3).*|
% Again the same phenomenon happens with Theorems 2.5 and 2.9. Let $$T(\lambda)=-B_0+I\lambda+\frac{B_1}{\lambda-a}$$ 
% , where $$B_0 = B_1 = I$, $the  $$2 \times 2$$ identity matrix.
%% 
% If $$a = -1.5$

a= -1.5;
B0 = eye(2);
B1 = eye(2);
u1 = [1 -norm(B0+a*eye(2)) -norm(a*B0+B1)];
max(roots(u1));
v1 = [1 -(abs(a)+1) abs(a)-1];
max(roots(v1));
%% 
% If $$a = 1.5$

a= 1.5;
u2 = [1 -norm(B0+a*eye(2)) -norm(a*B0+B1)];
max(roots(u2));
v2 = [1 -(abs(a)+1) abs(a)-1];
max(roots(v2));
%% 
% 


for j=1
fprintf('If a=-1.5 the bound due to Theorem 2.9 is  %.2f  \n',max(roots(u1)))
fprintf('and the bound due to Theorem 2.5 is  %.2f  \n',max(roots(v1)))
fprintf('***');
fprintf('If a=1.5 the bound due to Theorem 2.9 is  %.2f  \n',max(roots(u2)))
fprintf('and the bound due to Theorem 2.5 is  %.2f  \n',max(roots(v2)))
end
%% 
% Note that if $a=-1.5$ the bound due to Theorem 2.9 is better. But when $a 
% = 1.5$the  bound due to Theorem 2.5 is better.
% 
%% |*Remark 3.3 (4).*|
% The bounds obtained in Theorems 2.9 and 2.11 are also not comparable. Let 
% $$T(\lambda)=-B_0+I\lambda+\frac{B_1}{\lambda-a}$$ , where $$B_0 = B_1 = I$, 
% $the  $$2 \times 2$$ identity matrix.
%% 
% If $$a = 1$$

a= 1;
B0 = eye(2);
B1 = eye(2);
u1 = [1 -norm(B0+a*eye(2)) -norm(a*B0+B1)];
max(roots(u1));
w1 = (abs(a)+norm(B0)+sqrt((abs(a)-norm(B0))^2+4*norm(B1)))/2;
%% 
% If $$a = -0.5$$

a= -0.5;
u2 = [1 -norm(B0+a*eye(2)) -norm(a*B0+B1)];
max(roots(u2));
w2 = (abs(a)+norm(B0)+sqrt((abs(a)-norm(B0))^2+4*norm(B1)))/2;
%% 
% 


for j=1
fprintf('If a=1 the bound due to Theorem 2.9 is  %.2f  \n',max(roots(u1)))
fprintf('and the bound due to Theorem 2.11 is  %.2f  \n',w1)
fprintf('***');
fprintf('If a=-0.5 the bound due to Theorem 2.9 is  %.2f  \n',max(roots(u2)))
fprintf('and the bound due to Theorem 2.11 is  %.2f  \n',w2)
fprintf('***')
fprintf('***')
end
%% 
% Note that if $a=1$ the bound due to Theorem 2.11 is better. But when $a = 
% -0.5$ the  bound due to Theorem 2.9 is better.
%% 
% 
%% 
% *We now consider three different rational matrices and compare our results 
% with the bounds obtained in the refrences [4] and [17] of our manuscript. In 
% all examples we use the spectral norm for matrices involved.* *As pointed out 
% in the Remark 3.3, one cannot in general determine the best method. But it is 
% possible that for a particular example one of the methods might give a better 
% bound.*
%% |*Example 4.1 (Table 1).*|
% 
% 
% Let $$T(\lambda)=-B_0+I\lambda+\frac{B_1}{\lambda-0.1}$$, where $$B_0=\pmatrix{2 
% & -1 & 0  \cr -1 & 2 & -1 \cr 0 & -1 & 1}$ , $$B_1=\pmatrix{-1 & 0 & 1  \cr 
% 0 & -1 & 1 \cr -1 & 0 & 1}$ and $I$ is the identity matrix of size 3. In this 
% example, the bound obtained obtained using Theorem 3.3 from our manuscript gives 
% better bound

a= 0.1;
B0 = [2 -1 0; -1 2 -1; 0 -1 1];
B1 = [-1 0 1; 0 -1 1; -1 0 1];
Z=zeros(3);
E=[Z -eye(3); B1 B0];
D=[a*eye(3) -eye(3); B1 B0];
max(abs(eig(D)));
%% 
% 
% 
% *Bounds obtained from our results.*
% 
% Bound using Theorem 2.2

S1 = norm(E)+a;
%% 
% Bound using Theorem 2.4

S2 = (a+norm(B0)+sqrt((a-norm(B0))^2+4*norm(B1)))/2;
%% 
% Bound using Theorem 2.8

S3 = (norm(B0+a*eye(3))+sqrt((norm(B0+a*eye(3)))^2+4*norm(B1+a*B0)))/2;
%% 
% Bound using Theorem 2.11

S4= (a+norm(B0)+sqrt(((a-norm(B0))^2)+4*max(1, (norm(B1))^2)))/2;
%% 
% 
% 
% *Bounds obtained using results from [4]*
% 
% Bound using Theorem 3.9 (1)

S5 = max(1+a, norm(B0)+norm(B1));
%% 
% Bound using Theorem 3.9 (2)

S6 = max(a+norm(B1), 1+norm(B0));
%% 
% Bound using Theorem 3.9 (3)

S7 = (a+norm(B0)+ sqrt((a-norm(B0))^2+(1+norm(B1))^2))/2;
%% 
% Bound using Corollary 3.11

S8 = max(a, norm(B0))+ (1+norm(B0))/2;
%% 
% 
% 
% *Bounds obtained using various results given in [17].*
% 
% Bound using Theorem 3.2

M1=max(norm(B0+a*eye(3)), norm(B1+ a*B0));
roots([1 -(1+M1) 0 M1]);
max(roots([1 -(1+M1) 0 M1]));
S9 = max(1, max(roots([1 -(1+M1) 0 M1])));
%% 
% Bound using Corollary 3.2.1

M2 = max([norm(eye(3)+a*eye(3)+B0) norm(a*eye(3)+B0+a*B0+B1) norm(a*B0+B1)]);
roots([1 -(1+M2) 0 0 M2]);
max(roots([1 -(1+M2) 0 0 M2]));
S10 = max(1, max(roots([1 -(1+M2) 0 0 M2])));
%% 
% Bound using Theorem 3.3

S11 = 1+M1;
%% 
% Bound using Theorem 3.4

S12 = (1+norm(a*eye(3) + B0)+ sqrt((1-norm(a*eye(3) + B0))^2 +4*norm(B1+a*B1)))/2;
%% 
% Bound using Corollary 3.4.2

M3 =max(norm(a*eye(3)+B0+a*B0+B1), norm(a*B0+B1));
S13 =(1+norm(a*eye(3)+eye(3)+B0)+ sqrt((1-norm(a*eye(3)+eye(3)+B0))^2 +4*M3))/2;
%% 
% Bound using Corollary 3.4.4

M4=max(norm((B0+a*eye(3))*(a*B0+B1)), norm((B0+a*eye(3))^2-(a*B0+B1)));
S14 = (1+sqrt(1+4*M4))/2;
%% 
% Bound using Corollary 3.4.6

M5 = max(norm((a*eye(3)+eye(3)+B0)*(a*B0+B1)), norm(-((a*eye(3)+eye(3)+B0)*(a*eye(3)+B0))+(B1+a*B0)));
S15 = 1+sqrt(M5);
%% 
% Bound using Theorem 3.6

S16 =1+M1;
%% 
% 

for j=1
fprintf('The maximum of the moduli of eigenvalues is %.2f  \n',max(abs(eig(D))))
fprintf('The bound due to Theorem 2.2 is %.2f  \n',S1)
fprintf('The bound due to Theorem 2.4 (Theorem 3.8, [4]) is %.2f  \n',S2)
fprintf('The bound due to Theorem 2.8 is %.2f  \n',S3)
fprintf('The bound due to Theorem 2.11 is %.2f  \n',S4)
fprintf('***')
fprintf('The bound due to Theorem 3.9 (1) is %.2f  \n',S5)
fprintf('The bound due to Theorem 3.9 (2) is %.2f  \n',S6)
fprintf('The bound due to Theorem 3.9 (3) is %.2f  \n',S7)
fprintf('The bound due to Corollary 3.11 is %.2f  \n',S8)
fprintf('***')
fprintf('The bound due to Theorem 3.2 is %.2f  \n',S9)
fprintf('The bound due to Corollary 3.2.1 is %.2f  \n',S10)
fprintf('The bound due to Theorem 3.3 is %.2f  \n',S11)
fprintf('The bound due to Theorem 3.4 is %.2f  \n',S12)
fprintf('The bound due to Corollary 3.4.2 is %.2f  \n',S13)
fprintf('The bound due to Corollary 3.4.4 is %.2f  \n',S14)
fprintf('The bound due to Corollary 3.4.6 is %.2f  \n',S15)
fprintf('The bound due to Theorem 3.6 is %.2f  \n',S16)
fprintf('***')
fprintf('***')
end
%% 
% The calculation suggests that the bound using Theorem 2.2 is better for this 
% example.
%% 
% 
%% |*Example 4.2 (Table 2).*|
% 
% 
% In the following example we see that few of the bounds obtained from [4] coincide 
% with the bounds obtained from our manuscript. Let $$T(\lambda)=-B_0+I\lambda+\frac{B_1}{\lambda-\alpha}$$, 
% where $$B_0 = \pmatrix{1 & 0 & 0 \cr 0 & 1 & 0 \cr 0 & 0 & 2}$ , $$B_1 = \pmatrix{0 
% & 0 & 0 \cr 0 & 0 & 0 \cr 0 & 0 & -1}$ and $$\alpha = 2.$$

a= 2;
B0 = [1 0 0; 0 1 0; 0 0 2];
B1 = [0 0 0; 0 0 0; 0 0 -1];
Z=zeros(3);
E=[Z -eye(3); B1 B0];
D=[a*eye(3) -eye(3); B1 B0];
eig(D);
max(abs(eig(D)));
max(abs(eig(D)));
%% 
% *Bounds obtained from our results.*
% 
% Bound using Theorem 2.2

S1 = norm(E)+a;
%% 
% Bound using Theorem 2.4

S2 = (a+norm(B0)+sqrt((a-norm(B0))^2+4*norm(B1)))/2;
%% 
% Bound using Theorem 2.8

S3 = (norm(B0+a*eye(3))+sqrt((norm(B0+a*eye(3)))^2+4*norm(B1+a*B0)))/2;
%% 
% Bound using Theorem 2.11

S4= (a+norm(B0)+sqrt(((a-norm(B0))^2)+4*max(1, (norm(B1))^2)))/2;
%% 
% Bound using Theorem 2.7

l=roots([1 -(a+1/norm(inv(B0))) (a*(1/norm(inv(B0))))-norm(B1)]);
L=min(l);
%% 
% *Bounds obtained using results from [4]*
% 
% Bound using Theorem 3.9 (1)

S5 = max(1+a, norm(B0)+norm(B1));
%% 
% Bound using Theorem 3.9 (2)

S6 = max(a+norm(B1), 1+norm(B0));
%% 
% Bound using Theorem 3.9 (3)

S7 = (a+norm(B0)+ sqrt((a-norm(B0))^2+(1+norm(B1))^2))/2;
%% 
% Bound using Corollary 3.11

S8 = max(a, norm(B0))+ (1+norm(B0))/2;
%% 
% 
% 
% *Bounds obtained using various results given in [17].*
% 
% Bound using Theorem 3.2

M1=max(norm(B0+a*eye(3)), norm(B1+ a*B0));
roots([1 -(1+M1) 0 M1]);
max(roots([1 -(1+M1) 0 M1]));
S9 = max(1, max(roots([1 -(1+M1) 0 M1])));
%% 
% Bound using Corollary 3.2.1

M2 = max([norm(eye(3)+a*eye(3)+B0) norm(a*eye(3)+B0+a*B0+B1) norm(a*B0+B1)]);
roots([1 -(1+M2) 0 0 M2]);
max(roots([1 -(1+M2) 0 0 M2]));
S10 = max(1, max(roots([1 -(1+M2) 0 0 M2])));
%% 
% Bound using Theorem 3.3

S11 = 1+M1;
%% 
% Bound using Theorem 3.4

S12 = (1+norm(a*eye(3) + B0)+ sqrt((1-norm(a*eye(3) + B0))^2 +4*norm(B1+a*B1)))/2;
%% 
% Bound using Corollary 3.4.2

M3 =max(norm(a*eye(3)+B0+a*B0+B1), norm(a*B0+B1));
S13 =(1+norm(a*eye(3)+eye(3)+B0)+ sqrt((1-norm(a*eye(3)+eye(3)+B0))^2 +4*M3))/2;
%% 
% Bound using Corollary 3.4.4

M4=max(norm((B0+a*eye(3))*(a*B0+B1)), norm((B0+a*eye(3))^2-(a*B0+B1)));
S14 = (1+sqrt(1+4*M4))/2;
%% 
% Bound using Corollary 3.4.6

M5 = max(norm((a*eye(3)+eye(3)+B0)*(a*B0+B1)), norm(-((a*eye(3)+eye(3)+B0)*(a*eye(3)+B0))+(B1+a*B0)));
S15 = 1+sqrt(M5);
%% 
% Bound using Theorem 3.6

S16 =1+M1;
%% 
% 

for j=1
fprintf('The maximum of the moduli of eigenvalues is %.2f  \n',max(abs(eig(D))))
fprintf('The minimum of the moduli of eigenvalues is %.2f  \n',min(abs(eig(D))))
fprintf('The bound due to Theorem 2.2 is %.2f  \n',S1)
fprintf('The bound due to Theorem 2.4 (Theorem 3.8, [4]) is %.2f  \n',S2)
fprintf('The bound due to Theorem 2.8 is %.2f  \n',S3)
fprintf('The bound due to Theorem 2.11 is %.2f  \n',S4)
fprintf('The bound due to Theorem 2.7 is %.2f  \n',L)
fprintf('***')
fprintf('The bound due to Theorem 3.9 (1) is %.2f  \n',S5)
fprintf('The bound due to Theorem 3.9 (2) is %.2f  \n',S6)
fprintf('The bound due to Theorem 3.9 (3) is %.2f  \n',S7)
fprintf('The bound due to Corollary 3.11 is %.2f  \n',S8)
fprintf('***')
fprintf('The bound due to Theorem 3.2 is %.2f  \n',S9)
fprintf('The bound due to Corollary 3.2.1 is %.2f  \n',S10)
fprintf('The bound due to Theorem 3.3 is %.2f  \n',S11)
fprintf('The bound due to Theorem 3.4 is %.2f  \n',S12)
fprintf('The bound due to Corollary 3.4.2 is %.2f  \n',S13)
fprintf('The bound due to Corollary 3.4.4 is %.2f  \n',S14)
fprintf('The bound due to Corollary 3.4.6 is %.2f  \n',S15)
fprintf('The bound due to Theorem 3.6 is %.2f  \n',S16)
fprintf('***')
fprintf('***')
end
%% 
% In this example, the bound obtained from Theorem 2.11 is better and it is 
% same as the bounds obatined from Theorems 3.8 and 3.9 of  [4]. Also the lower 
% bound using Theorem 2.7 is 0.38.
%% 
% 
%% |*Example 4.3 (Table 3).*|
% 
% 
% In the following example the bounds obtained from Corollary 3.4.4 of [17] 
% is better. Let $$T(\lambda)=-(A+C)B^{-1}+I\lambda-\frac{CB^{-1}}{\lambda-1}$$  
% an $$n \times n$$ rational matrix, where $$A= \pmatrix{6 & -3 & 0 \cr -3 & 6 
% & -3  \cr  0 & -3 & 3}$, $ $B=\frac{1}{18}\pmatrix{4 & 1 & 0 \cr1 & 4 & 1 \cr0 
% & 1 & 2 }\$ and $ $C=\pmatrix{0 & 0 & 0 \cr0 & 0 & 0 \cr0 & 0 & 1 }$. 

a= 1;
A=[6 -3 0; -3 6 -3; 0 -3 3];
B=(1/18)*[4 1 0; 1 4 1; 0 1 2];
x=[0; 0; 1];
C=x*x';
B0 = (A+C)*inv(B);
B1 = -a*C*inv(B);
Z=zeros(3);
E=[Z -eye(3); B1 B0];
D=[a*eye(3) -eye(3); B1 B0];
max(abs(eig(D)));
%% 
% *Bounds obtained from our results.*
% 
% Bound using Theorem 2.2

S1 = norm(E)+a;
%% 
% Bound using Theorem 2.4

S2 = (a+norm(B0)+sqrt((a-norm(B0))^2+4*norm(B1)))/2;
%% 
% Bound using Theorem 2.8

S3 = (norm(B0+a*eye(3))+sqrt((norm(B0+a*eye(3)))^2+4*norm(B1+a*B0)))/2;
%% 
% Bound using Theorem 2.11

S4= (a+norm(B0)+sqrt(((a-norm(B0))^2)+4*max(1, (norm(B1))^2)))/2;
%% 
% 
% 
% *Bounds obtained using results from [4]*
% 
% Bound using Theorem 3.9 (1)

S5 = max(1+a, norm(B0)+norm(B1));
%% 
% Bound using Theorem 3.9 (2)

S6 = max(a+norm(B1), 1+norm(B0));
%% 
% Bound using Theorem 3.9 (3)

S7 = (a+norm(B0)+ sqrt((a-norm(B0))^2+(1+norm(B1))^2))/2;
%% 
% Bound using Corollary 3.11

S8 = max(a, norm(B0))+ (1+norm(B0))/2;
%% 
% 
% 
% *Bounds obtained using various results given in [17].*
% 
% Bound using Theorem 3.2

M1=max(norm(B0+a*eye(3)), norm(B1+ a*B0));
roots([1 -(1+M1) 0 M1]);
max(roots([1 -(1+M1) 0 M1]));
S9 = max(1, max(roots([1 -(1+M1) 0 M1])));
%% 
% Bound using Corollary 3.2.1

M2 = max([norm(eye(3)+a*eye(3)+B0) norm(a*eye(3)+B0+a*B0+B1) norm(a*B0+B1)]);
roots([1 -(1+M2) 0 0 M2]);
max(roots([1 -(1+M2) 0 0 M2]));
S10 = max(1, max(roots([1 -(1+M2) 0 0 M2])));
%% 
% Bound using Theorem 3.3

S11 = 1+M1;
%% 
% Bound using Theorem 3.4

S12 = (1+norm(a*eye(3) + B0)+ sqrt((1-norm(a*eye(3) + B0))^2 +4*norm(B1+a*B1)))/2;
%% 
% Bound using Corollary 3.4.2

M3 =max(norm(a*eye(3)+B0+a*B0+B1), norm(a*B0+B1));
S13 =(1+norm(a*eye(3)+eye(3)+B0)+ sqrt((1-norm(a*eye(3)+eye(3)+B0))^2 +4*M3))/2;
%% 
% Bound using Corollary 3.4.4

M4=max(norm((B0+a*eye(3))*(a*B0+B1)), norm((B0+a*eye(3))^2-(a*B0+B1)));
S14 = (1+sqrt(1+4*M4))/2;
%% 
% Bound using Corollary 3.4.6

M5 = max(norm((a*eye(3)+eye(3)+B0)*(a*B0+B1)), norm(-((a*eye(3)+eye(3)+B0)*(a*eye(3)+B0))+(B1+a*B0)));
S15 = 1+sqrt(M5);
%% 
% Bound using Theorem 3.6

S16 =1+M1;
%% 
% 

for j=1
fprintf('The maximum of the moduli of eigenvalues is %.2f  \n',max(abs(eig(D))))
fprintf('The bound due to Theorem 2.2 is %.2f  \n',S1)
fprintf('The bound due to Theorem 2.4 (Theorem 3.8, [4]) is %.2f  \n',S2)
fprintf('The bound due to Theorem 2.8 is %.2f  \n',S3)
fprintf('The bound due to Theorem 2.11 is %.2f  \n',S4)
fprintf('***')
fprintf('The bound due to Theorem 3.9 (1) is %.2f  \n',S5)
fprintf('The bound due to Theorem 3.9 (2) is %.2f  \n',S6)
fprintf('The bound due to Theorem 3.9 (3) is %.2f  \n',S7)
fprintf('The bound due to Corollary 3.11 is %.2f  \n',S8)
fprintf('***')
fprintf('The bound due to Theorem 3.2 is %.2f  \n',S9)
fprintf('The bound due to Corollary 3.2.1 is %.2f  \n',S10)
fprintf('The bound due to Theorem 3.3 is %.2f  \n',S11)
fprintf('The bound due to Theorem 3.4 is %.2f  \n',S12)
fprintf('The bound due to Corollary 3.4.2 is %.2f  \n',S13)
fprintf('The bound due to Corollary 3.4.4 is %.2f  \n',S14)
fprintf('The bound due to Corollary 3.4.6 is %.2f  \n',S15)
fprintf('The bound due to Theorem 3.6 is %.2f  \n',S16)
fprintf('***')
fprintf('***')
end
toc
%% 
% For this example, the bound obtained from Corollary 3.4.4 of [17] is better.
%% 
% 
% 
%