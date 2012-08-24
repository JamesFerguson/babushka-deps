dep 'system' do
  # brotherbard GitX
  # http://gitx.org/download/brotherbard

  requires 'blake:workstation'
  # includes
  #   homebrew
  #   gem
  #   public key
  #   rvm
  #   ruby 192
  #   Propane
  #   Skitch
  #   GitX (vanilla)
  #   mysql
  #   mongo
  #   memcached
  requires '1.9.3 installed.rvm'
  requires 'hubot.repo'

  requires 'benhoskings:Google Chrome.app'
  requires 'benhoskings:Firefox.app'
  requires 'benhoskings:Opera.app'
  requires 'benhoskings:Skitch.app'
  # TODO:
  # setup re_alt
  #
  # SequelPro (setup too)
  # iTerm
  # oh-my-zsh
  #
  # sync up brew installs
  # ack             git-flow        jasper          libtiff         mongodb         pkg-config      tmux
bash-completion hping           jpeg            libxml2         mytop           qt              wemux
fortune         htop            libevent        little-cms      nmap            redis           wget
gettext         imagemagick     libiconv        macvim          node            rename          wkhtmltopdf

  # show hidden files
  # defaults write com.apple.Finder AppleShowAllFiles YES
  # 
  # no icons on Desktop
  # defaults write com.apple.finder CreateDesktop false
  # 
#
# bundle vim
# compile cmd-T against system ruby
end

dep '1.9.3 installed.rvm' do
  requires 'rvm'
  met? { rvm('list')['ruby-1.9.3'] }
  meet { log("rvm install 1.9.3") { rvm 'install 1.9.3'} }
end

dep 'hubot.repo' do
  source 'git@github.com:blake-education/hubot.git'
end


