return {
  "hashivim/vim-terraform",
  --
  config = function()
    -- Ensure filetypes are set for various Terraform-related files
    vim.cmd([[silent! autocmd! filetypedetect BufRead,BufNewFile *.tf]])
    vim.cmd([[autocmd BufRead,BufNewFile *.hcl set filetype=hcl]])
    vim.cmd([[autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl]])
    vim.cmd([[autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform]])
    vim.cmd([[autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json]])

    -- Enable Terraform formatting on save and alignment
    vim.cmd([[let g:terraform_fmt_on_save=1]])
    vim.cmd([[let g:terraform_align=1]])

    -- Set up key mappings for common Terraform commands
    -- local opts = { noremap = true, silent = true }
    local keymap = vim.keymap
    keymap.set("n", "<leader>ti", ":!terraform init<CR>", { desc = "Terraform Init", noremap = true, silent = true })
    keymap.set("n", "<leader>tv", ":!terraform validate<CR>",
      { desc = "Terraform Validate", noremap = true, silent = true })
    keymap.set("n", "<leader>tp", ":!terraform plan<CR>", { desc = "Terraform Plan", noremap = true, silent = true })
    keymap.set("n", "<leader>taa", ":!terraform apply -auto-approve<CR>",
      { desc = "Terraform Apply", noremap = true, silent = true })
  end
}
