/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printptr.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jowagner <jowagner@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/18 18:30:54 by jowagner          #+#    #+#             */
/*   Updated: 2025/01/18 19:14:51 by jowagner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/ft_printf.h"

static int	ft_putstr(char *str)
{
	while (*str)
		write(1, str++, 1);
	return (*str);
}

int	ft_putptr(unsigned long n)
{
	int			count;
	const char	*base;

	count = 0;
	base = "0123456789abcdef";
	if (n >= 16)
		count += ft_putptr(n / 16);
	count += write(1, &base[n % 16], 1);
	return (count);
}

int	ft_printptr(unsigned long ptr)
{
	int	count;

	count = 0;
	if (!ptr)
		ft_putstr_fd("(nil)", 1);
	else
	{
		count += ft_putstr("0x");
		count += ft_putptr(ptr);
	}
	return (count);
}
