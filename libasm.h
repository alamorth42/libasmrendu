/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alamorth <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/03 16:31:16 by alamorth          #+#    #+#             */
/*   Updated: 2020/01/03 16:32:28 by alamorth         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIB_ASM_H
# define LIB_ASM_H

int		ft_write(int fd, char *str, int len);
int		ft_read(int fd, char *buf, int len);
unsigned int 	ft_strlen(char *str);
int		ft_strcmp(char *s, char *s2);
void		*ft_memcpy(void *dest, void *src, unsigned int size);
char		*ft_strdup(char *str);
char 		*ft_strcpy(char *dest, char *src);

#endif
