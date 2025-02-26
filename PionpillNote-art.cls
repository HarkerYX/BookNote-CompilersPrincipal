% ========================= 基础配置 =========================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{PionpillNote-art}[2021/08/24 version 1.0]

% ========================= 纸张大小 =========================
\LoadClass[oneside,a4paper,UTF8,linespread=1.25,zihao=-4]{ctexart}

% ========================= 包设置 =========================
% ========== 重要包 ==========
\RequirePackage[top=2cm,bottom=2.5cm,left=2cm,right=2cm]{geometry}    % 页面样式包
\RequirePackage{amsmath}                % 数学包
\RequirePackage{amsfonts}               % 数学符号包
\RequirePackage{amsthm}                 % 数学包
\RequirePackage{amssymb}                % 数学公式环境包
\RequirePackage{color,xcolor}           % 颜色包
\RequirePackage{graphicx}               % 图片格式支持包
\RequirePackage{tikz}                   % 绘图包
% ========== 外部包 ==========
\RequirePackage{fancyhdr,lastpage}      % 页眉页脚控制包
\RequirePackage{parskip}                % 段落格式控制包
\RequirePackage{fontawesome}            % 图标包
\RequirePackage{titletoc}               % 目录包
\RequirePackage{float}                  % 图表控制包
\RequirePackage{newtxmath}              % 字体包
\RequirePackage{esint}                  % 字体包
\RequirePackage{physics,siunitx}        % 国际物理学符号包
\RequirePackage{booktabs,tabularx,multirow,longtable,makecell,array}        % 图表包
\RequirePackage{caption}                % 图表标题
\RequirePackage[section]{placeins}      % 表格控制
\RequirePackage{mathtools}              % 数学工具包
\RequirePackage{zhlipsum,mwe}           % 段落包
\RequirePackage{natbib}                 % 文献引用包
\RequirePackage{listings}               % 代码包：设置代码样式
\RequirePackage{hyperref}               % 超链接包：超链接
\RequirePackage{url}                    % 网页链接包
\RequirePackage{cleveref}               % 载入自动引用宏包
\RequirePackage{environ}                % 环境包
\RequirePackage{import}                 % 内容分离
\RequirePackage{enumitem}               % 列项缩进
\RequirePackage{threeparttable}         % 三线表环境
\RequirePackage{bm}                     % 公式加粗
\RequirePackage{indentfirst}            % 段落缩进
\RequirePackage{subfigure}              % 子图包

% 扩展的表格宏包和插图宏包
% \RequirePackage{longtable}
% 扩展的数学宏包
% \RequirePackage{upgreek}%用\uppi 调用正体的圆周率
% \RequirePackage{mathrsfs}%\mathscr{}调用傅里叶变换,拉普拉斯变换的符号

