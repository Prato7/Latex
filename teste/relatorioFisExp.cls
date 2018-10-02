\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{relatorioFisExp}[2017/11/22, v1.9 de Rui Jorge Agostinho]

\newcommand{\@versao}{v1.9 de Fis.\ Exp.}%%% Fis.\ Exp.\ I



\newcommand{\@helpTxtPackages}{%
\par\par\underline{\textsc{Packages inclu\ii das na classe\ }} \@macroName[]{'relatorioFisExp}{'}{.}\par

Para a explica\cao\ detalhada de cada package consulte o 
reposit\'orio oficial em \https{www.ctan.org}\par
}

\newcommand{\@appendToHelpPackages}[2]{%
\expandafter\def\expandafter\@helpTxtPackages\expandafter{\@helpTxtPackages\par  -- \texttt{\textbf{#1:}}\ #2\par}%%% novo texto a acrescentar
}%%acrescenta +1 help


\newcommand{\@macroName}[4][\textbackslash]{#1\texttt{#2#3}%
  \ifthenelse{\equal{#4}{}}{\par\vspace*{-2mm}}{}}
  
\newcommand{\@fmtOpcao}[2][]{%#1= opcoes+params do comando= []{}{}
--\textit{\textbf{#2:}} usar %#2= texto curto descritivo da opcao
\@macroName{documentclass}{[#1]\{relatorioFisExp\}}{}
}%%\@fmtOpcao

\providecommand{\@fmtComando}[3][]{%% #2= opcoes+params do comando= []{}{}
--\textit{\textbf{#3:}} usar comando %% #3= texto curto descritivo do cmd
  \@macroName{#1}{#2}{.}%%% #1=nome e #2=opcoes+params do cmd= []{}{}
}%%\@fmtComando

\newcommand{\@fmtEnvironment}[3][]{%% = \begin{#2} \#1  \end{#2}
--\textit{\textbf{#3:}} usar o ambiente %% #3= texto curto descritivo do cmd
 \@macroName{begin}{\{#2\}}{.} %%% #1=item e #2=nome da lista
  \ifthenelse{\equal{#1}{}}
    {\@macroName{item}{txt}{.}} %% \item
    {\@macroName{#1}{}{.}}%%% \#1
 \@macroName{end}{\{#2\}}{.}%
}%%\@fmtEnvironmen

\newcommand{\@helpTxtOpcoes}{%
\par\par
\underline{\textsc{Op\coes\ dispon\ii veis na classe\ }} \@macroName[]{'relatorioFisExp}{'}{.}\par
}

\newcommand{\@appendToHelpOpcoes}[3][]{%
\expandafter\def\expandafter\@helpTxtOpcoes\expandafter{\@helpTxtOpcoes\par \@fmtOpcao[#1]{#2}%% nome e texto curto descritivo da opcao seguido do
 #3\par}%%% novo texto a acrescentar
}%%acrescenta +1 help

\newcommand{\@helpTxtComandos}{%
\par\par
\underline{\textsc{Comandos Opcionais dispon\ii veis na classe}} \@macroName[]{'relatorioFisExp}{'}{.}\par
}

\newcommand{\@appendToHelpComandos}[4][]{%[#1]=nome do comando
\expandafter\def\expandafter\@helpTxtComandos\expandafter{\@helpTxtComandos\par
\@fmtComando[#1]{#2}{#3}%% nome, opcoes, texto curto descritivo do cmd
 #4\par}%%% #4= novo texto a acrescentar
}%%acrescenta +1 help

\newcommand{\@appendToHelpEnvironment}[4][]{%[#1]=nome do Environment
\expandafter\def\expandafter\@helpTxtComandos\expandafter{\@helpTxtComandos\par
\@fmtEnvironment[#2]{#1}{#3}%% item, nome, texto curto descritivo do cmd
 #4\par}%%% #4= novo texto a acrescentar
}%%acrescenta +1 help


\newcommand{\@helpTxtComandosPeambulo}{%
\par\par
\underline{\textsc{Defini\coes\ obrigat\'orias no pre\^ambulo dos docs, em}} \@macroName[]{'relatorioFisExp}{'}{.}\par
}

\newcommand{\@appendToHelpPeambulo}[4][]{%[#1]=nome do comando
\expandafter\def\expandafter\@helpTxtComandosPeambulo\expandafter{\@helpTxtComandosPeambulo\par
\@fmtComando[#1]{#2}{#3}%% nome, opcoes, texto curto descritivo do cmd
 #4\par}%%% #4= novo texto a acrescentar
}%%acrescenta +1 help

\RequirePackage{amssymb}
\@appendToHelpPackages{amssymb}{Da American Mathematical Society, fornece uma cole\cao\  mais extensa de s\ii mbolos matem\'aticos.}


\RequirePackage{amsmath}% for less-cramped positioning of arrows
\@appendToHelpPackages{amsmath}{Da American Mathematical Society. Provides miscellaneous enhancements for improving the information structure and printed output of documents containing mathematical formulas.}


\RequirePackage{amsthm}
\@appendToHelpPackages{amsthm}{Da American Mathematical Society, helps to define theorem-like structures; The package also defines a \texttt{proof} environment that automatically adds a QED symbol at the end.}

\RequirePackage[sc,osf]{mathpazo}%% math font para Palatino!  sc,osf
\@appendToHelpPackages{mathpazo}{math font para fonte Palatino no texto.}


\RequirePackage{icomma}%%usa bem o espaço da virgula no math mode
\@appendToHelpPackages{icomma}{Insere o espa\co\ entre a 'v\ii rgula' e o d\ii gito seguinte, no modo matem\'atico, com o tamanho correto.}


\RequirePackage{graphicx}%% em vez de graphics
\@appendToHelpPackages{graphicx}{A package principal para incluir figuras num documento. Pode rodar, expandir, cortar, etc.  O uso t\ii pico \'e
\@macroName{includegraphics}{[opcoes]\{file.xxx\}}{.}
Tamb\'em define as funcionalidades para colorir o texto.
}

\RequirePackage{epsfig}
\@appendToHelpPackages{epsfig}{Para incluir figuras no formato Encapsulated PostScript com \@macroName{epsfig}{\{file.eps\}}{} em vez do
\@macroName{includegraphics}{\{file.eps\}}{.}%
}


\RequirePackage[usenames,dvipsnames]{xcolor}
\@appendToHelpPackages{xcolor}{Introduz exten\soes\ ao uso de texto colorido.}


\RequirePackage{xstring}%% manipula strings: \StrSubstitute, \StrBefore
\@appendToHelpPackages{xstring}{Introduz exten\soes\ \`a manipula\cao\ de strings.}


\RequirePackage{xifthen}%% extends the ifthen package
\@appendToHelpPackages{xifthen}{Exten\soes\ \`a package \texttt{ifthen}.}


\RequirePackage[portuges]{babel}
\@appendToHelpPackages{babel}{Uso da l\ii ngua portuguesa nos comandos que reportam em texto, como a designa\cao\ das sec\coes\ (Cap\ii tulo, Sec\cao\, Bibliografia, etc.), nomes dos estilos (Relat\'orio, Tese, etc.), al\'em de fazer a hifena\cao\ e acentua\cao\ das palavras.}


\RequirePackage{palatino} %% Palatino fonte usada
\@appendToHelpPackages{palatino}{Palatino \'e a fonte usada nesta classe.}


\RequirePackage[T1]{fontenc}% deve estar ANTES do \usepackage[xx]{inputenc}
\@appendToHelpPackages{fontenc}{\'E usada a codifica\cao\ de fontes T1.
Se usar num outro doc.tex, seu, deve coloc\'a-la ANTES do \texttt{$\backslash$RequirePackage[xx]\{inputenc\}}
 onde xx=latin1 ou utf8.}


\RequirePackage{booktabs}%%% para formatar tabelas mais lindas!
\@appendToHelpPackages{booktabs}{Para formatar tabelas mais lindas!}
\renewcommand{\arraystretch}{1.1}%% 1.1 fica bem, do booktabs


\RequirePackage{pageslts}%% pageslts package boa para o lastpage no doc
\@appendToHelpPackages{pageslts}{\'E boa para calcular corretamente o n\'umero da \'ultima p\'agina no documento (na vari\'avel \textit{lastpage}.}
\pagenumbering{arabic} %%% para evitar problemas(?) no contador


\RequirePackage{multirow}%% ter linhas e colunas juntas numa tabela
\@appendToHelpPackages{multirow}{Permite agregar linhas e/ou colunas numa tabela.}


\RequirePackage{float}%% a op\cao\ [H] coloca a fig no sitio "certo"
\@appendToHelpPackages{float}{Introduz a op\cao\ [H] num float, que o coloca no s\ii tio "certo", naquele que se quer. Use com cuidado pois pode dar mal: o float pode ficar cortado a meio, no final da p\'agina.}


\RequirePackage[portuges]{varioref}%%% faz ref com 'previous page', 'next page', etc.
\@appendToHelpPackages{varioref}{Faz refer\^encias do tipo 'previous page', 'next page', etc.. Com a package \texttt{babel} estas ficam em portugu\^es.}
\renewcommand{\reftextbefore}{(na p\'ag.\ \reftextvario{anterior}{precedente})}
\renewcommand{\reftextafter}{(na \reftextvario{p\'ag.\ seguinte}{pr\'oxima
                             p\'ag.\ })}
\renewcommand{\reftextcurrent}{{\reftextvario{nesta p\'agina}{}}}%%


 
\newboolean{@helpComandos}
\setboolean{@helpComandos}{false}

\DeclareOption{helpComandos}{\setboolean{@helpComandos}{true}}
\@appendToHelpOpcoes[helpComandos]{Help dos comandos opcionais na classe}{ }


\newboolean{@helpComandosPreambulo}
\setboolean{@helpComandosPreambulo}{false}

\DeclareOption{helpPreambulo}{\setboolean{@helpComandosPreambulo}{true}}
\@appendToHelpOpcoes[helpPreambulo]{Help dos comandos obrigat\'orios}{ }

\newboolean{@helpOpcoes}
\setboolean{@helpOpcoes}{false}

\DeclareOption{helpOpcoes}{\setboolean{@helpOpcoes}{true}}
\@appendToHelpOpcoes[helpOpcoes]{Help das op\coes\ desta classe}{%
H\'a 4 op\coes\ poss\ii veis: 1) criar um \ii ndice na 1$^{\rm \underline{a}}$ p\'agina (use \texttt{indice}); 2) escolher o tamanho default da fonte entre \texttt{10pt}, \texttt{11pt} e \texttt{12pt}; 3) escolher o formato \texttt{paper} no t\ii tulo da folha de rosto, que altera a listagem dos nomes dos autores; 4) usar a codifica\cao\ \texttt{utf8} se as files de texto o tiverem; e identificar o SO \texttt{unix}. Pode combinar todas as op\coes\ desde que separadas de v\ii rgulas.%
}


\newboolean{@helpPackages}
\setboolean{@helpPackages}{false}

\DeclareOption{helpPackages}{\setboolean{@helpPackages}{true}}
\@appendToHelpOpcoes[helpPackages]{Packages nesta classe}{%
Apresenta uma lista de todas as packages que s\ao\ logo inclu\ii das nesta classe. Para cada uma real\ca m-se os aspetos da sua inclus\ao, numa descri\cao\ muito abreviada.}

\DeclareOption{help}{%
 \setboolean{@helpComandos}{true}%
 \setboolean{@helpComandosPreambulo}{true}%
 \setboolean{@helpOpcoes}{true}
 \setboolean{@helpPackages}{true}}%% todas serao impressas

\@appendToHelpOpcoes[help]{Help de tudo: comandos, op\coes\ e packages usadas}{}%


\newboolean{@indice}
\setboolean{@indice}{false}

\DeclareOption{indice}{%%
  \setboolean{@indice}{true}
}
\@appendToHelpOpcoes[indice]{Criar um \II ndice}{Esta op\cao\ cria um \ii ndice na 1\upa\  %$^{\rm \underline{a}}$
p\'agina, logo ap\'os a folha de rosto. \'E uma lista com a numera\cao\ e os nomes de todas as sec\coes\ e subsec\coes\ que  relat\'orio tem. Aparece em letra mais pequena. Nota: esta op\cao\ \'e espec\ii fica desta classe.}

\newboolean{@artigo}
\setboolean{@artigo}{false}

\DeclareOption{paper}{%%<<--- opcao a usar
  \setboolean{@artigo}{true}
}
\@appendToHelpOpcoes[paper]{Capa de artigo cient\ii fico}{Esta op\cao\ altera a disposi\cao\ do texto na folha de rosto. Desaparece o formato em Turma, Grupo, Aula e Docente e ficam apenas os nomes dos autores do artigo, dispostos em linha. Pode ainda eliminar os nomes do Departamento e da Disciplina, definindo-os com  a sequ\^encia \{\textbackslash\textvisiblespace\} nos comandos respetivos. Nota: esta op\cao\ \'e espec\ii fica desta classe.}


\newboolean{@logoGazeta}
\setboolean{@logoGazeta}{false}

\DeclareOption{gazetaFisica}{%%<<--- opcao a usar
  \setboolean{@logoGazeta}{true}
}
\@appendToHelpOpcoes[gazetaFisica]{Logo da Gazeta de F\ii sica}{Esta op\cao\ mostra o logotipo da 'Gazeta de F\ii sica' na folha de rosto, assim como 
no cabe\cc alho de cada p\'agina. 
Nota: esta op\cao\ \'e espec\ii fica desta classe.}


\newcommand{\@encoding}{latin1}%default = ISO-8859-1 = Latin1 
\newboolean{@utf8}
\setboolean{@utf8}{false}

\DeclareOption{utf8}{%%<<--- opcao a usar
  \setboolean{@utf8}{true}
  \renewcommand{\@encoding}{utf8}
}
\@appendToHelpOpcoes[utf8]{Codifica\cao\ UTF8 das files}{\'E \textit{obrigat\'orio} usar a op\cao\ \texttt{utf8} se for esta a codifica\cao\ usada nos caracteres das files de texto: o seu 'relatorio.tex' e na 'relatorioFisExp.cls'. Nota: esta op\cao\ \'e espec\ii fica desta classe.}

\newboolean{@unix}
\setboolean{@unix}{false}
\newboolean{@windows}
\setboolean{@windows}{true}

\DeclareOption{unix}{%%
  \setboolean{@windows}{false}
  \setboolean{@unix}{true}
}
\@appendToHelpOpcoes[unix]{Erros na compila\cao\ em linux ou MacOS}{Com sorte esta op\cao\ pode ajudar a solucionar os problemas relacionados com a package \texttt{fancyhdr} mais antiga, pois passa a usar a \texttt{fancyheadings}. Experimente e veja se resolve o problema. Nota: esta op\cao\ \'e espec\ii fica desta classe.}



\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}%%original

\PassOptionsToClass{a4paper}{article}

\ProcessOptions\relax

\LoadClass{article}%%original



\RequirePackage[caption=false]{subfig}%%  para ter subfigs e subtables
\@appendToHelpPackages{subfig}{Para ter 'subfigs' e 'subtables' com legendas e labels pr\'oprios. \'E mais moderna que a \texttt{subfigure}. 
O comando a usar \'e o 
\texttt{\textbackslash subfloat[caption]\{\textbackslash includegraphics[]\{file.png\}\}}, etc.
}

\RequirePackage{caption}%% para alterar a forma do texto nas captions
\@appendToHelpPackages{caption}{Para alterar o formato do texto nas legendas.
Compat\ii vel com a \texttt{subfig}.}%

\captionsetup{font={footnotesize,sf}, labelfont=bf,
labelsep=period, margin=0.5mm}%




\RequirePackage[]{refcount}
\@appendToHelpPackages{refcount}{The package provides expandable macros to extract the data from references. Packages hyperref, nameref, titleref, and babel are supported.}%

\RequirePackage[%%cria hiper-referencias no .pdf
 pdfpagelayout=OneColumn,% Displays doc in continuous scrolling
 pdfstartview=FitH, %% Fits the width of the page to the window
 bookmarks=false%%% nao abre a lista de bookmarks no AcrobatReader
]{hyperref}%%% inclui as hiper-referencias no .pdf
\@appendToHelpPackages{hyperref}{inclui hiper-refer\^encias no \texttt{.pdf}, \`as figuras, tabelas, p\'aginas, links, etc.}%


\RequirePackage{footnotehyper}%% 
\@appendToHelpPackages{footnotehyper}{Cria o ambiente \texttt{footnote} sem precisar da package desse nome, com todas as suas funcionalidades, como fazer hiper-refer\^encias em notas de rodap\'e e usar cor. \'E compat\ii vel com a package \texttt{hyperref} mas aut\'onoma.
}

\RequirePackage{enumitem}%% para alterar a numeracao das listas:
\@appendToHelpPackages{enumitem}{Permite alterar mais facilmente a numera\cao\ e formata\cao\ de ambientes de lista: \texttt{enumerate}, \texttt{itemize} e \texttt{description}.
}%


\RequirePackage{zref-user,zref-abspage,zref-lastpage}
\@appendToHelpPackages{zref}{Usa as 3 variantes \texttt{zref-user}, \texttt{zref-abspage}, \texttt{zref-lastpage}, para colocar refer\^encia a esta file no rodap\'e da \'ultima p\'agina no documento.}

\@ifpackagelater{zref-abspage}{2013/02/09}{%<<-- e' o caso
  \newcommand*{\iffancylastpage}{%
    \ifnum\zref@extract{LastPage}{abspage}=\numexpr\value{abspage}+1 %%%
      \expandafter\@secondoftwo%% 1o arg passado a \iffancylastpage
    \else%% INVERTI A ORDEM DO IF
      \expandafter\@secondoftwo%% 2o arg passado a \iffancylastpage
    \fi
  }%
}{%
  \newcommand*{\iffancylastpage}{%
    \ifnum\zref@extractdefault{LastPage}{abspage}{-1}%
        =\numexpr\value{abspage}+1\relax
      \expandafter\@firstoftwo
    \else
      \expandafter\@secondoftwo
    \fi
  }%
}



\ifthenelse{\boolean{@unix}}
 {\RequirePackage[\@encoding]{inputenc}%%% latin1
   \RequirePackage{fancyheadings}
 }
 {\ifthenelse{\boolean{@windows}}
   {\RequirePackage[\@encoding]{inputenc}%%latin1
    \RequirePackage{fancyhdr}
   }
   {\RequirePackage[cp850]{inputenc}%% evitar
    \RequirePackage{fancyheadings}%%obsoleto!!!
   }
 }


\@appendToHelpPackages{fancyhdr}{The package provides extensive facilities, both for constructing headers and footers, and for controlling their use (for example, at times when LaTeX would automatically change the heading style in use).
Note-se que a package alternativa \texttt{fancyheadings} \'e considerada obsoleta e deve ser evitada.
}%


\@appendToHelpPackages{inputenc}{Usa descri\coes\ de caracteres que s\ao\ corretamente apresentadas pelo 'fontencoding', escolhido na package \texttt{fontenc}. Como a deve usar numa file sua: \texttt{$\backslash$usepackage[xx]\{inputenc\}} onde xx=\texttt{latin1} ou \texttt{utf8}. Mas deve 
estar DEPOIS do comando \texttt{$\backslash$usepackage[T1]\{fontenc\}}. \textit{Esta ordem \'e importante}.
}


\setlength{\textheight}{243mm}
\setlength{\textwidth}{174truemm}
\setlength{\oddsidemargin}{-6mm}
\setlength{\evensidemargin}{-6mm}
\setlength{\topmargin}{-15mm}



\lhead{\scriptsize\textsf{\@NomeCursoShort}}
\ifthenelse{\boolean{@logoGazeta}}
{%% gazeta
\chead{\includegraphics[height=6mm]{logoGazetaFisica.png}\vspace*{-4.3mm}}
\rhead{\scriptsize\textsf{\@anocurso}\vspace*{-4mm}}
}% gazeta
{%% outros headers
\chead{\includegraphics[height=6mm]{ciencias_ul_azul_h_sass.png}}
\rhead{\scriptsize\textsf{\@anocurso}}
}%%

\lfoot{\scriptsize\textsf{{\bfseries\@NomeCurtoTrabalhoLab}, \tiny\@nomesAutores}}
\rfoot{\scriptsize\textsf{p\'ag. \arabic{page} de \zref[abspage]{LastPage}}}


\newcommand{\rodapeComVersao}%
  {\hspace*{70truemm}\tiny\LaTeX\  \textsf{\@versao}}

\fancyfoot[C]{% identifica esta file de estilo da Fis Exp I
  \iffancylastpage{\rodapeComVersao}{}%
}

\ifthenelse{\boolean{@logoGazeta}}{%muda a cor da linha do header
\renewcommand{\headrule}{\color{redGazeta}\noindent\varhrulefill{0.3mm}} 
}%
{}%% nao altera a cor da linha horizontal do hader

\ifthenelse{\boolean{@windows}}%% default
   {\renewcommand{\footrulewidth}{0.pt}%0.2pt retirado em nov/2017
    \renewcommand{\plainfootrulewidth}{0.pt}%%0.1pt
    \setlength{\headheight}{15mm}%19mm
   }%
   {%% velhas definicoes
    \footrulewidth 0.pt%%%0.2pt  retirado em nov/2017
    \plainfootrulewidth 0.pt %0.1pt  retirado em nov/2017
    \headheight 19mm
   }


\parindent 4mm %% valor de indentacao na 1a linha do paragrafo
\parskip 2mm %% valor de separacao vertical entre paragrafos
\renewcommand{\baselinestretch}{1.05}
\selectfont %%%so funciona depois deste comando



\newcommand{\@NomeDepartamento}{Departamento de F\ii sica}
\newcommand{\@NomeDepartamentoShort}{Dep.\ F\ii sica}
\newcommand{\Instituicao}[2][\ ]{%
  \renewcommand{\@NomeDepartamento}{#2}
  \renewcommand{\@NomeDepartamentoShort}{#1}
}
\@appendToHelpPeambulo[Instituicao]{\{nome completo\}}%[nome abreviado]
{Instituição}{no pre\^ambulo do LaTeX. Est\'a pr\'e-definido como "Departamento de F\ii sica". O \texttt{nome completo} parece na folha de rosto. Se quiser mudar o nome defina-o com este comando. Para limpar esta linha na folha de rosto use como \texttt{nome completo} a sequ\^encia \{\textbackslash\textvisiblespace\}.%
}%

\newcommand{\@NomeCurso}{F\ii sica Experimental I}
\newcommand{\@NomeCursoShort}{Fis.\ Exp.\ 1}
\newcommand{\NomeDoCurso}[2][\ ]{%
  \renewcommand{\@NomeCurso}{#2}
  \renewcommand{\@NomeCursoShort}{#1}
}
\@appendToHelpPeambulo[NomeDoCurso]{[nome abreviado]\{nome completo\}}%
{Nome do Curso}{no pre\^ambulo do LaTeX. Est\'a pr\'e-definido como "F\ii sica Experimental I". O \texttt{nome completo} parece na folha de rosto e o \texttt{nome abreviado} aparece no cabe\ca lho esquerdo de cada p\'agina. Se quiser mudar o nome da disciplina use este comando. Para limpar esta linha na folha de rosto use como \texttt{nome completo} a sequ\^encia \{\textbackslash\textvisiblespace\}.%
}%

\newcommand{\@NomeTrabalhoLab}{defina o Nome do Trabalho Laboratorial executado}
\newcommand{\@NomeCurtoTrabalhoLab}{defina o Nome CURTO do Trabalho Laboratorial executado}
\newcommand{\nomeDoTrabalho}[2][]{%
 \renewcommand{\@NomeTrabalhoLab}{#2}%
 \ifthenelse{\equal{#1}{}}
 {\renewcommand{\@NomeCurtoTrabalhoLab}{#2}}
 {\renewcommand{\@NomeCurtoTrabalhoLab}{#1}}
}
\@appendToHelpPeambulo[nomeDoTrabalho]{[nome curto]\{nome completo\}}{Nome do Trabalho Laboratorial}{no pre\^ambulo do LaTeX. \'E obrigat\'orio definir o Nome Curto (usado em rodap\'e) e o nome Completo do Trabalho Laboratorial executado%
}%

\@appendToHelpPeambulo[autorX]{[IDfcul]\{nome\}}{Autor ID}{no pre\^ambulo do LaTeX. \'E obrigat\'orio identificar pelo menos o \texttt{autorA}, incluindo o n\'umero de aluno \texttt{IDfcul} e o \textit{nome} do autor. Podem haver at\'e 4 autores pois X=A, B, C e D. Com a op\cao\ \texttt{paper} o valor dos diversos \texttt{IDfcul} aparecer\ao\ listados em rodap\'e na p\'agina de rosto. Neste caso, pode colocar no campo \texttt{IDfcul} o email de contacto da pessoa, outra identifica\cao\ relevante ou simplesmente omitir.%
}%%%%


\newcommand{\@dataReport}{defina a data do relat\'orio, ex: 23 de Abril}
\newcommand{\dataDoRelatorio}[1]{\renewcommand{\@dataReport}{#1}}
\@appendToHelpPeambulo[dataDoRelatorio\{data\}]{}{Data do Relat\'orio}{no pre\^ambulo do LaTeX. \'E obrigat\'orio identificar a data em que foi entregue o relat\'orio. ex: 23 de Abril%
}%


\newcommand{\@anocurso}{2017}%% default value
\newcommand{\ano}[1]{\renewcommand{\@anocurso}{#1}}
\@appendToHelpPeambulo[ano\{numeral\}]{}{Ano civil}{no pre\^ambulo 
do LaTeX. \'E obrigat\'orio definir o ano civil da disciplina.%
}%


\newcommand{\@turmaNumber}{PL-XX}%%defina a Pr\'atica Laboratorial. ex: PL-22
\newcommand{\Turma}[1]{\renewcommand{\@turmaNumber}{#1}}
\@appendToHelpPeambulo[Turma\{PL-nn\}]{}{Turma do Lab}{no pre\^ambulo do LaTeX. \'E obrigat\'orio identificar a turma Pr\'atica Laboratorial. ex: PL-22.%
}%

\newcommand{\@grupoNumber}{XX}%%defina o n. do grupo na turma. ex: 2
\newcommand{\GrupoNum}[1]{\renewcommand{\@grupoNumber}{#1}}
\@appendToHelpPeambulo[GrupoNum\{numeral\}]{}{N\'umero do Grupo}{no pre\^ambulo do LaTeX. \'E obrigat\'orio identificar o n\'umero do grupo na turma Pr\'atica.%
}%


\newcommand{\@dataAulaLab}{XX de Março}
\newcommand{\dataAulaLaboratorial}[1]{%
 \renewcommand{\@dataAulaLab}{#1}
}
\@appendToHelpPeambulo[dataAulaLaboratorial\{data\}]{}{Data da aula Laboratorial}{no pre\^ambulo do LaTeX. \'E obrigat\'orio identificar a data da aula. ex: 23 de Abril%
}%

\newcommand{\@professor}{O nome do professor}
\newcommand{\NomeDocenteLab}[1]{\renewcommand{\@professor}{#1}}
\@appendToHelpPeambulo[NomeDocenteLab\{nome\}]{}{Nome do docente}{no pre\^ambulo do LaTeX. \'E obrigat\'orio definir o nome do/a docente que d\'a as aulas de laborat\'orio.%
}%


\newcommand{\@autorA}{}
\newcommand{\@autorB}{}
\newcommand{\@autorC}{}
\newcommand{\@autorD}{}
\newcommand{\@autorAid}{}
\newcommand{\@autorBid}{}
\newcommand{\@autorCid}{}
\newcommand{\@autorDid}{}

\providecommand{\autorA}[2][]{%
  \renewcommand{\@autorA}{#2}
  \renewcommand{\@autorAid}{#1}
  \newcommand{\@nomesAutores}{#2}%%% inicia lista simples: nome,nome,
  \ifthenelse{\equal{#1}{}}%% autor nao tem email/numero
   {\newcommand{\@nomesAutorMarcas}{#2}}%inicia lista com: nome,...
   {\newcommand{\@nomesAutorMarcas}{#2$^*$}}%inicia lista: nome^marca,...
  \@appendToEmailAutores[*]{#1}%% * = simbolo autorA
  \newcommand{\@listAutoresComID}{#2, {\small n.#1}}%%% def inicial
}

\providecommand{\autorB}[2][]{%
  \renewcommand{\@autorB}{#2}
  \renewcommand{\@autorBid}{#1}
}
\providecommand{\autorC}[2][]{%
  \renewcommand{\@autorC}{#2}
  \renewcommand{\@autorCid}{#1}
}
\providecommand{\autorD}[2][]{%
  \renewcommand{\@autorD}{#2}
  \renewcommand{\@autorDid}{#1}
}

\newcommand{\@emailAutores}{}

\newcommand{\@appendTolistAutoresComID}[2]{\expandafter\def\expandafter\@listAutoresComID\expandafter{\@listAutoresComID\\ & #1, {\small n.#2}}%%% novo texto a acrescentar
}

\providecommand{\@appendToNomesAutorMarcas}[3][]{% #1=marca #2=ID #3=nome
  \ifthenelse{\equal{#2}{}}%% autor nao tem email
   {\ifthenelse{\equal{\@nomesAutorMarcas}{}}%%lista nao tem emails
     {\edef\@nomesAutorMarcas{#3}}% inicia lista com este nome
     {\expandafter\edef\expandafter\@nomesAutorMarcas{\@nomesAutorMarcas, #3}}
   }%%
   {\ifthenelse{\equal{\@nomesAutorMarcas}{}}%%lista nao tem emails
     {\edef\@nomesAutorMarcas{#3\ensuremath{^{#1}}}}% inicia lista com este nome
     {\expandafter\edef\expandafter\@nomesAutorMarcas{\@nomesAutorMarcas, #3\ensuremath{^{#1}}}%
     }%
   }%
}%fim \@appendToNomesAutorMarcas

\providecommand{\@appendToEmailAutores}[2][]{%
 \ifthenelse{\equal{\@emailAutores}{}}%%lista nao tem emails
  {\ifthenelse{\equal{#2}{}}{}%% faz nada, autor nao tem email
   {\expandafter\edef\expandafter\@emailAutores{\ensuremath{^{#1}}#2}}%cria ^marca.email
  }%
  {\ifthenelse{\equal{#2}{}}{}%% faz nada, autor nao tem email
   {\expandafter\edef\expandafter\@emailAutores{\@emailAutores, \ensuremath{^{#1}}#2}}%
  }%append ,^marca.email
}%fim \@appendToEmailAutores

\newcommand{\@incluiAutorNasListas}[3][]{%[#1]=marca #2=ID #3=nome
  \ifthenelse{\equal{#3}{}}{}%nao ha nada para acrescentar
  {%% acrescenta os dados do autor
   \@appendTolistAutoresComID{#3}{#2}%
   \edef\@nomesAutores{\@nomesAutores, #3}%% lista simples de nomes
   \@appendToEmailAutores[#1]{#2}%
   \@appendToNomesAutorMarcas[#1]{#2}{#3}%
  }%
}%% \@incluiAutorNasListas

\newcommand{\@makeAutores}{% o autor A ja' esta' feito.
 \@incluiAutorNasListas[\dagger]{\@autorBid}{\@autorB}%[#1]=marca #2=ID #3=nome
 \@incluiAutorNasListas[\ddagger]{\@autorCid}{\@autorC}%
 \@incluiAutorNasListas[\dagger\dagger]{\@autorDid}{\@autorD}%
}%% end\@makeAutores

\newcommand{\listaAutores}{\@nomesAutores}%%
\newcommand{\listaAlunos}{\@nomesAutores}%% mantem compatibilidade antiga
\@appendToHelpComandos[listaAutores\ ]{}{Lista de Autores}{para referenciar a lista dos nomes dos autores. Aparece no rodap\'e e como a lista dos autores no modo \texttt{paper}.%
}%


\newenvironment{referencias}
 {\vspace*{-1mm}%
 \begin{thebibliography}{1}%% usa-se '\bibitem{label}' label=refer\^encia 
 \small%
 \itemsep -0.3mm%
 \vspace*{-3mm}%
 }%%inicio\
 {\end{thebibliography}}%%%fim


\newcommand*\varhrulefill[1]{\leavevmode\leaders\hrule height#1\hfill\kern0pt}%[0.4pt]

\definecolor{azulFCUL}{cmyk}{1,0.68,0,0.12}%%% C 100% M 68% Y 0% K 12%
\definecolor{redGazeta}{RGB}{190,0,40}%%% C 100% M 68% Y 0% K 12%

\newcommand{\@textoGrupo}{
\ifthenelse{\equal{\@grupoNumber}{}}
 {}%%% n\ao\ ha texto do grupo
 {\small$-$ grupo \@grupoNumber}
}

\newcommand{\blankfootnote}[1]{{%%use the "numbering" scheme for footnotes and
  \renewcommand{\thefootnote}{\fnsymbol{footnote}}%
  \footnotetext[0]{#1}% Print footnote text
}}

\newcommand{\@nomesTituloPagInicial}{%
\ifthenelse{\boolean{@artigo}}%
{\textsc{%%% e' um paper
{\normalsize\ }\\[10mm]%
\LARGE\@NomeTrabalhoLab\\[15mm]%
 {\large\@NomeCurso}\\[1mm]%% \underline{\NomeCurso}
 {\normalsize \@NomeDepartamento}\\[19mm]%
} %% \textsc
\large
\author{\@nomesAutorMarcas}%%
\ifthenelse{\equal{\@emailAutores}{}}{}%obrigatorio FORA do \author{}
   {\blankfootnote{\@emailAutores}}%%%
}%%fim do paper
{%% %%%% e' um relatorio normal %%%%%%%%%%%%%%%
\textsc{{\normalsize Relat\'orio do Trabalho Experimental}\\[4mm]%
\@NomeTrabalhoLab\\[9mm]%
 {\Large\@NomeCurso\ --\ \@anocurso}\\[1mm]%% \underline{\NomeCurso}
 {\large \@NomeDepartamento}\\[19mm]%
 } %% \textsc
\large
\begin{tabular}{l r}
Grupo: & \@listAutoresComID\\[3mm]
Turma: & \@turmaNumber\@textoGrupo\\[3mm]
Aula de: & {\small\@dataAulaLab}\\[3mm]%Date the experiment was performed
\normalsize Docente: & \normalsize\@professor% nome do prof
\end{tabular}
\author{}%%% fica vazio so' para nao dar a "warning message"
}
}%%% \@nomesTituloPagInicial

\title{%
\ifthenelse{\boolean{@logoGazeta}}
{\includegraphics[height=25mm]{logoGazetaFisica.png}\\[-5mm]%% 29mm é ok
\textcolor{redGazeta}{\noindent\varhrulefill{0.4mm}}\\[42mm]%%linha vermelha
\@nomesTituloPagInicial}%Gazeta  height=30mm
{\includegraphics[height=29mm]{ciencias_ul_azul_h.png}\\[-5mm]%width=100mm
\textcolor{azulFCUL}{\noindent\varhrulefill{0.4mm}}\\[42mm]%%%linha azul
\@nomesTituloPagInicial}%%FCUL
}%% \title

\date{\vfill\small\@dataReport\ de \@anocurso}

\AtBeginDocument{%%  HERE IT IS THE BEGINNING.....
\@makeAutores
\hypersetup{
 pdftitle={\@NomeTrabalhoLab}, % título
 pdfauthor={\@nomesAutores},     % autor
 pdfsubject={Relat\'orio de \@NomeCurso, \@anocurso, FCUL},%
 pdfcreator={LaTeX}, % creator of the document
 pdfproducer={relatorioFisExp.cls  de Rui Jorge Agostinho},% of the document
 pdfkeywords={An\'alise de dados,}{ F\ii sica Experimental,}{ estat\ii stica}
}%%\hypersetup

\maketitle
\thispagestyle{empty}%% must put \thispagestyle{empty} after \maketitle 
\newpage

\begingroup%%% começa fonte
  \fontencoding{T1}\fontfamily{lmss}\fontseries{m}\fontshape{n}\fontsize{10}{0.8em}\selectfont
  \ifthenelse{\boolean{@helpOpcoes}}
   {\@helpTxtOpcoes}%
   {}%%% nao imprime os helps das opcoes
  \ifthenelse{\boolean{@helpComandosPreambulo}}
   {\@helpTxtComandosPeambulo}%
   {}%%% nao imprime os helps dos comandos do Preambulo
  \ifthenelse{\boolean{@helpComandos}}
   {\@helpTxtComandos}%
   {}%%% nao imprime os helps dos comandos
  \ifthenelse{\boolean{@helpPackages}}
   {\@helpTxtPackages}%
   {}%%% nao imprime os helps das Packages 
\endgroup%%% termina fonte

\pagestyle{fancy}
\ifthenelse{\boolean{@indice}}% inclui o indice aqui
 {\footnotesize\tableofcontents\normalsize}%tamanho pequeno
 {}%%
}%%%%%  END AtBeginDocument

\providecommand{\ii}{\'{\i}}
\providecommand{\coes}{\-\c c\~{o}\-es}
\providecommand{\cao}{\-\c{c}\~{a}o}
\providecommand{\oe}{\~{o}e} %%% ATENCAO: o LATEX ja' tem o comando 
\renewcommand{\oe}{\~{o}e} 
\providecommand{\oes}{\~{o}es}
\providecommand{\aes}{\~{a}es}
\providecommand{\ae}{\~{a}e} %%% ATENCAO: o LATEX ja' tem o comando
\renewcommand{\ae}{\~{a}e}
\providecommand{\ao}{\~{a}o}
\providecommand{\co}{\-\c{c}o}
\providecommand{\ca}{\-\c{c}a}
\providecommand{\sao}{\-s\~ao}
\providecommand{\soes}{\-s\~oes}
\providecommand{\sae}{\-s\~ae}
\providecommand{\saes}{\-s\~aes}
\providecommand{\cc}{\c{c}} %%% ATENCAO: a "letter" ja' tem o comando 
\renewcommand{\cc}{\c{c}}   %%%          \cc = carbon copy to....
\providecommand{\me}{\--me}
\providecommand{\se}{\--se}
\providecommand{\te}{\--te}
\providecommand{\la}{\--la}
\providecommand{\lhe}{\--lhe}
\providecommand{\nos}{\--nos}

\providecommand{\II}{\'I}
\providecommand{\COES}{\-\c C\~{O}ES}
\providecommand{\CAO}{\-\c{C}\~{A}O}
\renewcommand{\OE}{\~{O}E}
\providecommand{\OES}{\~{O}ES}
\providecommand{\AES}{\~{A}ES}
\renewcommand{\AE}{\~{A}E}
\providecommand{\AO}{\~{A}O}
\providecommand{\CO}{\-\c{C}O}
\providecommand{\CA}{\-\c{C}A}
\providecommand{\SAO}{\-S\~AO}
\providecommand{\SOES}{\-S\~OES}
\providecommand{\SAES}{\-S\~AES}
\providecommand{\CC}{\c{C}}
\providecommand{\ME}{\--ME}
\providecommand{\SE}{\--SE}
\providecommand{\TE}{\--TE}
\providecommand{\LA}{\--LA}
\providecommand{\LHE}{\--LHE}
\providecommand{\NOS}{\--NOS}

\providecommand{\UpScript}[1]{\textsuperscript{\underline{#1}}}%% nova definição
\providecommand{\upo}{\UpScript{o}}
\providecommand{\upa}{\UpScript{a}}

\newcommand{\notasExplicativasDosComandos}{%
\noindent
Este estilo de relat\'orio fornece alguns comandos de formata\cao\ de texto que facilitam a escrita em \LaTeX. Pode ver esta mesma listagem incluindo a macro \texttt{\textbackslash notasExplicativasDosComandos} a meio do seu texto, 
que d\'a a mesma descri\cao\ da op\cao\ \texttt{helpComandos} no in\ii cio do documento.\par
\@helpTxtComandos
}


\newcommand{\notasExplicativasDoPreambulo}{\noindent 
O estilo \texttt{relatorioFisExp} requer a defini\cao\ de diversos 
par\^ametros, que depois s\ao\ inclu\ii dos no documento na altura da sua 
formata\cao\ (compila\cao).
Pode ver esta mesma listagem incluindo a macro \texttt{\textbackslash notasExplicativasDoPreambulo} a meio do seu texto, que d\'a
a mesma descri\cao\ da op\cao\ \texttt{helpPreambulo} no in\ii cio 
do documento.\par
\@helpTxtComandosPeambulo
}



\newcommand{\notasExplicativasPackages}{\noindent 
O estilo \texttt{relatorioFisExp} inclui logo uma variedade de packages 
que facilitam a formata\cao\ do \LaTeX, e que também ficam dispon\ii veis para o 
utilizador.
Segue-se a lista de todas as packages que são inclu\ii das, com brev\ii ssimas indicaç\oes\  sobre cada uma. 
Esta mesma listagem pode ser vista usando a macro \texttt{\textbackslash notasExplicativasPackages} a meio do seu texto, que d\'a
a mesma descri\cao\ da op\cao\ \texttt{helpPackages} no in\ii cio 
do documento.\par
\@helpTxtPackages
}



\newcommand{\notasExplicativasEstruturaRelatorio}{%
\paragraph{NOTA Explicativa:} Este texto \'e exemplo da estrutura de um Relat\'orio de F\ii sica Experimental.\\
Esta estrutura deve ser usada mesmo se decidir escrever o seu relat\-\'orio com outra aplica\cao. Pode alterar os nomes das Sec\coes\ aqui sugeridas, mas a estrutura deve ser mantida:
\vspace*{-3mm} %%% reduz o espaço vertical entre estes par\'agrafos
\begin{enumerate}
\itemsep -1mm %%% reduz o espaço vertical entre os itens
\item Resumo
\item Objetivos do Trabalho
\item Procedimentos Experimentais
    \vspace*{-2mm} %%% reduz o espaço vertical entre estes par\'agrafos
	\begin{enumerate}[label*=\arabic*.]
	\item Medi\coes\ e Dados Obtidos
	\end{enumerate}
\item An\'alise de Resultados
\item Discuss\ao\ e Conclus\oes
\item Refer\^encias
\end{enumerate}
\vspace*{-2mm} %%% reduz o espaço vertical entre estes par\'agrafos
Deve tamb\'em incluir as Subsec\coes\ e Subsubsec\coes\ que achar necess\'arias para aumentar a legibilidade e compreens\ao\ do seu relat\'orio.
}

\newcommand{\notasExplicativasLaTeX}{%
\paragraph{Ideias básicas sobre \LaTeX:} 
O objetivo deste texto \'e demonstrar a utiliza\cao\ do \LaTeX\ em v\'arias situa\coes\ de texto cient\ii fico, como algumas das suas capacidades de formata\cao.

H\'a muita informa\cao\ na web sobre a utiliza\cao\ do \LaTeX\ e aconselha-se a sua consulta. O melhor reposit\'orio de informa\cao\ est\'a em \href{http://pt.wikibooks.org/wiki/Latex}{pt.wikibooks.org/wiki/Latex} e \textit{recomenda-se a sua utiliza\cao}. \textbf{Nota}: a \'ultima letra no nome \LaTeX\ \'e um $\chi$ grego mai\'usculo, da\ii\ pronunciar-se \textit{lateq}.

O \LaTeX\ n\ao\ \'e um processador de texto "\textsf{wysiwyg}"\ (iniciais de "\textit{what you see is what you get}"\ $=$ "\textit{o formato que v\^e no ecrã \'e como fica impresso}"), mas \'e uma linguagem de formata\cao\ de texto. Em \LaTeX\ escreve-se numa file de texto simples (\texttt{fl.txt}), que contém o texto pretendido a ficar impresso, mas também os comandos que o formatam para produzir a vers\ao\ a imprimir (pdf). Para entender melhor, compare as vers\oes\  desta file em \texttt{.tex} e \texttt{.pdf}.

\textbf{Procedimento para compilar o seu \LaTeX}--  
\textbf{1)} escrever o texto numa file "\texttt{fl.tex}"\ que n\ao\ fica formatada em "wysiwyg". 
\textbf{2)} compila-se esta file com o comando: "\texttt{pdflatex fl.tex}" (clica no \ii cone ou usa F1), que gera a file bem formatada "\texttt{fl.pdf}". 
\textbf{3)} As refer\^encias a n\'umeros de p\'agina, figuras, equa\coes, tabelas e bibliografia, s\'o aparecem com a numera\cao\ correta depois de compilar a sua file 2 (ou 3) vezes seguidas.

Para facilitar o trabalho est\ao\ dispon\ii veis (gratuitamente) muitos programas que fazem a edi\cao\ do texto e a inclus\ao\ simplificada dos comandos \LaTeX, fazendo realce colorido dos comandos e estruturas. Para Apple macOS \textit{recomenda-se} o \href{http://www.xm1math.net/texmaker/download.html}{Texmaker} que tamb\'em tem \'optimas vers\oes\ para Linux e MS-Windows. O Texmaker necessita do compilador \href{http://tug.org/mactex/}{MacTex} que \'e do melhor que h\'a. Para MS-Windows também tem o editor 
\href{http://www.texniccenter.org}{TeXnicCenter} que usa o compilador 
\href{http://www.miktex.org}{MikTeX} ou o 
\href{http://www.tug.org/texlive/}{TexLive}, que funciona noutras plataformas. 


Para quem se habituou a escrever no processador de texto MSWord, h\'a conversores de documentos como o \href{http://www.wordtolatex.com}{Word-to-LaTeX} que permitem exportar files \texttt{fl.doc} para formato \LaTeX\ de um modo n\ao\ bom mas aceit\'avel. Depois, \textit{\'e preciso rearranjar o seu texto na file} \texttt{fl.tex}, introduzindo-o nas sec\coes\ respetivas, ajustar os comandos de inclus\ao\ de imagens, as estruturas de tabelas e listas. No nosso caso a primeira linha \textit{deve obrigatoriamente} ter a \textit{classe} destes relat\'orios: 
\textsf{\small$\backslash$documentclass[11pt]\{relatorioFisExp\}}%
}

\newcommand{\notasExplicativasObjectivosTrabalho}{%
\paragraph{NOTA Explicativa:} Apresente uma descri\cao\ sucinta dos objetivos cient\ii ficos do trabalho: que leis f\ii sicas se pretendem estudar e que m\'etodos se pretendem usar e/ou estudar se for esse o caso.%
}

\newcommand{\notasExplicativasProcedimentosExperimentais}{%
\paragraph{NOTA Explicativa:} Como o detalhe dos procedimentos est\'a no protocolo, deve apenas incluir uma \textit{breve} descri\cao\ dos mesmos. Por\'em, dever\'a elaborar mais as situa\coes\ em que os procedimentos efetuados n\ao\ seguiram o protocolo, ou se h\'a raz\oes\ para explicitar melhor o que realizou.}

\newcommand{\notasExplicativasAspectosTeoricos}{%
\paragraph{NOTA Explicativa:} Devem aqui realçar-se alguns dos aspetos te\'oricos que sejam mais relevantes para o relat\'orio. Note-se que em geral est\ao\ todos descritos no protocolo e, por isso, reduza \`as leis e equa\coes\ que ser\ao\ usadas na an\'alise de resultados, mas deve ajuizar da sua extens\ao.}

\newcommand{\notasExplicativasMedicoesDadosObtidos}{%
\paragraph{NOTA Explicativa:} O ideal ser\'a incluir todos os dados experimentais obtidos mas isso \'e muitas vezes impratic\'avel, e noutras vezes nem \'e desej\'avel. Al\'em disso demora-se algum tempo a copiar as tabelas de todos os dados obtidos para o texto, devido \`a sua quantidade. Dependendo da situa\cao, devem ou podem ser apenas inclu\ii dos:
\vspace*{-3mm}%%%  reduz o espaço vertical entre estes par\'agrafos
\begin{itemize}
\itemsep -1mm  %%% reduz o espaço vertical entre os itens
\item Um resumo com os mais significativos.
\item Agrafar fotoc\'opias do caderno, como anexo.
\item Agrafar a lista impressa dos mesmos, como anexo.
\item Coloc\'a-los online para se poderem consultar, inclu\ii ndo o endereço {\tt url}\cite{nossosdados} nas refer\^encias.
\end{itemize}
\vspace*{-3mm}
}

\newcommand{\notasExplicativasAnaliseResultados}{%
\paragraph{NOTA Explicativa:} Os resultados s\ao\ produzidos recorrendo a tabelas e an\'alise estat\ii stica dos valores medidos, aos par\^ametros de ajuste aos dados  e visualizados em gr\'aficos, e finalmente usados nas equa\coes\ f\ii sicas adequadas. Deve-se depois discutir em detalhe os resultados que se deduzem dos valores obtidos:
\vspace*{-1.5mm}
\begin{itemize}
\itemsep -0.5mm
\item Ao deduzir o mesmo par\^ametro por duas vias, compar\'a-los e discutir qual deles \'e melhor.
\item Comparar os valores obtidos com os valores esperados, se for caso disso.
\item Discutir a raz\ao\ que fundamenta desvios sistem\'aticos nos resultados obtidos, se existirem. 
\end{itemize}
}

\newcommand{\notasExplicativasResultadosConclusoes}{%
\paragraph{NOTA Explicativa:} Baseando-se nos resultados deduzidos dos valores experimentais, devem-se discutir as implica\coes\ cient\ii ficas dos mesmos, ou seja, a confirma\cao\ da lei f\ii sica em causa, o grau de incerteza nessa conclusão, o que se poderia fazer para melhorar os resultados tanto na metodologia experimental como no tratamento de dados realizado.
}

\newcommand{\http}[1]{%
\href{http://#1}{\footnotesize http:/\!/#1}%
}
\newcommand{\https}[1]{%
\href{https://#1}{\footnotesize https:/\!/#1}%
}
\@appendToHelpComandos[http\{url\}]{}{URL}{para referenciar um endereço URL. O texto \texttt{url} deve omitir a parte \texttt{http://} %
}%
\@appendToHelpComandos[https\{url\}]{}{URLs}{para referenciar um endereço URL seguro. O texto \texttt{url} deve omitir a parte \texttt{https://}. Estes comandos reduzem o tamanho da fonte do texto \texttt{url}. %
}%


\providecommand{\eq}{\ensuremath{\!=\!}}%%%  sinal de = com pouco espaço
\providecommand{\m}{\ensuremath{\!-\!}}%%%  sinal de - com pouco espaço
\@appendToHelpComandos[eq]{ \textbackslash m.}{Sinais com espa\co s curtos}{  
Estes sinais deixam menos espa\co\ de separa\cao\ \`a sua esquerda e direita e por vezes podem ser \'uteis. 1) O sinal de igual: x\textbackslash\texttt{eq} y = 'x\eq y', que normalmente fica: $x=y$.
2) O sinal de subtra\cao: x\textbackslash\texttt{m} y = 'x\m y', que normalmente fica: $x-y$. Podem ser usados no texto em linha, assim como dentro do modo matem\'atico.}

\newcommand{\smallSizeMath}[1]%%FUNCIONA!!!
  {\protect{\begingroup\everymath{\scriptstyle}\ensuremath{#1}\endgroup}}


\newcommand{\kohm}{\ensuremath{\mathrm{k\Omega}}}
\newcommand{\Mohm}{\ensuremath{\mathrm{M\Omega}}}
\newcommand{\ohm}{\ensuremath{\mathrm{\Omega}}}
\newcommand{\mA}{\ensuremath{\mathrm{mA}}}
\newcommand{\A}{\ensuremath{\mathrm{\ A}}}
\newcommand{\uA}{\ensuremath{\mu \mathrm{A}}}
\newcommand{\us}{\ensuremath{\mu \mathrm{s}}}

\@appendToHelpComandos[xxx]{ .}{Resist\^encia e Corrente el\'etrica}{ Existem abreviaturas \texttt{xxx} de m\'ultiplos e sub-m\'ultiplos de unidades que podem ser usados no texto em linha, assim como dentro do modo matem\'atico. Os comandos dispon\ii veis s\ao\ os seguintes:
\textbackslash\texttt{kohm} = \kohm\ ; \textbackslash\texttt{Mohm} = \Mohm\ ;
\textbackslash\texttt{ohm} = \ohm\ ; \textbackslash\texttt{mA} = \mA\ ;
\textbackslash\texttt{A} = \A\ ; \textbackslash\texttt{uA} = \uA\ ; 
\textbackslash\texttt{us} = \us. NOTA: estes comandos \textit{colam-se \`a letra} que vier a seguir. Se quiser separ\'a-los com um espa\co\ em branco deve acrescentar-lhes um \textit{backslash-espa\co}: \textbackslash\texttt{kohm}\textbackslash\textvisiblespace.
}



\providecommand{\Exp}[3][]{\ensuremath{#2%%%  ax10^b unidade
   \ifthenelse{\equal{#3}{}}{}%%% n\ao\ h\'a expoente
   {\begingroup\everymath{\scriptstyle}\!\times\!\endgroup}10^{#3}%%%% h\'a expoente
    \ifthenelse{\equal{#1}{}}{}{\>\mathrm{#1}}}%%h\'a unidades \mathrm{#1}
}%%

\@appendToHelpComandos[Exp]{[u]\{m\}\{e\}}{Nota\cao\ cient\ii fica com unidades}{ onde \texttt{m}=mantissa, \texttt{e}=expoente e unidades \texttt{u} que s\ao\ opcionais: \@macroName{Exp}{\{12\}\{24\}}{.}=> \Exp{12}{24}\quad  mas\quad  \@macroName{Exp}{[kg/m\^{}2]\{12\}\{24\}}{.}=\Exp[\mathtt{kg/m^2}]{12}{24}. 
Todos os par\^ametros passados \texttt{m}, \texttt{e}, \texttt{u} s\ao\ processados dentro do ambiente matem\'atico => podem ser f\'ormulas e n\ao\ precisam de ser encapsuladas com \$ \$.}




\newcommand{\equ}[2][]{\begin{equation}{#2}%
                         \ifthenelse{\equal{#1}{}}%
                         {}% <-- then = nao ha label
                         {\label{#1}}% <-- else = ha label
                        \end{equation}%
}
\@appendToHelpComandos[equ]{[lbl]\{equação\}}{Equa\cao\ em DisplayMode}{. A \texttt{equação} fica numerada \`a direita. \'E logo processada dentro do ambiente matem\'atico => n\ao\ precisa de ser encapsulada com \$ \$. O \texttt{lbl} \'e opcional mas se for usado passa a referenciar esta equa\cao.
Ex: \@macroName{equ}{\{$\backslash$frac\{m\}\{s\} $\backslash$sin(-$\backslash$omega\ t+$\backslash$varphi)\}}{.}  => \equ{\frac{m}{s} \sin(-\omega t+\varphi)} 
}


\newenvironment{eqmult}
  {\vspace*{-2mm} \begin{eqnarray*}}%% era eqnarray* e -4mm
  {\end{eqnarray*} \vspace*{-0mm}}%% era -3mm  e eqnarray*
\@appendToHelpEnvironment[eqmult]{leq \& = \& req\ }{Equa\coes\ M\'ultiplas}{\ para criar uma matriz de equa\coes\ (equation array) com lado esquerdo \texttt{leq}, sinal de $=$ ao centro e equa\coes\ \`a direita \texttt{req}.%
}%


\newcommand{\fequ}[2][]{% equacao com caixa 'a volta e numerada
  \begin{equation}%
   \fbox{\ensuremath{\displaystyle #2}}%
   \ifthenelse{\equal{#1}{}}{}%%%n\ao\ ha label
     {\label{#1}}%% ha label
  \end{equation}%
}
\@appendToHelpComandos[fequ]{[eq:lbl]\{equação\}}{Equa\cao\ em destaque com caixa}{\ para criar uma equa\cao\ encaixotada e separada dos par\'agrafos. A \texttt{equa\cao} \'e processada dentro do ambiente matem\'atico DisplayMode => n\ao\ precisa de ser encapsulada com \$ \$. A etiqueta \texttt{eq:lbl} \'e opcional mas se for dada passa a referenciar esta equa\cao.
}%


\newcommand{\fmath}[2][]{% põe equa\cao\ na linha, com caixa \`a volta
 \fbox{\ensuremath{\textstyle #2}}%
 \ifthenelse{\equal{#1}{}}{}%%%n\ao\ h\'a label
   {\label{#1}}%% ha label
}
\@appendToHelpComandos[fmath]{[eq:lbl]\{equa\cao\}}{Equa\cao\ na linha com caixa}{\ para criar uma equa\cao\ encaixotada mas que fica na linha de texto. A etiqueta \texttt{eq:lbl} \'e opcional.%
}%



\newcommand{\figura}[4][]{%
\noindent%
\begin{minipage}{\linewidth}% to keep image and caption on one page
 \makebox[\linewidth]{%to center the image
   \includegraphics[width=#2]{#3}}%% filename da fig.
 \ifthenelse{\equal{#4}{}}{}%%%n\ao\ h\'a legenda
   {\captionof{figure}{#4}}%se houver legenda
 \ifthenelse{\equal{#1}{}}{}%%%n\ao\ h\'a label
   {\label{#1}}%% label da fig.
\end{minipage}
}%%%  figura que nao e' um float!

\newcommand{\tabela}[4][]{%
\noindent%
\begin{minipage}{#2}% to keep image and caption on one page
 \makebox[#2]{%to center the image
   #3}%% codigo tabular.
 \ifthenelse{\equal{#4}{}}{}%%%nao ha legenda
   {\captionof{table}{#4}}%se houver legenda
 \ifthenelse{\equal{#1}{}}{}%%%nao ha label
   {\label{#1}}%% label da fig.
\end{minipage}
}%%%  figura que nao 'e um float



\usepackage{wrapfig} %%% coloca figuras com texto ao lado
\@appendToHelpPackages{wrapfig}{Coloca figuras com texto ao lado.
Cria o ambiente \texttt{wrapfigure} dentro do qual se coloca uma figura (comando \texttt{\textbackslash includegraphics}). A figura fica embrulhada (wrapped) pelo texto.
}%

\newlength\imageheight
\newlength\imagewidth
\newlength{\@larguraTxt}%%% largura que ficara' no texto lateral
\newlength{\@alturaTxt}%%% altura que ficara' no texto lateral
\newcounter{@NlinhasFig}

\newcommand{\FIGcomTextoaolado}[5][]{%
\settoheight\imageheight{\includegraphics{#4}}%altura da fig
\settowidth\imagewidth{\includegraphics{#4}}%largura da fig
\setlength{\@larguraTxt}{\textwidth - #3}%% largura da caixa de texto
\setlength{\@alturaTxt}{#3*\ratio{\imageheight}{\imagewidth}}
\ifthenelse{\equal{#2}{}}%
  {\setcounter{@NlinhasFig}{0}}
  {\setcounter{@NlinhasFig}{#2}}
\addtocounter{@NlinhasFig}{1*\ratio{\@alturaTxt}{4.8mm}}%%nº linhas ao lado da fig
\begin{wrapfigure}[\value{@NlinhasFig}]{#2}[0mm]{#3}%
 \includegraphics[width=#3]{#4}%% filename da fig.
 \ifthenelse{\equal{#5}{}}{}%%%nao ha legenda
   {\caption{%%
    #5}}%% legenda da fig.
 \ifthenelse{\equal{#1}{}}{}%%%n\ao\ h\'a label
   {\label{#1}}%% label da fig.
\end{wrapfigure}
}%%%  figura que n\ao\ \'e um float
\@appendToHelpComandos[FIGcomTextoaolado]{[lbl]\{nl\}\{w\}\{img\}\{lgd\}}%
{Figura com texto ao lado}{. Esta figura N\AO\ \'e um float e, por isso, fica presa \`a palavra onde foi inclu\ii da. Os par\^ametros são:\vspace*{-3.5mm}%%%
\begin{itemize}
\itemsep -1mm
\item \texttt{lbl}= label [opcional] que referencia a imagem. Deve ser do tipo \texttt{fig:xxxx}. 
\item \texttt{nl}= quantidade de linhas a ocupar pelo texto que fica ao lado (ajusta-o). 
NOTA: \textit{exige escolher bem} o n\'umero \texttt{nl} a acrescentar, para que o texto lateral fique bem distribu\ii do pela altura da figura+legenda. 
\item \texttt{w}= largura da fig. Ex: 100mm. 
\item \texttt{img}= filename da imagem. 
\item \texttt{lgd}= legenda da imagem.
\end{itemize}}


\newcommand{\textoefigura}[5][]{% [#1]=lbl da fig
  \ifthenelse{\equal{#2}{}}%% {#2}=largura do texto
      {\duascaixasladoalado{0.5\textwidth}}%% default
      {\duascaixasladoalado{#2}}%%
    {\poetextoEMminipage{#3}}%%%% #2= texto a por ao lado da fig
    {\poefigEMminipage{#4}{#5}{#1}}%% #4=cod_figura #5=legenda
}



\newlength{\larguratabela}
\newlength{\larguracaixaesq}
\newlength{\larguracaixadir}
\newlength{\larguraimg}
\newlength{\@larguraMaxCxEsq}

\setlength{\@larguraMaxCxEsq}{0.95\textwidth}%% da caixa esq em mm. #1<=120mm

\newcommand{\duascaixasladoalado}[3]{%% #1 = largura caixa esq
  \setlength{\larguracaixaesq}{#1}
  \setlength{\larguracaixadir}{\textwidth}
  \ifthenelse{\lengthtest{\larguracaixaesq > 0.95\textwidth}}%
    {\typeout{******ATENCAO: largura da imagem menor que 0.95\the\textwidth}
    ******ATENCAO: largura da imagem menor que 0.95\the\textwidth
     \setlength{\larguracaixaesq}{0.95\textwidth}
    }{}%%%OK
  \addtolength{\larguracaixadir}{-\larguracaixaesq-5mm}
  \vspace{0mm}
  \noindent
    \begin{minipage}[c]{\larguracaixaesq}
      #2
    \end{minipage}
    \hspace{4mm}%%% adcionado em dez-2016
    \begin{minipage}[c]{\larguracaixadir}
      #3
    \end{minipage}
}


  
\newcommand{\poetabEMminipage}[4][\larguracaixaesq]{
     \setlength{\larguratabela}{#1} %% [#1] largura da tabela
     \addtolength{\larguratabela}{-0mm}	
     \centering%% centrado
     \makebox[\linewidth]{#2}%% #2= codigo tabular.
     \ifthenelse{\equal{#3}{}}{}%% #3=legenda
       {\captionof{table}{#3}}%% se houver legenda
     \setlength{\rightskip}{1mm}
     \setlength{\leftskip}{1mm}
     \renewcommand{\baselinestretch}{0.7}
     \ifthenelse{\equal{#4}{}}{}%% #4= label
       {\label{#4}}%% label da fig.
     \vfil
}


\newcommand{\poefigEMminipage}[4][\larguracaixaesq]{
     \setlength{\larguraimg}{#1}%% [#1] = largura 
     \addtolength{\larguraimg}{-0mm}	
     \centering%% centrado
     \makebox[\linewidth]{#2}%% #2 = codigo figura.
     %% do tipo  \includegraphics[width]{file.png}
     \ifthenelse{\equal{#3}{}}{}%% #3 = legenda
       {\captionof{figure}{\footnotesize #3}}%h\'a legenda
     \setlength{\rightskip}{1mm}
     \setlength{\leftskip}{1mm}
     \renewcommand{\baselinestretch}{0.7}
     \ifthenelse{\equal{#4}{}}{}%%%nao ha label
       {\label{#4}}%% label da fig.
     \vfil
}

\newcommand{\poetextoEMminipage}[2][1.0]{
       \parskip 8pt
       \renewcommand{\baselinestretch}{#1}
       #2
}

\newcommand{\tabelaetexto}[5][]{% [#1]=lbl da tab
  \ifthenelse{\equal{#2}{}}%% {#2}=largura da tab
   {\duascaixasladoalado{0.5\textwidth}}%% default
   {\duascaixasladoalado{#2}}%% escolhe a largTabEsq
    {\poetabEMminipage{#4}{#5}{#1}}%%% #4=cod_tabela #5=legenda
    {\poetextoEMminipage{#3}}%%%% #3= texto pra Direita da tabela
}

\@appendToHelpComandos[tabelaetexto]{[lbl]\{larg\}\{texto\}\{tabela\}\{legenda\}}{Tabela com Texto}{. Este comando cria uma \texttt{tabela} \`a esquerda com \texttt{texto} ao seu lado direito. Esta estrutura n\ao\ \'e um float e acompanha o par\'agrafo onde foi inclu\ii da. Os par\^ametros são:\vspace*{-3.5mm}%%%
\begin{itemize}
\itemsep -1mm
\item \texttt{lbl}= label [opcional] que referencia a tabela. Deve ser do tipo \texttt{tab:xxxx}. 
\item \texttt{larg}= largura que se quer reservar \`a tabela. Ex: \texttt{100mm}.
\item \texttt{texto}= O texto que se pretende colocar \`a direita da tabela. Atenção ao tamanho em linhas para não ficar muito mais alto do que a tabela.
\item \texttt{tabela}= O c\'odigo tabular que cria a tabela.
\item \texttt{legenda}= legenda da tabela.
\end{itemize}
}


\newcommand{\textoetabela}[5][]{% [#1]=lbl da tabela
  \ifthenelse{\equal{#2}{}}%% #2=largura do texto
      {\duascaixasladoalado{0.5\textwidth}}%% default
      {\duascaixasladoalado{#2}}%%
    {\poetextoEMminipage{#3}}%%%% #3= texto a por ao lado da tabela
    {\poetabEMminipage{#4}{#5}{#1}}%%% #4=cod_tabela #5=legenda
}

\@appendToHelpComandos[textoetabela]{[lbl]\{larg\}\{texto\}\{tabela\}\{legenda\}}{Texto com Tabela}{. Este comando cria uma \texttt{tabela} \`a direita com \texttt{texto} ao seu lado esquerdo. Esta estrutura n\ao\ \'e um float e acompanha o par\'agrafo onde foi inclu\ii da. Os par\^ametros são:\vspace*{-3.5mm}%%%
\begin{itemize}
\itemsep -1mm
\item \texttt{lbl}= label [opcional] que referencia a tabela. Deve ser do tipo \texttt{tab:xxxx}. 
\item \texttt{larg}= largura que se quer reservar \`a tabela. Ex: \texttt{100mm}.
\item \texttt{texto}= O texto que se pretende colocar \`a direita da tabela. Atenção ao tamanho em linhas para não ficar muito mais alto do que a tabela.
\item \texttt{tabela}= O c\'odigo tabular que cria a tabela.
\item \texttt{legenda}= legenda da tabela.
\end{itemize}
}



\newcommand{\@refpagina}{0}
\newcommand{\@setProxPagina}[1]{\renewcommand{\@refpagina}{#1}}
\newcommand{\@tipoFloat}{0}
\newcounter{@pgdif}
\newcommand{\referir}[2][(]{%%% o default [(] coloca (p\'ag. ref)
 \setcounter{@pgdif}{\number\numexpr\getpagerefnumber{#2}-\value{page}}%
 \StrBefore[1]{#2}{:}[\@tipoFloat]% se #2=tab:xxx =>\tipoFloat=tab
 \ifthenelse{\equal{\@tipoFloat}{fig}}%
  {figura}% escreve
  {\ifthenelse{\equal{\@tipoFloat}{tab}}%
    {tabela}% escreve
    {equação}% escreve este que sobra
  }% deixa escrito: figura ou tabela ou equação
 \  \ref{#2}%%% acrescenta o numero do float respectivo
 \ifthenelse{\value{@pgdif}=0}%
  {\@setProxPagina{}}%% na mesma pagina => sem texto
  {%% noutra p\'agina   \value{page}
   \ifthenelse{\value{@pgdif}=1}%
     {\@setProxPagina{p\'ag.\ seguinte}}%
     {\ifthenelse{\value{@pgdif}=-1}%
       {\@setProxPagina{p\'ag.\ anterior}}%
       {\@setProxPagina{p\'ag.\ \pageref{#2}}}%% outra p\'ag
     }%
   \ifthenelse{\equal{#1}{(}}%
     { (\@refpagina)}%% usa: (pag ref)
     {\ifthenelse{\equal{#1}{}}%%
       { na \@refpagina}% usa: ' na pag ref'
       {#1 \@refpagina}% usa: '#1 pag ref'
     }%     
  }%% noutra p\'agina
}%
\@appendToHelpComandos[referir]{[aaa]\{lbl\}}{Refer\^encias Inteligentes}{%
para fazer refer\^encias inteligentes ao float de etiqueta \texttt{lbl} e \`a p\'agina deste.\vspace*{-3.5mm} %%%
\begin{enumerate}
\itemsep -1mm
\item Os labels usados na identifica\cao\ t\^em de ser do tipo fig:xxxxxx  ou tab:xxxxxx  ou eq:xxxxxxx  pois a string antes de : \'e usada na frase de refer\^encia, que ficar\'a: 'figura XX'  ou 'tabela XX' ou 'equa\cao\ XX'  seguido de ' (p\'ag. nn)' como default. mas pode-se alterar: veja as op\coes\ a seguir.
\item Para evitar os parenteses () na refer\^encia \`a p\'agina use a op\cao\ vazia. Ex: \@macroName{referir}{[]\{eq:xxxx\}}{.} => ' p\'ag.\ nn'.
\item Para colocar texto anterior a 'p\'ag. nn' e sem (), use
    a op\cao\ \@macroName{referir}{[aaa]\{eq:xxxx\}}{.} => 'aaa p\'ag.\ nn'
\item ATENÇÃO: refer\^encias do tipo '\textit{anterior}' e '\textit{seguinte}' NEM sempre ficam corretas. Nesse caso use apenas \@macroName{ref}{\{lbl\}}{.}
\end{enumerate}
}
