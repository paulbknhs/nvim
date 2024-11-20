return {
  {
    "mfussenegger/nvim-jdtls", -- nvim-java Plugin
    ft = { "java" }, -- Das Plugin nur für Java-Dateien laden
    config = function()
      -- Konfiguriere jdtls (Java Language Server)
      local jdtls = require("jdtls")

      -- Definiere den Pfad zum JDTLS-Server und den Java-Compiler
      local root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" })

      jdtls.start_or_attach({
        cmd = { "/home/paul/.local/share/nvim/mason/packages/jdtls/jdtls", root_dir }, -- Pfad zur ausführbaren jdtls-Datei
        root_dir = root_dir,
        settings = {
          java = {
            format = {
              enabled = true, -- Auto-Formatierung für Java-Dateien aktivieren
            },
          },
        },
        init_options = {
          bundles = {}, -- Optional: Hier können weitere Java-Bundles hinzugefügt werden
        },
      })
    end,
  },
}
