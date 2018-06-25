#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "libfts.h"

int	main(void)
{
	int i;
	char	*s = ft_strdup("hello");
	ft_bzero(s, 3);
	printf("%c\n", s[2]);
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

	char *lower = ft_strdup("TES&Rgg09");
	printf("str: %s\nlower: ", lower);
	i = -1;
	while (lower[++i])
		printf("%c", ft_tolower(lower[i]));
	printf("\n");
	for (i = -3; i < 130; i++)
		printf("ascii: %c : %d\n", i, ft_isascii(i));
	printf("Length of '%s' = %d\n", "Tshilidzi", (int)ft_strlen("Tshilidzi"));
	char *test = ft_strdup("Tshilidzi");
	printf("before memset of 3 chars: %s ", test);
	char *s2 = ft_memset(test,'a', 3);
	printf("after: %s\n", s2);

	s = (char *)malloc(5000);
	printf("memcpy: %s\n", ft_memcpy(s, "this guy fucks", 6));

	s = ft_strdup("11111");
	printf("len: %s\n", s);
	for (i = 30; i < 130; i++)
		printf("isprint: %c : %d\n", i, ft_isprint(i));
	if (!ft_strcmp("tshili", "tsholi"))
		printf("Strings are equal\n");
	else
		printf("Strings are not equal\n");
	printf("isblank: %c : %d\n", '\t', ft_isblank('\t'));
	printf("isblank: %c : %d\n", ' ', ft_isblank(' '));
	printf("isblank: %c : %d\n", 'a', ft_isblank('a'));
	printf("isblank: %c : %d\n", 'b', ft_isblank('b'));
	return (0);
}
