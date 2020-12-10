#include <curses.h>
#include <unistd.h>

#define MAX_LEN	32
void test(void ) {
	int i = 0;
	char ch = 0;
	char passwd[MAX_LEN];
	initscr();
	cbreak();
    int startx = 0, starty = 0, width = 80, height = 3;
    //int ch = 0;
    //initscr();
    //cbreak();
    //keypad(stdscr, TRUE);
    //starty = (LINES - height) / 2;
	int idx = 0;
    starty = LINES - height; 
    //startx = (COLS - width) / 2;
    startx = 0; 
    WINDOW* local_win = NULL;
    local_win = newwin(height, width, starty, startx);

	//raw();
	//keypad(stdscr, TRUE);
	noecho();
    mvwprintw(local_win, idx++, 0, "Please input your password: \n");
	for (i = 0; i < MAX_LEN; ) {
//		ch = getch();
		ch = wgetch(local_win);
//		ch = getchar();
		//scanw("%c", &ch);
		if (ch == '\n') {
			break;
		}
		if (ch == 8 || ch == 127) {
			if (i > 0) {
			--i;
			//move(0, 0);
			//wechochar(local_win,'\b');
			//wechochar(local_win,' ');

			mvwaddch(local_win,idx, i, ' ');
			wmove(local_win,idx, i);
			}
			//putchar('\b');
			//putchar(' ');
			continue;
		}
		passwd[i++] = ch;
		wechochar(local_win,'*');
		//putchar('*');
	}
	endwin();
	passwd[i] = 0;
	printf("\nyou input: %s\n", passwd);
}

void test2(void) {
    int ch;

    initscr();
    raw();
    keypad(stdscr, TRUE);
    noecho();

    WINDOW *my_window = newwin(10, 20, 3, 4);
    box(my_window, 0, 0);

    while ((ch=wgetch(my_window)) != 'q');
    endwin();

}

void test3(void) {
	char *p = getpass("pass> ");
	printf("\nyou input: %s\n", p);
}


WINDOW* create_newwin(int height, int width, int starty, int startx)
{
    WINDOW* local_win = NULL;
    local_win = newwin(height, width, starty, startx);
    box(local_win, 0, 0);
    wrefresh(local_win);
    return local_win;
}

void move_win(WINDOW* local_win, int y, int x)
{
    wborder(local_win, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '); // clear border for old win
    wrefresh(local_win);

    mvwin(local_win, y, x);
    box(local_win, 0, 0); // reset border
    wrefresh(local_win);
}

int test4()
{
    WINDOW* my_win = NULL;
    int startx = 0, starty = 0, width = 10, height = 3;
    int ch = 0;
    initscr();
    cbreak();
    keypad(stdscr, TRUE);
    starty = (LINES - height) / 2;
    startx = (COLS - width) / 2;
    printw("Press F1 to exit");
    refresh();
    my_win = create_newwin(height, width, starty, startx);

    while ((ch = getch()) != KEY_F(1)) {
        switch(ch) {
            case KEY_LEFT:
                move_win(my_win, starty, --startx);
                break;
            case KEY_RIGHT:
                move_win(my_win, starty, ++startx);
                break;
            case KEY_UP:
                move_win(my_win, --starty, startx);
                break;
            case KEY_DOWN:
                move_win(my_win, ++starty, startx);
                break;
        }
    }

    if (my_win) {
        delwin(my_win);
    }
    endwin();
    return 0;
}

void test5() {

}

int main(void) {
	test();

	return 0;
}
