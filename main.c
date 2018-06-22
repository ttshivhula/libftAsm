#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *s, char *s2);
int	ft_isalpha(int c);
int	ft_puts(char *s);

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
	int len = ft_puts(NULL);
	printf("printed: %d\n", len);
	return (0);
}
