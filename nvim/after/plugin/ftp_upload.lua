function Upload_current_buffer()
    local current_file = vim.fn.expand("%:p") -- Get the path of the current buffer
    local current_dir = vim.fn.expand("%:p:h") -- Get the directory of the current buffer
    local ftp_user = vim.fn.getenv("FTP_USER") -- Retrieve FTP username from environment variable
    local ftp_pass = vim.fn.getenv("FTP_PASS") -- Retrieve FTP password from environment variable
    local ftp_ip = vim.fn.getenv("FTP_IP") -- Retrieve FTP ip from environment variable

    -- Check if environment variables are not nil
    if not ftp_user or not ftp_pass or not ftp_ip then
        print("Error: FTP credentials or IP not set")
        return
    end
    -- Build the lftp command string
    local command = "lftp -u " .. ftp_user .. "," .. ftp_pass .. " '" .. ftp_ip .. "' -e 'set ssl:verify-certificate no; mirror -R " .. current_dir .. " /httpdocs; quit'"

    -- Start asynchronous job
    local job_id = vim.fn.jobstart(command, {
        on_exit = function(_, return_val, _)
            if return_val == 0 then
                print("Upload of " .. current_file .. " completed successfully")
            else
                print("Upload of " .. current_file .. " failed with exit code: " .. return_val)
            end
        end
    })

    -- Handle error in job start
    if job_id <= 0 then
        print("Failed to start upload job")
    end
end

-- vim.api.nvim_set_keymap('n', '<Leader>wftp', ":lua Upload_current_buffer()<CR>", { noremap = true, silent = true })
vim.api.nvim_exec([[
  command! -nargs=0 Wftp :lua Upload_current_buffer()
]], false)
