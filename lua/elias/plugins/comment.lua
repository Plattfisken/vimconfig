return {
  "numToStr/Comment.nvim",

  config = function()
    require("Comment").setup()
  end,
}
-- gcc: comment line
-- gbc: block comment line
-- gc: line comment visual mode
-- gb: block comment visual mode
