local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local time = os.date("%H:%M")
local v = vim.version()
local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch
dashboard.section.header.val = {	
"________      ________           ___    __                 ",
"___  __ \\__(_)_____/ /_____________ |  / /__(_)______ ___  ",
"__  /_/ /_  /_  __  /_  _ \\_  ___/_ | / /__  /__  __ `__ \\ ",
"_  _, _/_  / / /_/ / /  __/  /   __ |/ / _  / _  / / / / / ",
"/_/ |_| /_/  \\__,_/  \\___//_/    _____/  /_/  /_/ /_/ /_/  ",                                                    "														",
"   ..           .:.                  ,:.           ..",
"   ;o'         .ox.                  ;O:         .co.",
"   .x0o.       ,0O,                  cXx.       ;kKc ",
"    ,OXOl'     lXXl                 .kX0;    .;xKXd. ",
"     ;OXX0d;. .oXXO,                lKXK; .,lkKXKx.  ",
"      ,kXXXX0xcoKXXk'              c0XXOloOKXXXKo.   ",
"   'cc;:dOKXXXOokXXXO;           .oKXXKddKXXX0xl:cl:.",
"    'dK0kdoxKXXxo0XXXKx:.     .,oOXXXXkoOXXOdod0XO:. ",
"      ,d0XOdodOKdoOXXXXX0kdddxOKXXXXKxoOKkdox0XOc.   ",
"        ,o0X0xddd;.,cdOKXXXXXXXXKxl;..:dodOKKx:.     ",
"          .:d0KOd'    .:kXXXXX0d'     :kKKkl,        ",
"             .:oko.     .xXXXKc      ,ddc'.          ",
"                 ..      :KXXk'      ..              ",
"                         :KXXO,                      ",
"                    'c;,:kXXXXx:;c:.                 ",
"                    .o000XXXXXKO0k,                  ",
"                      ,,':lolc'.,.                   ",
}
dashboard.section.buttons.val = {
	    dashboard.button("n", "╦═> " .. " Nuevo", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "╠═> " .. " Buscar ", ":Telescope find_files <CR>"),
        dashboard.button("g", "╠═> " .. " Encontrar", ":Telescope live_grep <CR>"),
        dashboard.button("r", "╠═> " .. " Reciente", ":Telescope oldfiles <CR>"),
        dashboard.button("c", "╠═> " .. " Configurar", ":e $MYVIMRC <CR>"),
        dashboard.button("s", "╠═> " .. " Restaurar", [[:lua require("persistence").load() <cr>]]),
        dashboard.button("l", "╠═> " .. " Lazy", ":Lazy<CR>"),
        dashboard.button("q", "╚═> " .. " Salir", ":qa<CR>"),
}

dashboard.section.footer.val = {
  " " .. time .. " ",
  version,
}

alpha.setup(dashboard.opts)
vim.cmd('colorscheme molokai')
                                                  
