#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "libfts.h"

int	main(void)
{
	char	*s = strdup("hello");
	ft_bzero(s, 3);
	printf("%c\n", s[3]);
	char *tt = malloc(sizeof(char) * 1000);
	strcpy(tt, "test");
	printf("str: %s\n", ft_strcat(tt, "fuck"));
	//test ft_isalpha
	for (int i = 50; i < 130; i++)
		printf("char: %c : %d\n", i, ft_isalpha(i));
	int len = ft_puts("testing puts");
	printf("printed: %d\n", len);
	for (int i = 38; i < 62; i++)
		printf("digit: %c : %d\n", i, ft_isdigit(i));
	for (int i = 40; i < 126; i++)
		printf("isalnum: %c : %d\n", i, ft_isalnum(i));
	return (0);
}
