#include "libasm.h"

int main()
{
	int ret = 0;
	int retlen = 0;
	char buf[256];
	printf("strlen de 'salut' res: %d\nsuivi du ft_write\n", ft_strlen("salut"));
	ft_write(1, "salut", ft_strlen("salut"));
	ret = ft_read(1, buf, 256);
	printf("\nreturn de read de l'entree std: %d\nbuf: %s\n", ret, buf);
	retlen = ft_strlen(buf);
	printf("strlen buf = %d\n\n", retlen);

	printf("resultat du cmp de z et j = %d\n", ft_strcmp("z", "j"));
	char *fraiche;
	fraiche = ft_strdup("chaine strduper avec le ft_strdup");
	printf("strdup resultat: %s\n", fraiche);
	char *a = malloc(sizeof(char) * 30);
	printf("strcpy resultat: %s", ft_strcpy(a, fraiche));
}
