return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        "oooo   oooo ooooo  oooo ooooo oooo     oooo",
        " 8888o  88   888    88   888   8888o   888 ",
        " 88 888o88    888  88    888   88 888o8 88 ",
        " 88   8888     88888     888   88  888  88 ",
        "o88o    88      888     o888o o88o  8  o88o",
      }
      return opts
    end,
  },
  { "stevearc/aerial.nvim", enabled = false },
}
