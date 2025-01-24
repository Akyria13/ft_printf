# ft_printf

## 📚 Description

`ft_printf` is a custom implementation of the standard C `printf` function.
This project is designed to explore variadic functions, input formatting, and argument handling to produce formatted output.
Once completed, `ft_printf` can be added to your personal library (libft) for use in future projects.

---

## 🚀 Features

`ft_printf` supports the following format specifiers:

- **`%c`**: Prints a single character.
- **`%s`**: Prints a string.
- **`%p`**: Prints a pointer in hexadecimal format.
- **`%d` or `%i`**: Prints a signed decimal integer.
- **`%u`**: Prints an unsigned decimal integer.
- **`%x`**: Prints an unsigned hexadecimal integer (lowercase).
- **`%X`**: Prints an unsigned hexadecimal integer (uppercase).
- **`%%`**: Prints a literal `%`.

---

## 📂 Project Structure

ft_printf/ ├── Makefile ├── README.md ├── include/ │ └── ft_printf.h # Contains function prototypes and necessary definitions. ├── src/ │ ├── ft_printf.c # Main function for ft_printf. │ ├── ft_check_args.c # Handles format specifiers (%c, %s, %d, etc.). │ ├── ft_putnbr_base.c # Manages base conversions (e.g., hexadecimal). │ ├── ft_putchar.c # Outputs a single character. │ ├── ft_putstr.c # Outputs a string. │ ├── ft_putnbr_unsigned.c # Outputs an unsigned integer. │ ├── ft_print_ptr.c # Handles pointer conversion (%p). ├── obj/ # Directory for object files generated during compilation. ├── libft/ # Directory for the libft library if used. │ ├── Makefile # Makefile for compiling libft. │ ├── libft.a # Generated static library. │ ├── *.c # Source files for libft. │ └── include/ │ └── libft.h # Header file for libft. ├── main.c # Main program to test ft_printf.
