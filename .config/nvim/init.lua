require('a2n/base')
require('a2n/highlights')
require('a2n/maps')
require('a2n/plugins')

-- checking os type
local has = function(x)
  return vim.fn.has(x) == 1
end

local is_unix = has "unix"
local is_mac = has "macunix"
local is_win = has "win32"

-- setup the right clipboard setting for each os
if is_unix then
  require('a2n/unix')
end

if is_win then
  require('a2n/win')
end

if is_mac then
  require('a2n/mac')
end
