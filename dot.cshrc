## Some part are based on Justin Randall's .tcshrc (jrandall AT gmail DOT com)
## and Joe Holden's (joe@joeholden.co.uk) .cshrc
##

setenv LANG zh_TW.UTF-8
#setenv LC_CTYPE en_US.ISO8859-1
setenv MM_CHARSET utf8

alias ls "/bin/ls -G"
setenv LSCOLORS "Exfxcxdxbxegedabagacad"

# Uncomment the followings if you wish to have a more useful prompt
if ($?prompt) then
  set color
  set filec
  set prompt = "%{[1;33m%}%n@%m%{[m%}%{[33m%} <%{[32m%}%/%{[33m%}>%{[m%} "

  # if user is root, make the username bold and red
  if (`whoami` == "root") then
    set prompt = "%{%B[1;33;41m%}%n@%m%{[m%}%{[33m%}%b <%{[32m%}%/%{[33m%}>%{[m%}# "
  endif
endif

# for 8 bit character
stty cs8 -istrip
stty pass8

setenv	XMODIFIERS	"@im=xcin"
set dspmbyte="0000000000000000000000000000000000000000000000000000000000000000222222222222222222222222222222222222222222222222222222222222222223333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333330"

# set WWW_HOME as FreeBSD Homepage for lynx
setenv WWW_HOME http://www.freebsd.org/

# set default_dir of GtkFileChooser as $HOME
setenv GTK_DEFAULT_FILECHOOSER_DIR $HOME

# no coredump
#limit coredumpsize 0 k

#
# Use a Chinese capable pager and editor
#setenv	PAGER	"/usr/bin/less -r"
#setenv	EDITOR	"env LC_CTYPE=en_US.ISO8859-1 /usr/bin/vi"
#setenv	VISUAL	"env LC_CTYPE=en_US.ISO8859-1 /usr/bin/vi"
#alias	vi	'env LC_CTYPE=en_US.ISO8859-1 vi'

# For DocBook:
#setenv SGML_CATALOG_FILES /usr/local/share/sgml/catalog
#setenv XML_CATALOG_FILES /usr/local/share/xml/catalog.ports

# turn on autocorrect, autolist, etc..

set autocorrect
set correct = all
set autolist
set autospell
set autoexpand
set matchbeep = ambiguous
set history = 1000
set savehist = 1000
#set notify

# will be notified when someone logs in or out of your system.
set watch = (0 any any)

# trun on Home End key
bindkey [1~ beginning-of-line
bindkey [4~ end-of-line

# DEL:
bindkey ^[[3~ delete-char

# HOME : go to the beginning of the line.
# already bound to beginnning-of-line, but the keycode thing was different.
bindkey ^[[H beginning-of-line

# END : go to the end of the line.
# same as above.
bindkey ^[[F end-of-line

# PAGE UP : search in history backwards for line beginning as current.
bindkey ^[[I history-search-backward
bindkey ^[[5~ history-search-backward   # for x

# PAGE DOWN : search in history forwards for line beginning as current.
bindkey ^[[G history-search-forward
bindkey ^[[6~ history-search-forward    # for x


#
# Temporary hack to allow display of Chinese
#alias  cls	'env LC_CTYPE=en_US.ISO8859-1 ls -GF'
#alias	ctin	'env LC_CTYPE=en_US.ISO8859-1 tin'
#alias  cjoe    'joe -asis'
#alias	cwrite	'env LC_CTYPE=en_US.ISO8859-1 write'
#alias	ctalk	'env LC_CTYPE=en_US.ISO8859-1 talk'
#alias	cwall	'env LC_CTYPE=en_US.ISO8859-1 wall'
#alias	cvi	'env LC_CTYPE=en_US.ISO8859-1 vi'
#alias	cncftp3	'env LC_CTYPE=en_US.ISO8859-1 ncftp3'
#alias  cgnuls  'gnuls --color=auto --show-control-chars'
#alias  cless	'less -r'
#alias  cqkmj	'env TERM=vt100 qkmj'

# color ls (/usr/ports/misc/gnuls)
#alias	ls 	'gnuls --color=auto --show-control-chars'

#
# Taiwan News Server
#setenv NNTPSERVER      news.tw.freebsd.org

#
# Taiwan IRC Server, /join #bsdchat
#alias irssi 'env TERM=xterm irssi -c irc.freenode.net'

setenv SGML_CATALOG_FILES /usr/local/share/sgml/catalog
setenv XML_CATALOG_FILES /usr/local/share/xml/catalog.ports

# For send-pr
#setenv MAIL_AGENT "/usr/local/sbin/ssmtp -v -t"
setenv ORGANIZATION "FreeBSD Taiwan"
