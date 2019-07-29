.vimrc
======

Meu arquivo **.vimrc**. 

Dentre as opções para instalação simples de plugins, preferi o **Vundle**. Então, 
ele consta como um 
[submódulo](http://git-scm.com/book/pt-br/Ferramentas-do-Git-Subm%C3%B3dulos) 
deste repositório para ser instalado mais facilmente.

Basicamente, o que você tem que fazer é clonar este repo no seu diretório 
`~/.vim` (se ainda não existir, crie); iniciar os submódulo; criar um link 
simbólico do arquivo `.vimrc` deste repositório clonado diretamente para seu 
`$HOME` e; instalar os plugins (o que vai demorar uns minutinhos):

``` bash
cd $HOME/.vim
git clone https://github.com/tarciozemel/.vimrc .
git submodule init && git submodule update
ln -s ~/.vim/.vimrc ~/.vimrc
vim +PluginInstall +qall
```

Este repo é feito, testado e voltado para ambientes \*NIX (e não testado em 
outros ambientes). Então, faça uma revisão geral em todas as configurações caso 
esteja usando um ambiente diferente.

## Cores e fontes

Caso o esquema de cor **Molokai** não entre em ação automaticamente, basta 
executar:

`mkdir -p ~/.vim/colors && cp ~/.vim/bundle/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim`

Para o **vim-airline** ficar com uma aparência melhor, é interessante instalar as 
fontes personalizadas recomendadas. Dê uma olhada 
em [como fazer a integração com as Powerline fonts](https://github.com/bling/vim-airline#integrating-with-powerline-fonts).

## Configurações específicas

Antes de usar esse `.vimrc` e mexer no Vim como se não houvesse amanhã, dê uma 
olhadinha nas configurações e plugins para não instalar coisa que você não 
quer/precisa usar. O arquivo está relativamente bem comentado e, na dúvida, há 
sempre o link para a página do respectivo plugin e/ou URL com maiores explicações.

Também pode acontecer o contrário: você querer usar algo que está comentado (caso 
em que basta descomentar e executar `:PluginInstall` no Modo de Comando do Vim).

Algumas observações pertinentes quanto a plugins:

**Taggatron** precisa trabalha com arquivos de tags, então é preciso gerá-los de 
alguma maneira - por exemplo, com [exuberant-ctags](http://ctags.sourceforge.net/). 
Também, esteja certo sobre quais diretórios quer buscar para a criação do arquivo 
de tags; se estiver usando algum task runner, não é difícil ter arquivos de 1GB (!) e 
isso pode comprometer a fluidez do Vim... Aqui está um exemplo de configuração 
que mostra como é possível excluir alguns diretórios:

```javascript
let g:tagcommands = {
    \"php" : { "tagfile" : ".php.tags", "args" : "-R" },
    \"javascript" : { "tagfile" : ".js.tags", "args" : "-R --exclude=node_modules" }
\}
```

**Eclim** não é instalado exatamente da mesma maneira que os outros plugins 
(emboras as configurações existentes neste `.vimrc` sejam válidas); [consulte as 
instruções de instalação](http://eclim.org/install.html).

**WakaTime** é o plugin de um serviço de mesmo nome que serve para marcar o tempo 
em que se fica trabalhando em projetos. Para mais informações e para gerar a chave 
necessária para usar o plugin, vá ao [site oficial do WakaTime](https://wakatime.com/).

## A gente se vê pela web!

Se tiver sugestões/dicas/comentários: [manda um tweet](https://twitter.com/tarciozemel). ;-)

Abraços e a gente se vê pela web!
