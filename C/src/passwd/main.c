#include <sys/types.h>
#include <pwd.h>
#include <shadow.h>
#include <crypt.h>
#include <string.h>
#include <stdio.h>

/// @return 0 - password is correct, otherwise no
int check_password( const char* user, const char* password )
{
    struct passwd* passwdEntry = getpwnam( user );
    if ( !passwdEntry )
    {
        printf( "User '%s' doesn't exist\n", user );
        return -1;
    }

    if ( 0 != strcmp( passwdEntry->pw_passwd, "x" ) )
    {
        return strcmp( passwdEntry->pw_passwd, crypt( password, passwdEntry->pw_passwd ) );
    }
    else
    {
        // password is in shadow file
        struct spwd* shadowEntry = getspnam( user );
        if ( !shadowEntry )
        {
            printf( "Failed to read shadow entry for user '%s'\n", user );
            return -1;
        }

        return strcmp( shadowEntry->sp_pwdp, crypt( password, shadowEntry->sp_pwdp ) );
    }
}

int main(int argc, char **argv) {
	if (argc < 3) {
		printf("Usage: %s username password\n", argv[0]);
		return -1;
	}

	if (check_password(argv[1], argv[2]) != 0)  {
		printf("username and password are not matched!\n");
		return -1;
	}

	printf("welcome! login success!\n");

	return 0;
}
