local M = {}

function M.enable_python_tools(self)
  return not vim.tbl_isempty(vim.fs.find(".enable-python-tools", {
    path = self.dirname,
    upward = true,
  }))
end

return M
