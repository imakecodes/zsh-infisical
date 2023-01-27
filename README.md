# zsh-infisical

This plugin will inject environment variables into your shell session from your [Infisical](https://infisical.com/) (self-hosted or cloud) account every time when you enter a directory that contains a `.infisical.json` file.

You will need to have an Infisical account and a project created and install the [Infisical CLI](https://infisical.com/docs/cli/overview) in order to use this plugin 

## Installation

Clone this repository into your `~/.oh-my-zsh/custom/plugins` directory:

```zsh
git clone git@github.com:imakecodes/zsh-infisical.git ~/.oh-my-zsh/custom/plugins/infisical
```

Then add `infisical` to your `plugins` array in your `~/.zshrc` file:

```zsh
plugins=(... infisical)
```

## Configuration

The default values for Infisical `environment` and `API endpoint` are:

```zsh
DEFAULT_ENV=dev
DEFAULT_URL=https://app.infisical.com/api
```

To override globaly these values, edit your `~/.zshrc` file and add the following lines:


```zsh
ZSH_INFISICAL_DEFAULT_ENV=your_env
ZSH_INFISICAL_DEFAULT_URL=your_url
```

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/imakecodes/zsh-infisical/issues](https://github.com/imakecodes/zsh-infisical/issues) or open a Pull Request.