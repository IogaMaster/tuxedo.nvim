local M = {}

local win_id = nil
local buf_id = nil

function M.tuxedo()
    if win_id and vim.api.nvim_win_is_valid(win_id) then
        vim.api.nvim_set_current_win(win_id)
        return
    end

    local root_dir = vim.fs.root(0, { ".git" }) or vim.fn.getcwd()
    local todo_path = root_dir .. "/todo.txt"

    if vim.fn.filereadable(todo_path) == 0 then
        vim.fn.writefile({}, todo_path)
    end

    local uis = vim.api.nvim_list_uis()
    if #uis == 0 then
        return
    end

    local width = uis[1].width
    local height = uis[1].height

    local win_width = math.ceil(width * 0.95)
    local win_height = math.ceil(height * 0.8)

    local row = math.ceil((height - win_height) / 2) - 1
    local col = math.ceil((width - win_width) / 2)

    buf_id = vim.api.nvim_create_buf(false, true)

    local win_opts = {
        relative = 'editor',
        width = win_width,
        height = win_height,
        row = row,
        col = col,
        style = 'minimal',
        border = 'rounded',
        title = ' Tuxedo ',
        title_pos = 'center',
    }

    win_id = vim.api.nvim_open_win(buf_id, true, win_opts)

    vim.api.nvim_set_option_value('bufhidden', 'wipe', { buf = buf_id })

    vim.fn.termopen('tuxedo', {
        on_exit = function(_, _, _)
            if win_id and vim.api.nvim_win_is_valid(win_id) then
                vim.api.nvim_win_close(win_id, true)
                win_id = nil
                buf_id = nil
            end
        end,
    })

    vim.api.nvim_set_option_value('filetype', 'todo', { buf = buf_id })
    vim.cmd 'startinsert'
end

function M.setup()
    vim.api.nvim_create_user_command("Tuxedo", function()
        M.tuxedo()
    end, {})
end

return M
