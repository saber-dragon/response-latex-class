\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{response}[2018/05/17 response LaTeX class]

\PassOptionsToClass{\CurrentOption}{article}
\LoadClassWithOptions{article}

% Allow Unicode input (alternatively, you can use XeLaTeX or LuaLaTeX)
\RequirePackage[utf8]{inputenc}

%% commonly used packages
\RequirePackage{ifthen}
\RequirePackage{latexsym}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{graphicx}
\RequirePackage{fullpage}
\RequirePackage{enumerate}

% This package reimplements the LATEX verbatim and verbatim* environments.
% In addition it provides a comment environment that skips any
% commands or text between \begin{comment} and the next \end{comment}.
\RequirePackage{verbatim}
\RequirePackage{soul}

%% packages for multirow
\RequirePackage{multirow}

%% for tables
\RequirePackage{booktabs}

%% packages for url
\RequirePackage{url}

% The etoolbox package is a toolbox of programming tools geared primarily towards
% LaTeX class and package authors. It provides LaTeX frontends to some of the new
% primitives provided by e-TeX as well as some generic tools which are not related to
% e-TeX but match the profile of this package.
\RequirePackage{etoolbox}

\RequirePackage{amsthm}
\RequirePackage{thmtools}

\RequirePackage[colorlinks,
    linkcolor={red!50!black},
    citecolor={blue!50!black},
    urlcolor={blue!80!black}]{hyperref}


%% cross-refernce to other documents
\RequirePackage{xr}
\def\xrwrapper{\@ifnextchar[{\@with}{\@without}}
\def\@with[#1]#2#3{\externaldocument[#1]{#2/#3}}
\def\@without#1#2{\externaldocument{#1/#2}}

\declaretheoremstyle[bodyfont=\normalfont,numbered=no]{respstyle}
\declaretheoremstyle[bodyfont=\itshape,numberwithin=section]{commentstyle}
\declaretheorem[refname=Comment,style=commentstyle]{comments}
\declaretheoremstyle[bodyfont=\itshape,numberwithin=subsection]{subcommentstyle}
\declaretheorem[refname=Comment,style=subcommentstyle]{subcomments}
\declaretheorem[style=respstyle]{response}

\newcommand{\Reviewer}[1]{
  \section{Comments~by~Reviewer~#1}
}
\newcommand{\Editor}{
  \section{Comments~by~Editor}
}

% use "autoref" the way I want
%   autoref is nice because the text or brackets of a ref are part of link
%   see http://tex.stackexchange.com/questions/36575/autorefs-inserted-text-has-not-the-correct-case
%       http://en.wikibooks.org/wiki/LaTeX/Labels_and_Cross-referencing
%       http://www.tug.org/applications/hyperref/manual.html#TBL-23

%% define autoref name for sections
\def\sectionautorefname{Section}
\def\subsectionautorefname{Section}
\def\subsubsectionautorefname{Section}