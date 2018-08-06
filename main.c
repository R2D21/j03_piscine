/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rboivin <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/05 08:21:05 by rboivin           #+#    #+#             */
/*   Updated: 2018/08/05 11:22:39 by rboivin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdio.h>

char	ft_strrev(char *str);

int		ft_swap(int *a, int *b);
int		ft_strlen(char *str);

void	ft_div_mod(int a, int b, int *div, int *mod);
void	ft_ultimate_div_mod(int *div, int *mod);
void	ft_putstr(char *str);

int		main(void)
{
	char *str = malloc(4096 * sizeof(char));
	strcpy(str, " Je suis une string de test");
	printf("%s\n", ft_strrev(str));
	return (0);
}
