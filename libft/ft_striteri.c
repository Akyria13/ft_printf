/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_striteri.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jowagner <jowagner@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/29 15:28:13 by jowagner          #+#    #+#             */
/*   Updated: 2025/01/13 20:12:08 by jowagner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

/**
 * @brief Applies a function to each character of a string,
 * modifying the string in place.
 *
 * @param s The string to iterate over and modify.
 * @param f The function to apply to each character.
 * Takes the index of the character and a pointer to the character.
 * @return Nothing. The string is modified directly.
 */
void	ft_striteri(char *s, void (*f)(unsigned int, char *))
{
	unsigned int	i;

	i = 0;
	while (s[i])
	{
		f(i, &s[i]);
		i++;
	}
}
