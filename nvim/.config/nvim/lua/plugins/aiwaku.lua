-- AI CLI integration via opencode
return {
  "juhaku/aiwaku.nvim",
  dependencies = {
    "stevearc/dressing.nvim",
  },
  opts = {
    cmd = {
      { name = "Opencode", cmd = { "opencode" } },
      { name = "Pi",       cmd = { "pi" } },
      { name = "Omp",      cmd = { "omp" } },
      { name = "Agy",      cmd = { "agy" } },
    },
  },
}
