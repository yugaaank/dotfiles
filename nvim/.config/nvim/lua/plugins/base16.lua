-- Base16 color scheme integration with Matugen
return {
  "RRethy/base16-nvim",
  config = function()
    local ok, matugen = pcall(require, "matugen")
    if ok then
      matugen.setup()
    end
  end,
}
