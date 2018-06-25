/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ttshivhu <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/06/23 11:19:25 by ttshivhu          #+#    #+#             */
/*   Updated: 2018/06/25 15:08:52 by ttshivhu         ###   ########.fr       */
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
int	ft_isupper(int c);
int	ft_islower(int c);
int	ft_toupper(int c);
int	ft_tolower(int c);
int	ft_isascii(int c);
int	ft_isprint(int c);
size_t	ft_strlen(const char *s);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *dst, const void *src, size_t n);
char	*ft_strdup(char *s);
void	ft_cat(int fd);
int	ft_strcmp(const char *s1, const char *s2);
int	ft_isblank(int n);

#endif
