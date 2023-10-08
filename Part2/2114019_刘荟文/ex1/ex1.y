%{
/*********************************************
1.将所有的词法分析功能均放在yylex函数内实现，为+、-、*、l、(、)每个运算符及整数分别定义一个单词类别
在yylex内实现代码,能识别这些单词，并将单词类别返回给词法分析程序。
YACC file
**********************************************/
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#ifndef YYSTYPE
#define YYSTYPE double
#endif
int yylex();
extern int yyparse();
FILE* yyin;
void yyerror(const char* s);
%}

//TODO:给每个符号定义一个单词类别


%token ADD 
%token SUB 
%token MUL
%token DIV
%token UMINUS
%token LEFT
%token RIGHT
%token NUMBER

%left ADD SUB
%left MUL DIV
%right UMINUS         




%%


lines   :       lines expr ';' { printf("%f\n", $2); }
        |       lines ';'
        |
        ;
        
//TODO:完善表达式的规则
expr    :       expr ADD expr           { $$=$1+$3; }
        |       expr SUB expr           { $$=$1-$3; }
        |       expr MUL expr           { $$=$1*$3; }
        |       expr DIV expr           { $$=$1/$3; }
        |       LEFT expr RIGHT         { $$=$2; }
        |       SUB expr %prec UMINUS   { $$=-$2; }
        |       NUMBER                  { $$=$1; }
        ;

%%

// programs section

int yylex()
{
    int ch;
    while(1){
        ch = getchar();
        if(ch == ' ' || ch == '\t' || ch =='\n');
        else if (isdigit(ch))
        {
            yylval = ch - '0';
            return NUMBER;
        }
        else if (ch == '+')
        {
            return ADD;
        }
        else if(ch == '-')
        {
            return SUB;
        }
        else if (ch == '*')
        {
            return MUL;
        }
        else if (ch == '/')
        {
            return DIV;
        }
        else if (ch == '(')
        {
            return LEFT;
        }
        else if (ch == ')')
        {
            return RIGHT;
        }
        else
        {
            return ch;
        }
    }
}

int main(void)
{
    yyin=stdin;
    do{
        yyparse();
    }while(!feof(yyin));
    return 0;
}
void yyerror(const char* s){
    fprintf(stderr,"Parse error: %s\n",s);
    exit(1);
}