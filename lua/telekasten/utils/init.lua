local M = {}

-- Prints a basic error message
function M.print_error(s)
    vim.cmd("echohl ErrorMsg")
    vim.cmd("echomsg " .. '"' .. s .. '"')
    vim.cmd("echohl None")
end

-- Escapes Lua pattern characters for use in gsub
function M.escape(s)
    -- return s:gsub("[^%w]", "%%%1") -- Escape everything ?
    return s:gsub("[%%%]%^%-$().[*+?]", "%%%1")
end

-- Returns string with listed chars removed (= safer gsub)
function M.strip(s, chars_to_remove)
    return s:gsub("[" .. M.escape(chars_to_remove) .. "]", "")
end

-- Escapes for regex functions like grep or rg
function M.grep_escape(s)
    return s:gsub("[%(|%)|\\|%[|%]|%-|%{%}|%?|%+|%*|%^|%$|%/]", {
        ["\\"] = "\\\\",
        ["-"] = "\\-",
        ["("] = "\\(",
        [")"] = "\\)",
        ["["] = "\\[",
        ["]"] = "\\]",
        ["{"] = "\\{",
        ["}"] = "\\}",
        ["?"] = "\\?",
        ["+"] = "\\+",
        ["*"] = "\\*",
        ["^"] = "\\^",
        ["$"] = "\\$",
    })
end

return M
