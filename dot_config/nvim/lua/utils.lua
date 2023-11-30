local M = {}

function M.enable_python_tools(ctx)
  return not vim.tbl_isempty(vim.fs.find(".enable-python-tools", {
    path = ctx.dirname,
    upward = true,
  }))
end

return M
