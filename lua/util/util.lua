
-- Helper function to make it easier to map certain keys
function Map(keys, func, desc, event)
  vim.keymap.set('n', keys, func, { buffer = event.buf, desc = desc })
end