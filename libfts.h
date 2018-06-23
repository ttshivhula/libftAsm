/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ttshivhu <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/23 11:19:25 by ttshivhu          #+#    #+#             */
/*   Updated: 2018/06/23 13:49:58 by ttshivhu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H
# include <string.h>

void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *s, const char *s2);
int	ft_isalpha(int c);
int	ft_puts(const char *s);
int	ft_isdigit(int c);
int	ft_isalnum(int c);

#endif
