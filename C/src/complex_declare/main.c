#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAXTOKEN	100

enum {NAME, PARENS, BRACKETS};

void dcl(void);
void dirdcl(void);
int gettoken(void);
int tokentype;
char token[MAXTOKEN];
char name[MAXTOKEN];
char datatype[MAXTOKEN];
char out[1000];

void dcl(void)
{
	int ns;
	
	for (ns = 0; gettoken() == '*'; )
		ns++;

	dirdcl();
	
	while (ns-- > 0) {
		strcat(out, " pointer to");
	}
}

void dirdcl(void)
{
	int type;
	
	if (tokentype == '(') {
		dcl();
		if (tokentype != ')') {
			printf("error: missing )\n");
		}
	} else if (tokentype == NAME) {
		strcpy(name, token);
	} else {
		printf("error: expected name or (dcl)\n");
	}

	while ((type = gettoken()) == PARENS || type == BRACKETS) {
		if (type == PARENS) {
			strcat(out, " function returning");
		} else {
			strcat(out, " array");
			strcat(out, token);
			strcat(out, " of");
		}
	}
}

int getch(void)
{
	return getchar();
}

void ungetch(int c)
{
	ungetc(c, stdin);	
}

int gettoken(void)
{
	int c, getch(void);
	void ungetch(int);
	char *p = token;

	while ((c = getch()) == ' ' || c == '\t') {
		;
	}
	
	if (c == '(') {
		if ((c = getch()) == ')') {
			strcpy(token, "()");
			return tokentype = PARENS;
		} else {
			ungetch(c);
			return tokentype = '(';
		}
	} else if (c == '[') {
		for (*p++ = c; (*p++ = getch()) != ']'; ) {
			;
		}
		*p = 0;
		return tokentype = BRACKETS;
	} else if (isalpha(c)) {
		for (*p++ = c; isalnum(c = getch()); ) {
			*p++ = c;
		}
		*p = 0;
		return tokentype = NAME;
	} else {
		return tokentype = c;
	}
}

void test(void) {

}

void declare_to_text(void)
{
	while (gettoken() != EOF) {
		strcpy(datatype, token);
		out[0] = 0;
		dcl();
		if (tokentype != '\n') {
			printf("syntax error\n");
		}
		printf("%s: %s %s\n", name, out, datatype);
	}
}

void text_to_declare(void)
{
	int type;
	char temp[MAXTOKEN];

	while (gettoken() != EOF) {
		strcpy(out, token);
		while ((type = gettoken()) != '\n') {
			if (type == PARENS || type == BRACKETS) {
				strcat(out, token);
			} else if (type == '*') {
				sprintf(temp, "(*%s)", out);
				strcpy(out, temp);
			} else if (type == NAME) {
				sprintf(temp, "%s %s", token, out);
				strcpy(out, temp);
			} else {
				printf("invalid input at %s\n", token);
			}
		}
		printf("%s\n", out);
	}
}

int main(int argc, char *argv[]) {
	if (argc == 1) {
		declare_to_text();
		return 0;
	}

	if (!strcmp(argv[1], "d2t")) {
		declare_to_text();
	} else if (!strcmp(argv[1], "t2d")) {
		text_to_declare();
	}
	
	return 0;
}

