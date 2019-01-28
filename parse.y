%{
   /* C declarations and includes */
%}
   /* Yacc token and type declarations */
%%
   /* Yacc Specification
      in the form of grammer rules like this:
   */
   symbol    :    symbols tokens
                      { $$ = my_c_code($1); }
             ;
%%
   /* C language program (the rest) */

