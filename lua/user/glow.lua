require("glow").setup({
	glow_path = "C:\\ProgramData\\chocolatey\\bin\\glow.exe", -- will be filled automatically with your glow bin in $PATH, if any
  border = "shadow", -- floating window border config
  style = "dark", -- filled automatically with your current editor background, you can override using glow json style
  pager = false,
  width = 1024,
  height = 768,
  width_ratio = 0.7, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
  height_ratio = 0.7,
})

