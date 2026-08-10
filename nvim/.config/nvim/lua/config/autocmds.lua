-- 保存离开插入模式时的输入法名称
local prev_im = nil

-- 获取当前输入法名称（去除换行）
local function get_current_im()
    local output = vim.fn.system('fcitx5-remote -n')
    return output:gsub('\n', '')  -- 去掉换行符
end

-- 切换到指定输入法
local function switch_to_im(im_name)
    if im_name and im_name ~= '' then
        vim.fn.system('fcitx5-remote -s ' .. im_name)
    end
end

-- 这里的英文输入法名称替换成系统中的实际名称
-- 获取方式：先切换到英文输入法，在终端执行 `fcitx5-remote -n`
local english_im = 'keyboard-us'   -- 很可能不是这个，请检查！

-- 创建自动命令组
local group = vim.api.nvim_create_augroup('Fcitx5NameGroup', { clear = true })

-- 离开插入模式：存储当前输入法，切到英文
vim.api.nvim_create_autocmd('InsertLeave', {
    group = group,
    callback = function()
        prev_im = get_current_im()      -- 保存当前输入法
        switch_to_im(english_im)        -- 强制切到英文
    end
})

-- 进入插入模式：如果之前不是英文，就恢复之前的输入法
vim.api.nvim_create_autocmd('InsertEnter', {
    group = group,
    callback = function()
        if prev_im and prev_im ~= english_im then
            switch_to_im(prev_im)
        end
        prev_im = nil   -- 清除状态，避免跨缓冲区影响
    end
})
