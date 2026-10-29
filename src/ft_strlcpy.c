#include <stdio.h>
#include <string.h>
#include "../includes/libft.h"


size_t ft_strlcpy(char *dst, const char *src, size_t dst_size)
{
	size_t	i;
	i = 0;

	while (src[i])
	{
		if (i >= dst_size)
		{
			i++;
			dst[dst_size - 1] = '\0';
		}
		else
		{	
			dst[i] = src[i];
			i++;
		}
	}
	return (i);
}

int	main()
{
	char buffer[8];
	printf("test1: %ld", ft_strlcpy(buffer, "Test123456789", 0));
	
	char dst[8];
	printf("\ntest2: %ld", strlcpy(dst, "Test123456789", 0));

	return (0);
}
