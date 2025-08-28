-- Eliminates padding when running in an Alacritty terminal

-- Only run if inside Alacritty
if vim.env.ALACRITTY_WINDOW_ID then
  local function set_padding(x, y)
    vim.fn.jobstart({
      "alacritty",
      "msg",
      "config",
      "window.padding.x=" .. x,
      "window.padding.y=" .. y,
    }, { detach = true })
  end

  -- Remove padding on enter
  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      set_padding(0, 0)
    end,
  })

  -- Restore padding on exit
  vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
      set_padding(5, 5) -- <- change to your default padding
    end,
  })
end
