.vimrc
======

Meu arquivo **.vimrc**. 

Dentre as opções para instalação simples de plugins, preferi o **Vundle**. 
Então, se quiser dar uma testada nas minhas configurações, primeiro 
[acesse o repo do Vundle](https://github.com/gmarik/vundle), instale e rode 
`vim +BundleClean +BundleInstall! +qall` no terminal, conforme consta nas 
próprias instruções do Vundle (na verdade, não precisa colocar aquela codaiada 
que ele mostra porque muita coisa já consta aqui).

E, só de falar em "terminal", você já deve ter percebido que é um arquivo feito 
e voltado para ambientes \*NIX (e não testado em outros ambientes). Então, faça 
uma revisão geral em todas as configurações para ver o que você deve alterar, 
caso esteja usando um ambiente diferente.

## Cores e fontes

Caso o esquema de cor **Molokai** não entre em ação automaticamente, basta 
executar `cp ~/.vim/bundle/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim` 
e o problema está resolvido.

Para o **vim-airline** ficar com uma aparência melhor, é interessante instalar as 
fontes personalizadas recomendadas. Dê uma olhada 
em [como fazer a integração com as Powerline fonts](https://github.com/bling/vim-airline#integrating-with-powerline-fonts).

## Configurações específicas

Antes de usar esse `.vimrc` e mexer no Vim como se não houvesse amanhã, dê uma 
olhadinha nas configurações e plugins para não instalar coisa que você não 
quer/precisa usar. O arquivo está relativamente bem comentado e, na dúvida, há 
sempre o link para a página do respectivo plugin e/ou URL com maiores explicações.

**YouCompleteMe** exige alguns passos adicionais para funcionar apropriadamente, 
então [leia todas instruções](https://github.com/Valloric/YouCompleteMe#youcompleteme-a-code-completion-engine-for-vim).

O **Eclim** não é instalado exatamente da mesma maneira que os outros plugins 
(emboras as configurações existentes neste `.vimrc` sejam válidas); [consulte as 
instruções de instalação](http://eclim.org/install.html).

## A gente se vê pela web!

Se tiver sugestões/dicas/comentários, por favor, entre em contato: [gplus.to/tarciozemel](http://gplus.to/tarciozemel). ;-)

Abraços e a gente se vê pela web!
