# zsh-github-releases

An [oh-my-zsh](https://ohmyz.sh) plugin that provides the latest release information of the desired repository.

## Installation

Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

```bash
git clone https://github.com/szEvEz/zsh-github-releases ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-github-releases
```

Add the plugin to the list of plugins for oh-my-zsh to load (inside `~/.zshrc`):

```zshrc
plugins=(
    zsh-github-releases
    ...
)
```

Start a new terminal session or source the ~/.zshrc

## Usage

```bash
ghrel $REPOOWNER/$REPOSTORY

ghrel hashicorp/terraform
```

If you have a list of repos you're checking in quiet frequent, add them to the `$ZSH_CUSTOM/plugins/zsh-github-releases/repos.txt` file, like:

```txt
hashicorp/terraform
lensapp/lens
...
```

And run the plugin without args

```bash
ghrel
```
