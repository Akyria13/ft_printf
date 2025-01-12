/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jowagner <jowagner@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/12 15:33:47 by jowagner          #+#    #+#             */
/*   Updated: 2025/01/12 17:09:56 by jowagner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

/**
 * @brief A custom implementation of the printf() function.
 * This function mimics the original printf() from libc,
 * handling formatted output to the standard output stream.
 *
 * @param format The format string containing text and format specifiers.
 * @param ... Additional arguments to format and print based on the format
 * specifiers.
 *
 * @return The number of characters printed
 * (excluding the null byte used to end output to strings),
 * or a negative value if an error occurs.
 */
int	ft_printf(const char *, ...)
{
}

int	main(void)
{
	int	result;

	result = printf("Sentence to know how many %s\n ",
			"characters were written");
	printf("%d characters were written", result);
}
