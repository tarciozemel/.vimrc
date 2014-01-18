.vimrc
======

Meu arquivo **.vimrc**. 

Dentre as opções para instalação simples de plugins, preferi o **Vundle**. Então, se quiser dar uma testada nas minhas 
configurações, primeiro [acesse o repo do Vundle](https://github.com/gmarik/vundle), instale e rode 
`vim +BundleClean +BundleInstall! +qall` no terminal, conforme consta nas próprias instruções do Vundle (na verdade, não 
precisa colocar aquela codaiada que ele mostra porque muita coisa já consta aqui).

E, só de falar em "terminal", você já deve ter percebido que é um arquivo feito e voltado para ambientes \*NIX (e não 
testado em outros ambientes). Então, faça uma revisão geral em todas as configurações para ver o que você deve alterar, 
caso esteja usando um ambiente diferente.

Caso o esquema de cor Molokai não entre em ação automaticamente, basta copiar `~/.vim/bundle/molokai/colors/molokai.vim` 
para `~/.vim/colors/molokai.vim` e o problema está resolvido.

Antes de usar esse `.vimrc` e mexer no Vim como se não houvesse amanhã, dê uma olhadinha nas configurações e plugins 
para não instalar coisa que você não quer/precisa usar. Em especial, [confira o repo do YouCompleteMe](https://github.com/Valloric/YouCompleteMe), que possui instruções bem específica de instalação e o Eclim precisa, obviamente, do Eclipse.

Se tiver sugestões/dicas/comentários, por favor, entre em contato: [gplus.to/tarciozemel](http://gplus.to/tarciozemel). ;-)

Abraços e a gente se vê pela web!
