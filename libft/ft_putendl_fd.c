/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putendl_fd.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jowagner <jowagner@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/29 18:17:35 by jowagner          #+#    #+#             */
/*   Updated: 2025/01/13 20:11:52 by jowagner         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

/**
 * @brief Writes a string to a given file descriptor, followed by a newline.
 *
 * @param s The string to be written.
 * @param fd The file descriptor to write to (1 for standard output,
 * 2 for standard error, etc.).
 */
void	ft_putendl_fd(char *s, int fd)
{
	while (*s)
		write(fd, s++, 1);
	ft_putchar_fd('\n', fd);
}
