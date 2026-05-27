require("config.options")
require("config.keymaps")
require("config.profile")
if not require("config.profile").lite then
  require("config.markdown-preview")
end
require("config.lazy")
