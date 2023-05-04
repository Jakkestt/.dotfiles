return function()
    vim.filetype.add {
        extension = {
            wgsl = "wgsl",
            vs = "glsl",
            fs = "glsl",
        },
    }
end
