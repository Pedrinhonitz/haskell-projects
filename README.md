<div align="center" id="top"> 
  <img src="./img/logo.png" alt="img-logo" style="width:250px; height:250px;" />

  &#xa0;

</div>

<h1 align="center">KLN is an interpreted programming language based on Haskell.</h1>

<p align="center">
  <img alt="Github top language" src="https://img.shields.io/github/languages/top/Pedrinhonitz/kln-language?color=56BEB8&logo=github">

  <img alt="Github language count" src="https://img.shields.io/github/languages/count/Pedrinhonitz/kln-language?color=56BEB8&logo=github">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/Pedrinhonitz/kln-language?color=56BEB8&logo=github">
</p>
<p align="center">
  <a href="#dart-about">About</a> &#xa0; | &#xa0; 
  <a href="#white_check_mark-how-to-use">How to use</a> &#xa0; | &#xa0;
  <a href="#rocket-stack">Stack</a> &#xa0; | &#xa0;
  <a href="#books-documentation-of-the-language">Documentation of the language</a> &#xa0; | &#xa0;
  <a href="https://github.com/Pedrinhonitz" target="_blank">Autor</a>
</p>

<br>

## :dart: About ##

KLN is an interpreted and minimalist programming language inspired by Haskell. It was designed to promote faster and more efficient development by using only operators to reduce the amount of code required. With a concise and powerful syntax, KLN is ideal for those who want to write code quickly and concisely.


## :rocket: Stack ##

The following tools were used in this project:

- [Haskell](https://www.haskell.org/)
- [Happy](https://github.com/haskell/happy)
- [Make](https://www.gnu.org/software/make/manual/make.html)

## :white_check_mark: How to Use ##
```bash
# Runs the code inside the file example.kln
$ make kn file=example.kln 
```

## :books: Documentation of the language ##

Example of an addition:
```bash
# KLN Language
$ Num + Num # example 5 + 5
```

Example of a subtraction:
```bash
# KLN Language
$ Num - Num # example 5 - 5
```

Example of a multiplication:
```bash
# KLN Language
$ Num * Num # example 5 * 5
```

Example of a division:
```bash
# KLN Language
$ Num *|* Num # example 5 *|* 5
```

Example of a remainder of division:
```bash
# KLN Language
$ Num *%* Num # example 5 *%* 5
```

Example of an exponential:
```bash
# KLN Language
$ Num ^ Num # example 5 ^ 5
```

Example of an and:
```bash
# KLN Language
$ Bool and Bool # example True or True
```
Example of an or:
```bash
# KLN Language
$ Bool or Bool # example True or False
```

Example of a not:
```bash
# KLN Language
$ !Bool # example !True
```

Example of an if:
```bash
# KLN Language
$ ? exp ?! exp | exp # example ? 5 == 5 ?! 2 + 2 | 2 - 1
```

Example of a less than:
```bash
# KLN Language
$ Num < Num # example 2 < 3
```

Example of a greater than:
```bash
# KLN Language
$ Num > Num # example 3 > 2
```

Example of a less than or equal to:
```bash
# KLN Language
$ Num <= Num # example 2 <= 3
```

Example of a greater than or equal to:
```bash
# KLN Language
$ Num >= Num # example 3 >= 2
```

Example of an equal:
```bash
# KLN Language
$ Num == Num # example 3 == 3
```

Example of a not equal:
```bash
# KLN Language
$ Num != Num # example 3 != 2
```

Example of a lambda:
```bash
# KLN Language
$ \ Var -> exp e # example \ x -> x + 1 6
```

#
Made by <a href="https://github.com/Pedrinhonitz" target="_blank">Pedrinhonitz</a> in the Programming Languages classes - UFFS

<a href="#top">Go to the top.</a>