% ========== 配置包 ==========
% fancy-页眉与页脚
\pagestyle{fancy}
\fancyhf{}
\renewcommand\headrulewidth{0pt}
\fancyfoot[L]{\today}
\fancyfoot[C]{编译原理笔记}
\fancyfoot[R]{ \thepage{} / \pageref{LastPage}}
% titletoc-目录样式
\titlecontents{section}[0pt]{\addvspace{2pt}\filright}%
{\heiti\contentspush{\thecontentslabel\ }}%
{}{\titlerule*[8pt]{.}\contentspage}
% 设置图片路径
\graphicspath{{figures/}}
% 设置浮动体标题悬挂缩进
\captionsetup{format=hang}
\DeclareCaptionLabelSeparator*{sspace}{\ \ }
\captionsetup[figure]{labelsep=sspace}
\captionsetup[table]{labelsep=sspace}
\DeclareCaptionFont{heiti}{\heiti}
\DeclareCaptionFont{-5hao}{\zihao{-5}}
\captionsetup{labelfont={heiti,-5hao},textfont={heiti,-5hao}}
% 设置首行缩进
\setlength{\parindent}{2em}
% 设置脚注格式
\edef\footnoterule{\vfil\footnoterule}
\numberwithin{figure}{section}
% 设置引用格式
\setcitestyle{square,super}
% 设置超链接样式
\hypersetup{breaklinks,colorlinks}
\hypersetup{hidelinks,bookmarksnumbered=true,bookmarksopen=true,pdfstartview=Fit}
% 自动引用包
\crefname{figure}{图}{图}
\crefname{table}{表}{表}
\crefname{equation}{式}{式}
\renewcommand{\eqref}[1]{\labelcref{#1}~\namecref{#1}}
\newcommand*{\fullref}[1]{\nameref{#1}}
% 设置脚注格式
\edef\footnoterule{\vfil\footnoterule}


% ========================= 新的命令 =========================
\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}
\renewcommand{\headrulewidth}{0pt}

% ========================= 新的颜色 =========================
% 颜色强度：红 > 蓝 > 绿  红色表重点，蓝色表次重点，绿色表值得一提
\definecolor{imp}{RGB}{202,12,22}     % 强调色，红
\definecolor{mark}{RGB}{34,103,158}   % 提示色，蓝
\definecolor{tip}{RGB}{0,100,0}       % 标注色，绿
\definecolor{grey}{RGB}{150,150,150}      % 灰色

% ========================= 定理等环境 =========================
\newtheorem{theorem}{\hspace{2em}定理}[section]
\newtheorem{definition}{\hspace{2em}定义}[section]
\newtheorem{lemma}{\hspace{2em}引理}[section]
\newtheorem{corollary}{\hspace{2em}推论}[section]
\newtheorem{proposition}{\hspace{2em}命题}[section]
\newtheorem{conjecture}{\hspace{2em}猜想}[section]
\newtheorem{remark}{\hspace{2em}注}[section]
\newtheorem{example}{\hspace{2em}例}[section]
\newtheorem{problem}{\hspace{2em}问题}[section]
\newtheorem{assumption}{\hspace{2em}假设}[section]
\newtheorem{conditions}{\hspace{2em}条件}[section]
\newtheorem{property}{\hspace{2em}性质}[section]


% ========================= 基础格式 =========================
% ========== 字体设置 ==========
\def\bianhao#1{\gdef\@bianhao{#1}}
\def\tihao#1{\gdef\@tihao{#1}}
\def\timu#1{\gdef\@timu{#1}}
\def\keyword#1{\gdef\@keyword{#1}}

\setmainfont{Times New Roman}

\PassOptionsToPackage{no-math}{fontspec}
\RequirePackage{iftex}
\ifdefstring{\ELEGANT@lang}{cn}{
  \ifXeTeX
    \ifdefstring{\ELEGANT@chinesefont}{founder}{
      \RequirePackage[UTF8,scheme=plain,fontset=none]{ctex}
      \setCJKmainfont[BoldFont={FZHei-B01},ItalicFont={FZKai-Z03}]{FZShuSong-Z01}
      \setCJKsansfont[BoldFont={FZHei-B01},ItalicFont={FZHei-B01}]{FZHei-B01}
      \setCJKmonofont[BoldFont={FZHei-B01},ItalicFont={FZHei-B01}]{FZFangSong-Z02}
      \setCJKfamilyfont{zhsong}{FZShuSong-Z01}
      \setCJKfamilyfont{zhhei}{FZHei-B01}
      \setCJKfamilyfont{zhkai}{FZKai-Z03}
      \setCJKfamilyfont{zhfs}{FZFangSong-Z02}
      \newcommand*{\songti}{\CJKfamily{zhsong}}
      \newcommand*{\heiti}{\CJKfamily{zhhei}}
      \newcommand*{\kaishu}{\CJKfamily{zhkai}}
      \newcommand*{\fangsong}{\CJKfamily{zhfs}}}{\relax}
    
    \ifdefstring{\ELEGANT@chinesefont}{nofont}{
      \RequirePackage[UTF8,scheme=plain,fontset=none]{ctex}}{\relax}

    \ifdefstring{\ELEGANT@chinesefont}{ctexfont}{
      \RequirePackage[UTF8,scheme=plain]{ctex}}{\relax}
  \else
    \ifdefstring{\ELEGANT@chinesefont}{ctexfont}{
      \RequirePackage[UTF8,scheme=plain]{ctex}}{\relax}
  \fi
  \AfterEndPreamble{
    % \renewcommand{\itshape}{\kaishu}
    \setlength\parindent{2\ccwd}}
}{\relax}

\setmonofont{Consolas}[Scale=0.95]
% ========================= 章节格式 =========================
% ========== 目录格式 ==========
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}
\numberwithin{equation}{section}

\titlecontents{section}[2em]{\bfseries \zihao{3} \vspace{10pt}}{\contentslabel{2em}}{\hspace*{-4em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}
\titlecontents{subsection}[4em]{\zihao{4}}{\contentslabel{2em}}{\hspace*{-2em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}
\titlecontents{subsubsection}[7em]{\zihao{-4}}{\contentslabel{3em}}{\hspace*{-2em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}
\titlecontents{paragraph}[11em]{\zihao{-4}}{\contentslabel{4em}}{\hspace*{-2em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}

% ========== 章节格式 ==========
\setlength{\parskip}{0.3\baselineskip}
\ctexset{
	section={
		format={\zihao{3}\bfseries\heiti\centering},
		name={,、},
		aftername={\hspace{0pt}},
		number=\chinese{section},
	},
	subsection={
		format={\zihao{-3}\bfseries\heiti\raggedright},
		name={},
		aftername={\hspace{5bp}},
		number={\arabic{section}.\arabic{subsection}},
	},
	subsubsection={
		format={\zihao{4}\bfseries\heiti\raggedright},
		name={},
		aftername={\hspace{5bp}},
		number={\arabic{section}.\arabic{subsection}.\arabic{subsubsection}},
	},
	appendix={
		name={附录,：},
		number={},
	}
}

% ========== 段落格式 ==========
\setlength{\parskip}{0.3em}
\setlength{\parindent}{2em}
\setlist[enumerate]{listparindent=\parindent}
\setlist[itemize]{listparindent=\parindent}
\setenumerate[1]{itemsep=0pt,itemindent=1em,partopsep=0pt,parsep=0.1em,topsep=1pt}
\setitemize[1]{itemsep=0pt,itemindent=1em,partopsep=0pt,parsep=0.1em,topsep=1pt}

% ========================= 代码格式 =========================
% 设置代码的默认样式
\lstset{
	frame=none,                                     % 取消边框
	breaklines=true,                                % 允许自动断行
	% breakatwhitespace=true,                       % 使用此命令仅允许在空格处自动断行
	showstringspaces=false,                         % 不显示字符串中的空格
	basicstyle=\small\ttfamily,                     % 设置代码基本样式
	flexiblecolumns=true,                           % 改善字母间距
	keywordstyle=\color{blue},                      % 设置关键词样式
	stringstyle=\color[rgb]{0.75,0,0.75},           % 设置字符串样式
	commentstyle=\songti\color[rgb]{0,0.5,0},       % 设置注释样式
	tabsize=4,                                      % 设置制表符缩进
    columns=flexible,                               % 不随便添加空格
}

% 设置 LaTex 形式 代码风格
\lstdefinestyle{latex}{
    tabsize=2,
    language=tex,
    backgroundcolor=\color{lightgray!50},           % 背景色
}

% 设置 LaTex 旁注形式 代码风格
\lstdefinestyle{latex-side}{
    style = latex,
    backgroundcolor=\color{lightgray!20},           % 背景色
    basicstyle=\footnotesize\ttfamily,                       % 字体大小
}

% 设置代码环境
\lstnewenvironment{code}[1][]{
	\lstset{
		% deletekeywords={disp},                    % 可在此行去除特定关键词的语法高亮		
		keywordstyle=\color{blue},                  % 设置关键词样式
		stringstyle=\color[rgb]{0.75,0,0.75},       % 设置字符串样式
		commentstyle=\songti\color[rgb]{0,0.5,0},   % 设置注释样式
		#1
	}
}{}

% 设置C++代码环境
\lstnewenvironment{C++}[1][]{
	\lstset{
		language=C++,
		% deletekeywords={disp},                    % 可在此行去除特定关键词的语法高亮		
		keywordstyle=\color{blue},                  % 设置关键词样式
		stringstyle=\color[rgb]{0.75,0,0.75},       % 设置字符串样式
		commentstyle=\songti\color[rgb]{0,0.5,0},   % 设置注释样式
		#1
	}
}{}

% 设置matlab代码环境
\lstnewenvironment{matlab}[1][]{
	\lstset{
		language=Matlab,
		% deletekeywords={disp},                    % 可在此行去除特定关键词的语法高亮		
		keywordstyle=\color{blue},                  % 设置关键词样式
		stringstyle=\color[rgb]{0.75,0,0.75},       % 设置字符串样式
		commentstyle=\songti\color[rgb]{0,0.5,0},   % 设置注释样式
		#1
	}
}{}

% 设置python代码环境
\lstnewenvironment{python}[1][]{
	\lstset{
		language=Python,
		keywordstyle=\color[RGB]{255,119,0},        % 设置Keywords样式
		morekeywords={as},                          % 将特定单词加入Kewords中
		deletekeywords={print},                     % 从 keywords中去除特定单词
		keywordstyle=[2]\color[RGB]{144,0,144},     % 设置Builtins样式
		morekeywords=[2]{print},                    % 将特定单词加入Builtins中
		stringstyle=\color[RGB]{0,170,0},           % 设置字符串样式
		commentstyle=\songti\color[RGB]{221,0,0},   % 设置注释样式	
		#1
	}
}{}