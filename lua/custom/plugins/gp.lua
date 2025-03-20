return {
  {
    'robitx/gp.nvim',
    config = function()
      local conf = {
        providers = {
          copilot = {
            endpoint = 'https://api.githubcopilot.com/chat/completions',
            secret = {
              'bash',
              '-c',
              "cat ~/.config/github-copilot/hosts.json | sed -e 's/.*oauth_token...//;s/\".*//'",
            },
          },
        }, -- For customization, refer to Install > Configuration in the Documentation/Readme
      }
      require('gp').setup(conf)

      -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
      --
    end,
  },
}
