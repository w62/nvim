print ('hello')

local M = {}

function M.setup()
	print('setup')
end

function M.state()
	print('state')
end
return M
