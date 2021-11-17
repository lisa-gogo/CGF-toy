grammar CALC;

e  :   e  op=(ADD|SUB) t | t | INT | ID;
t   :  t op=(MUL|DIV) f |f | INT | ID;    
f   :     '(' e ')' | INT | ID;

MUL :   '*' ;
DIV :   '/' ;
ADD :   '+' ;
SUB :   '-' ;
ID  :   [a-zA-Z]+ ;      
INT :   [0-9] ;         
WS  :   [ \t]+ -> skip ; 

 
