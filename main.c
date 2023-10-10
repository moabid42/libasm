#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>


ssize_t		ft_write(int fd, void const *buf, size_t nbyte);
ssize_t		ft_read(int fd, void *buf, size_t nbyte);
int		ft_strlen(char const *str);
char		*ft_strcpy(char *dst, char const *src);
int		ft_strcmp(char const *s1, char const *s2);
char		*ft_strdup(char const *s1);

int		main(void)
{
	int		i;
	long	r;
	char	buffer[100];
	char	*tmp;
	char	*tmp2;

	r = 0;
	i = 0;
    	bzero(buffer, sizeof(buffer));

	ft_write(1, "STRLEN TESTS:\n", 14);
	printf("Empty string : [%d] = [%ld]\n", ft_strlen(""), strlen(""));
	printf("Test string: [%d] = [%ld]\n", ft_strlen("Test"), strlen("Test"));
    	printf("0123456789abcdef string: [%d] = [%ld]\n", ft_strlen("0123456789abcdef"), strlen("0123456789abcdef"));
	ft_write(1, "\n", 1);

    	ft_write(1, "STRCPY TESTS:\n", 14);
	printf("Empty string : [%s] = [%s]\n", ft_strcpy(buffer, ""), strcpy(buffer, ""));
	printf("Test string: [%s] = [%s]\n", ft_strcpy(buffer, "Test"), strcpy(buffer, "Test"));
    	printf("0123456789abcdef string: [%s] = [%s]\n", ft_strcpy(buffer, "0123456789abcdef"), strcpy(buffer, "0123456789abcdef"));
	ft_write(1, "\n", 1);

	ft_write(1, "STRCMP TESTS:\n", 14);
	printf("Empty string : [%d] = [%d]\n", ft_strcmp("", ""), strcmp("", ""));
	printf("Test string: [%d] = [%d]\n", ft_strcmp("Test", "Test"), strcmp("Test", "Test"));
    	printf("0123456789abcdef string: [%d] = [%d]\n", ft_strcmp("0123456788abcdef", "0123456789abcdef"), strcmp("0123456788abcdef", "0123456789abcdef"));
	printf("0123456789abcdef string: [%d] = [%d]\n", ft_strcmp("0123456789", "0123456789abcdef"), strcmp("0123456789", "0123456789abcdef"));
	ft_write(1, "\n", 1);

	ft_write(1, "STRDUP TESTS:\n", 14);
	printf("Empty string : [%s] = [%s]\n", ft_strdup(""), strdup(""));
	printf("Test string: [%s] = [%s]\n", ft_strdup("Test"), strdup("Test"));
    	printf("0123456789abcdef string: [%s] = [%s]\n", ft_strdup("0123456789abcdef"), strdup("0123456789abcdef"));
	ft_write(1, "\n", 1);

	return (0);
}
