local M = {}

function M.config()
    require'code_runner'.setup {
	    term = {
		    --position = "horizon",
		    size = 12,
            --tab = true,
		    --mode = "startinsert"
	    },
        filetype = {
		    java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
            cpp = "g++ $file -o ~/.code_runner_build/$fileNameWithoutExt  && ~/.code_runner_build/$fileNameWithoutExt",
		    python = "python $file",
		    -- typescript = "deno run",
		    -- rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
            rust = "cargo run"
	    },
	    -- filetype_path = vim.fn.expand('~/.config/nvim/code_runner.json'),
	    -- project_path = vim.fn.expand('~/.config/nvim/project_manager.json')
    }
end 

return M
