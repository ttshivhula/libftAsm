#include <fcntl.h>
#include <unistd.h>
#include "libfts.h"

void	ft_cat(int fd);

int	main(int c, char **v)
{
	int	fd;

	(void)c;
	fd = open(v[1], O_RDONLY);
	ft_cat(fd); // toggle to 0 or fd
	close(fd);
	return 0;
}
