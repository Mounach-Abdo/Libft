/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: amounach <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/03 12:25:39 by amounach          #+#    #+#             */
<<<<<<< HEAD
/*   Updated: 2022/06/08 18:42:32 by amounach         ###   ########.fr       */
=======
/*   Updated: 2022/06/08 18:04:43 by amounach         ###   ########.fr       */
>>>>>>> 7d269da8efdd5f02a38fe5b251eb809dbf20c099
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void *b, int c, size_t len)
{
<<<<<<< HEAD
	size_t			i;
=======
	size_t	i;
>>>>>>> 7d269da8efdd5f02a38fe5b251eb809dbf20c099
	unsigned char	x;
	unsigned char	*y;

	i = 0;
	x = (unsigned char)c;
	y = (unsigned char *)b;
	while (i < len)
		y[i++] = x;
	return (b);
}
