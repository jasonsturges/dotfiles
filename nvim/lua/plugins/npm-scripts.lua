return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>nr",
        function()
          local cwd = vim.fn.getcwd()
          local package_json = cwd .. "/package.json"
          
          if vim.fn.filereadable(package_json) == 0 then
            vim.notify("No package.json found in current directory", vim.log.levels.ERROR)
            return
          end
          
          local content = vim.fn.readfile(package_json)
          local json = vim.fn.json_decode(table.concat(content, "\n"))
          
          if not json.scripts then
            vim.notify("No scripts found in package.json", vim.log.levels.ERROR)
            return
          end
          
          local scripts = {}
          for name, command in pairs(json.scripts) do
            table.insert(scripts, name)
          end
          
          vim.ui.select(scripts, {
            prompt = "Select npm script to run:",
            format_item = function(item)
              return item .. " → " .. json.scripts[item]
            end,
          }, function(choice)
            if choice then
              Snacks.terminal("npm run " .. choice)
            end
          end)
        end,
        desc = "Run npm script",
      },
    },
  },
}