function cd {
	builtin cd "$@"

    if [ -f .infisical.json ]; then
        # Verify if infisical binary exists using infisical -v command
        if ! infisical -v >/dev/null 2>&1; then
            echo "[zsh-infisical] infisical binary not found. Please install it first.\nPlease, install it https://infisical.com/docs/cli/overview" >&2
            return 1
        fi

        DEFAULT_ENV=dev
        DEFAULT_URL=https://app.infisical.com/api

        # If ZSH_INFISICAL_DEFAULT_ENV variable is set
        if [ -n "$ZSH_INFISICAL_DEFAULT_ENV" ]; then
            DEFAULT_ENV=$ZSH_INFISICAL_DEFAULT_ENV
        fi

        # If INFISICAL_API_URL variable is set
        if [ -n "$INFISICAL_API_URL" ]; then
            DEFAULT_URL=$INFISICAL_API_URL
        fi

        # If ZSH_INFISICAL_DEFAULT_URL variable is set
        if [ -n "$ZSH_INFISICAL_DEFAULT_URL" ]; then
            DEFAULT_URL=$ZSH_INFISICAL_DEFAULT_URL
        fi

        # If ZSH_INFISICAL_VERBOSE variable is set
        if [ -n "$ZSH_INFISICAL_VERBOSE" ]; then
            VERBOSE=$ZSH_INFISICAL_VERBOSE
        fi
        echo "Using $DEFAULT_URL with $DEFAULT_ENV..."
        # Activate the environment using the eval command with the CLI output
        infisical --domain=$DEFAULT_URL export -f dotenv-export -e $DEFAULT_ENV | eval
    fi
}
