# Bare Repository Setup

See [link](https://news.ycombinator.com/item?id=11071754)

## First Time Setup

- Create directory to store bare git repository:

```
mkdir $HOME/dotfiles
git init --bare $HOME/dotfiles
```

- Create an alias for interacting with bare repo:

```
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

- Source the bashrc
```
. ~/.bashrc
```

- Add a remote, and also set status not to show untracked files:

```
dotfiles config --local status.showUntrackedFiles no
dotfiles remote add origin git@github.com:eoinlarkin/dotfiles.git
```

- Add a .dotfile to the repository

```
cd $HOME
dotfiles add .tmux.conf
dotfiles commit -m "Add .tmux.conf"
dotfiles push
```

## Setting Up a New Machine
- To set up a new machine to use your version controlled config files, all you need to do is to clone the repository on your new machine telling git that it is a bare repository:

```
git clone --separate-git-dir=$HOME/dotfiles git@github.com:eoinlarkin/dotfiles.git
```

However, some programs create default config files, so this might fail if git finds an existing config file in your $HOME. In that case, a simple solution is to clone to a temporary directory, and then delete it once you are done:

```
git clone --separate-git-dir=$HOME/dotfiles git@github.com:eoinlarkin/dotfiles.git tmpdotfiles
rm -r tmpdotfiles
```
