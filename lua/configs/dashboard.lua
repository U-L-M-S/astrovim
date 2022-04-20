local M = {}

function M.config()
  local g = vim.g
  local fn = vim.fn

  local plugins_count = fn.len(vim.fn.globpath(fn.stdpath "data" .. "/site/pack/packer/start", "*", 0, 1))

  g.dashboard_disable_statusline = 1
  g.dashboard_default_executive = "telescope"
  g.dashboard_custom_header = {
    " ",
    " ",
    " ",
    "             ..ooo@@@XXX%%%xx..",
    "          .oo@@XXX%x%xxx..     ` .",
    "        .o@XX%%xx..               ` .",
    "       o@X%..                  ..ooooooo",
    "      .@X%x.                 ..o@@^^   ^^@@o",
    "    .ooo@@@@@@ooo..      ..o@@^          @X%",
    "    o@@^^^     ^^^@@@ooo.oo@@^             %",
    "   xzI    -*--      ^^^o^^        --*-     %",
    "   @@@o     ooooooo^@@^o^@X^@oooooo     .X%x",
    "  I@@@@@@@@@XX%%xx  ( o@o )X%x@ROMBASED@@@X%x",
    "  I@@@@XX%%xx  oo@@@@X% @@X%x   ^^^@@@@@@@X%x",
    "   @X%xx     o@@@@@@@X% @@XX%%x  )    ^^@X%x",
    "    ^   xx o@@@@@@@@Xx  ^ @XX%%x    xxx",
    "          o@@^^^ooo I^^ I^o ooo   .  x",
    "          oo @^ IX      I   ^X  @^ oo",
    "          IX     U  .        V     IX",
    "           V     .           .     V",
    " ",
    " ",
    " ",
  }

  g.dashboard_custom_section = {
    a = { description = { "   Find File                 SPC f f" }, command = "Telescope find_files" },
    b = { description = { "   Recents                   SPC f o" }, command = "Telescope oldfiles" },
    c = { description = { "   Find Word                 SPC f w" }, command = "Telescope live_grep" },
    d = { description = { "   New File                  SPC f n" }, command = "DashboardNewFile" },
    e = { description = { "   Bookmarks                 SPC b m" }, command = "Telescope marks" },
    f = { description = { "   Last Session              SPC s l" }, command = "SessionLoad" },
  }

  g.dashboard_custom_footer = {
    " ",
    " AstroVim loaded " .. plugins_count .. " plugins ",
  }
end

return M
