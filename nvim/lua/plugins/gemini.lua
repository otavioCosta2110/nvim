return {
  "olimorris/codecompanion.nvim",
  config = function()
    require("codecompanion").setup({

      gemini = function()
          return require("codecompanion.adapters").extend("gemini", {
            env = {
              api_key = "AIzaSyDJn-Klbgab1YpWF8i8MILSkWmNv0KsRBw",
            },
          })
        end

    })
  end
}
