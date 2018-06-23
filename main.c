#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "libfts.h"

int	main(void)
{
	int i;
	char	*s = strdup("hello");
	ft_bzero(s, 3);
	printf("%c\n", s[3]);
	char *tt = malloc(sizeof(char) * 1000);
	strcpy(tt, "test");
	printf("str: %s\n", ft_strcat(tt, "fuck"));
	//test ft_isalpha
	for (i = 50; i < 130; i++)
		printf("char: %c : %d\n", i, ft_isalpha(i));
	int len = ft_puts("testing puts");
	printf("printed: %d\n", len);
	for (i = 38; i < 62; i++)
		printf("digit: %c : %d\n", i, ft_isdigit(i));
	for (i = 40; i < 126; i++)
		printf("isalnum: %c : %d\n", i, ft_isalnum(i));
	char *upper = strdup("tes&Rgg09");
	printf("str: %s\nupper: ", upper);
	i = -1;
	while (upper[++i])
		printf("%c", ft_toupper(upper[i]));
	printf("\n");

	char *lower = strdup("TES&Rgg09");
	printf("str: %s\nlower: ", lower);
	i = -1;
	while (lower[++i])
		printf("%c", ft_tolower(lower[i]));
	printf("\n");
	for (i = -3; i < 130; i++)
		printf("ascii: %c : %d\n", i, ft_isascii(i));
	return (0);
}
