sudo pacman --noconfirm -S texlive
echo "Installed texlive, implementing fix according to https://github.com/Glavin001/atom-beautify/issues/1792"
echo "Building perl dependencies..."
sudo cpan Unicode::GCString
sudo cpan App::cpanminus
sudo cpan YAML::Tiny
sudo perl -MCPAN -e 'install "File::HomeDir"'
