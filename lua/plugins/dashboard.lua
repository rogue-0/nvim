return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		local header = {
			aot = {
				"    ░░                                                  ░░    ",
				"    ████                                              ████    ",
				"    ██▓▓██                                          ██  ██    ",
				"    ██▓▓▓▓██                                      ██    ██    ",
				"██████▓▓▓▓▓▓██████████████████████████████████████      ██████",
				"██░░░░░░▓▓▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░      ░░░░░░██",
				"██▓▓▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒      ▒▒▒▒▒▒  ██",
				"██▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒      ░░▒▒▒▒    ██",
				"██░░▓▓▓▓▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒    ░░██",
				"██░░▓▓▓▓▓▓▓▓▒▒▒▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒        ░░██",
				"██░░▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒        ▒▒░░██",
				"██▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒░░▒▒▒▒▒▒    ▒▒▒▒        ▒▒▒▒  ██",
				"██▓▓▓▓▓▓▒▒▒▒▓▓▓▓▒▒▒▒▒▒▓▓▓▓▒▒▒▒░░▒▒▒▒    ▒▒▒▒▒▒    ▒▒▒▒      ██",
				"██░░▓▓▓▓▒▒▒▒▒▒▓▓▒▒▒▒▒▒▒▒▓▓▒▒▒▒░░▒▒    ░░▒▒  ▒▒  ░░▒▒      ░░██",
				"██▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒▓▓▒▒▒▒▒▒▓▓    ▒▒  ▒▒▒▒    ▒▒▒▒▒▒      ▒▒  ██",
				"██▓▓▓▓▒▒▓▓▓▓▓▓▒▒▒▒▓▓▓▓▓▓▒▒      ▒▒▒▒▒▒      ▒▒▒▒      ▒▒    ██",
				"██░░▓▓▓▓▒▒▒▒▓▓▒▒▓▓▒▒▒▒▓▓        ▒▒▒▒    ▒▒▒▒  ▒▒  ▒▒▒▒    ░░██",
				"██░░▓▓▓▓▓▓▓▓▒▒▒▒▓▓▒▒▒▒      ░░░░▒▒▒▒  ░░▒▒    ▒▒▒▒        ░░██",
				"██░░▒▒▓▓▓▓▓▓▓▓▒▒▒▒▓▓▓▓    ▒▒▒▒░░  ▒▒▒▒▒▒    ▒▒▒▒        ▒▒░░██",
				"██░░░░░░▓▓▓▓▓▓░░░░░░▓▓  ░░░░      ░░      ░░░░░░      ░░░░░░██",
				"██░░▒▒▒▒▒▒▓▓▓▓░░▒▒▒▒▒▒▒▒▒▒      ░░▒▒    ░░    ▒▒    ░░▒▒▒▒░░██",
				"██░░▓▓▓▓▒▒▒▒▓▓▒▒▓▓▓▓▓▓▒▒    ▒▒░░  ▒▒▒▒▒▒      ▒▒  ▒▒▒▒    ░░██",
				"██░░▒▒▓▓▓▓▓▓▒▒▒▒▒▒▓▓▓▓    ▒▒      ▒▒▒▒      ▒▒▒▒▒▒      ▒▒░░██",
				"██░░▒▒▓▓▓▓▓▓▓▓▒▒▓▓▒▒▓▓  ▒▒      ▒▒▒▒      ▒▒  ▒▒        ▒▒░░██",
				"██░░▒▒▒▒▒▒▓▓▓▓▒▒▓▓▓▓▒▒▒▒    ▒▒░░  ▒▒    ▒▒    ▒▒    ▒▒▒▒▒▒░░██",
				"██░░▒▒▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▒▒  ▒▒      ▒▒▒▒▒▒      ▒▒▒▒▒▒▒▒  ▒▒░░██",
				"██░░▒▒▓▓▓▓▓▓▓▓▒▒▒▒▒▒▓▓  ▒▒      ▒▒▒▒      ▒▒▒▒▒▒        ▒▒░░██",
				"██░░▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒░░    ▒▒░░▒▒▒▒    ░░▒▒  ▒▒      ▒▒▒▒░░██",
				"██░░▒▒▒▒▒▒▒▒▓▓▒▒▓▓▓▓▓▓▒▒  ▒▒      ▒▒▒▒▒▒      ▒▒  ▒▒▒▒▒▒▒▒░░██",
				"██░░▒▒▒▒▓▓▓▓▒▒▒▒▒▒▓▓▓▓  ▒▒      ▒▒▒▒        ▒▒▒▒▒▒    ▒▒▒▒░░██",
				"██░░▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒░░  ▒▒▒▒░░▒▒▒▒    ░░▒▒▒▒      ░░▒▒▒▒░░██",
				"██░░▒▒▒▒▒▒▒▒▓▓▓▓▒▒▓▓▓▓  ▒▒▒▒      ▒▒▒▒▒▒    ▒▒    ▒▒▒▒▒▒▒▒░░██",
				"██░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒  ▒▒░░▒▒        ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░██",
				"██░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒    ▒▒    ░░▒▒▒▒      ▒▒▒▒▒▒▒▒░░██",
				"██░░░░▒▒▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒      ░░▒▒▒▒      ▒▒    ▒▒▒▒▒▒▒▒░░░░██",
				"██████░░░░▒▒▒▒▒▒▓▓▒▒▒▒    ▒▒▒▒░░        ▒▒▒▒  ▒▒▒▒▒▒░░░░██████",
				"      ████░░░░▒▒▒▒▒▒    ░░          ▒▒░░▒▒▒▒▒▒▒▒░░░░████      ",
				"          ████░░░░▒▒      ▒▒    ▒▒▒▒▓▓▓▓▓▓▒▒░░░░████          ",
				"              ██      ▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▓▓▓▓▓▓██              ",
				"            ██    ████░░░░▒▒▒▒░░▒▒▒▒░░░░████▓▓▓▓██            ",
				"          ██    ██    ████░░░░░░░░░░████    ██▓▓▓▓██          ",
				"        ████████          ████░░████          ████████        ",
				"                              ██                              ",
			},
			mikasa = {
				"                                                        ",
				"                                                        ",
				"⠀⣀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣨⡷⣸⡇⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣶⣶⣶⣾⣭⣿⣿⣾⣶⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
				"⠀⢹⣽⡆⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠋⢻⣷⠀⠀⠀⠀⢀⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
				"⠀⢸⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠤⢒⣿⠀⠀⢀⣼⣿⣿⣿⣿⣿⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀   ",
				"⠀⢸⣿⣻⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠍⣿⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀   ",
				"⠀⢸⡯⢽⣿⡀⠀⠀⠀⠀⠀⠀⠒⢫⠵⠊⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀   ",
				"⠀⠸⣿⣿⣯⡟⠀⠀⠀⠀⠀⠀⠀⠊⠁⢺⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣟⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⢿⣿⣯⢿⣿⢧⠀⠀⠀   ",
				"⠀⢠⣇⢲⢿⣟⠂⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣯⣧⠀⠀   ",
				"⠀⠘⣗⣹⣧⡴⣀⡀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣞⡆⠀   ",
				"⠀⠀⢻⠴⢯⣛⡤⠤⠀⠀⠀⠀⠀⠀⣿⣯⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⢋⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣹⣿⡇⠀   ",
				"⠀⠀⢸⡯⣟⡲⠾⣦⠆⠀⠀⠀⢀⣠⡾⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⢣⣾⣿⢋⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⠃⣸⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀   ",
				"⠀⠀⢸⣟⣳⡤⠖⣻⠍⠁⠀⢠⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⢿⣿⡿⣫⣿⣿⡿⠃⠀⣿⣿⣿⣿⣿⢏⣿⣿⢸⣿⠀   ",
				"⠀⠀⠈⢿⣶⣪⠽⣓⡤⠄⢀⣞⣟⣿⣿⢸⣯⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣫⡿⣫⣾⣿⡿⠋⠀⠀⣸⢿⣿⣿⣿⡟⢸⣿⣿⢨⣿⠀   ",
				"⡁⠀⠀⢘⣟⣛⣉⣴⡟⠁⢸⣿⣼⣟⣿⣿⣿⣷⣭⣻⠿⣿⣿⣿⣿⣹⣿⣿⣿⣿⠟⣵⡿⣿⣿⡿⠋⠀⠀⠀⢠⡟⣸⣿⣿⣿⣡⡯⣿⣿⢐⣿⠀   ",
				"⠀⠀⠀⠀⡯⠗⣛⣡⠄⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⢧⠻⠟⠛⠛⠛⠛⠛⠣⣼⢁⣿⡿⣿⢯⡏⠀⣿⣿⡘⡟⠀   ",
				"⠀⠀⠀⠀⢛⣩⡵⠒⢀⡄⢺⣿⣿⣿⣻⣿⣿⣽⡏⢿⠟⣿⣽⣿⣿⣿⣿⣿⣿⠋⣦⣤⣶⣶⣶⣿⣭⣷⡆⣼⠃⣾⣿⣷⣷⣾⣿⣾⣿⣿⣷⡇⠀   ",
				"⠀⠀⠀⠼⣿⡤⠒⠋⢁⡀⢸⣿⣿⣿⣿⣿⣿⣿⣷⡀⠘⣿⣼⣿⣿⣿⣿⣿⣧⡀⠈⠻⡍⢹⣿⣿⠏⢉⡽⠁⣼⣿⣿⢹⡿⠟⢹⣿⣿⣿⣼⠀⠀   ",
				"⠀⠀⠀⢸⣷⡗⠒⠋⠉⠀⢸⣿⣿⣿⡿⣿⣿⣿⡿⣷⡄⣿⢸⣿⣿⣿⣿⣿⠀⠾⠷⠦⣀⠀⠀⠀⠀⠎⢡⣾⠿⠛⣿⠀⠀⠀⣸⡏⣿⣿⡏⠀⠀   ",
				"⠀⠀⠀⢠⡿⡗⠋⠀⠀⠀⣼⣿⣿⢸⠀⣿⣿⣿⣧⣈⣙⢿⣾⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⠀⠀⠀⠻⡄⠀⢀⣿⢳⣿⣿⠀⠀⠀   ",
				"⠀⠀⠀⠀⠿⣟⣄⣀⠀⢰⣿⣿⣿⣼⢸⣿⣿⣿⣿⣷⣮⣿⣿⣿⣿⡿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠐⠃⠀⠀⠀⢀⡤⠞⠁⢀⣾⣯⡿⣽⠇⠀⠀⠀   ",
				"⠀⠀⠀⠀⠈⠉⣫⡇⠀⢸⣿⣿⣿⡟⣼⣿⣿⣿⣿⢻⡟⣯⠀⠈⣿⣿⣏⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣧⣀⠀⢀⣾⣿⡾⣳⠋⠀⠀⠀⠀   ",
				"⡀⠀⠀⠀⠀⢀⣿⠃⠆⢸⣿⣿⠏⣏⣿⡟⣸⣿⣿⠜⣿⣮⢧⡀⢸⡏⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠲⠿⠿⠿⠛⠉⢀⣿⣿⣿⡷⠃⠀⠀⠀⠀⠀   ",
				"⠁⠀⠀⠀⠀⠠⣇⠀⠀⢸⣿⣾⡆⠀⣿⡵⠃⢻⣿⣆⣱⣿⣷⡝⠻⣿⣸⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠈⠉⠉⠁⢠⣾⠿⣿⣇⠀⠀⠀⠀⠀⠀⠀   ",
				"⡄⠀⠀⠀⠀⠠⣾⡖⠂⣹⣿⣿⣤⡟⣁⢈⣿⣇⢻⣿⣿⣾⣿⣿⢷⣬⣉⣙⡛⠻⠛⠻⠿⠷⠦⠤⠤⠤⢤⣤⣾⣿⣫⡾⣿⣿⡇⠀⠀⠀⠀⠀⠀   ",
				"⡄⠀⠀⠀⠀⢤⣿⣇⣾⣿⢾⣿⣿⣧⣯⣿⣿⣻⣦⣹⣿⣿⣯⡻⢿⣿⣿⣿⣿⣷⣶⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣯⣿⡀⠀⠀⠀⠀⠀⠀   ",
				"⠀⠀⠀⠀⠀⠰⣿⣿⣿⣭⣭⣿⡝⣿⡽⣿⣿⣷⣿⣿⡍⠻⣿⣿⣿⣿⣿⣿⣿⢿⣿⣯⣽⣯⣿⣿⣿⣿⣿⣦⣯⣿⣿⣉⣽⢿⣇⠀⠀⠀⠀⠀⠀   ",
				"⡂⠀⠀⠀⢈⣻⣿⣿⣿⣿⠋⠁⠹⡜⣿⣿⣿⣿⣿⣿⣿⣶⣽⢿⣿⣝⡛⠻⢿⣙⣛⡿⠿⣿⣯⣭⣽⡉⣻⣿⣋⣡⡷⢻⣿⡈⡟⠳⣄⠀⠀⠀⠀   ",
				"⠗⠀⠀⠴⣚⣯⣿⠟⠉⠀⠀⠀⠀⠙⣏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⡻⠿⣶⣤⣛⣿⣿⠷⠶⢶⣶⣶⢾⣿⡿⠛⢡⠟⢹⣧⣷⠀⠙⢧⠀⠀⠀   ",
				"⡶⠘⠂⢻⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣻⢿⣿⣿⣿⡻⣿⣿⣿⣿⣷⣢⣤⠼⣿⡿⠧⣤⣴⣾⣿⡿⠋⢀⣴⢯⢀⣜⣿⣯⡆⠀⠈⣧⠀⠀   ",
				"⠉⠀⣴⠋⢲⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⢿⣿⣝⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⣀⣈⣉⣉⣭⣴⢾⣿⣗⣶⢙⣾⣟⡟⠀⠀⠀⠸⡄⠀   ",
				"⡒⣹⡟⠀⠀⠉⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⡙⣿⣿⡿⣿⣯⣛⢿⣿⣾⣭⣿⣿⣉⣉⣭⣽⡟⣾⣿⣽⡿⠀⢀⠀⠀⠀⢧⠀   ",
				"⣷⡟⠀⠀⠀⠀⠀⠳⡄⠀⠘⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣦⣽⣿⣿⠿⣿⣯⣿⢯⣳⣿⡿⢿⣿⣿⣿⡛⡒⢲⣹⡿⣻⠃⡀⣎⡇⠀⠀⢸⠀   ",
				"⣿⠀⠀⠀⠀⠀⡀⠀⠹⡄⠀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣮⣛⢿⣲⢟⣾⢿⣾⣿⣧⣬⣭⣭⣭⣤⣤⣽⡿⢡⡇⠀⢸⣿⠀⠀⠀⠘⡆   ",
				"⡏⠀⠀⠀⠀⠀⡃⠀⠀⠹⠄⢘⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣻⡷⢬⣗⢽⣿⡾⣟⠛⠓⠚⣻⡿⠛⠛⣋⡴⠋⠀⠀⢸⡟⠀⠀⠀⠀⣷   ",
				"                                                        ",
				"                                                        ",
			},
		}

		require("dashboard").setup({
			theme = "doom",
			config = {
				header = header.mikasa,
				center = {
					{
						icon = " ",
						icon_hl = "Title",
						desc = "Open File Explorer",
						desc_hl = "String",
						key = "o",
						keymap = "SPC t",
						key_hl = "Number",
						key_format = " %s",
						action = "lua print(1)",
					},
					{
						icon = " ",
						icon_hl = "Title",
						desc = "Find File",
						desc_hl = "String",
						key = "b",
						keymap = "SPC f f",
						key_hl = "Number",
						key_format = " %s", -- remove default surrounding `[]`
						action = "lua print(2)",
					},
					{
						icon = " ",
						desc = "Find Files",
						key = "f",
						keymap = "SPC f g",
						key_format = " %s", -- remove default surrounding `[]`
						action = "lua print(3)",
					},
				},
			},
			hide = {
				winbar = false,
			},
			preview = {},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
