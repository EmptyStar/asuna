local p = "bakedclay:"

lucky_block:add_blocks({
	{"dro", {"bakedclay:"}, 10, true},
	{"fal", {
		p.."black", p.."blue", p.."brown", p.."cyan", p.."dark_green",
		p.."dark_grey", p.."green", p.."grey", p.."magenta", p.."orange",
		p.."pink", p.."red", p.."violet", p.."white", p.."yellow", p.."natural"
	}, 0},
	{"fal", {
		p.."black", p.."blue", p.."brown", p.."cyan", p.."dark_green",
		p.."dark_grey", p.."green", p.."grey", p.."magenta", p.."orange",
		p.."pink", p.."red", p.."violet", p.."white", p.."yellow", p.."natural"
	}, 0, true},
	{"dro", {p.."delphinium"}, 5},
	{"dro", {p.."lazarus"}, 5},
	{"dro", {p.."mannagrass"}, 5},
	{"dro", {p.."thistle"}, 6},
	{"flo", 5, {
		p.."natural", p.."black", p.."blue", p.."brown", p.."cyan",
		p.."dark_green", p.."dark_grey", p.."green", p.."grey", p.."magenta",
		p.."orange", p.."pink", p.."red", p.."violet", p.."white", p.."yellow"
	}, 2},
	{"nod", "default:chest", 0, {
		{name = p.."natural", max = 30},
		{name = p.."black", max = 30},
		{name = p.."blue", max = 30},
		{name = p.."brown", max = 30},
		{name = p.."cyan", max = 30},
		{name = p.."dark_green", max = 30},
		{name = p.."dark_grey", max = 30},
		{name = p.."green", max = 30},
		{name = p.."grey", max = 30},
		{name = p.."magenta", max = 30},
		{name = p.."orange", max = 30},
		{name = p.."pink", max = 30},
		{name = p.."red", max = 30},
		{name = p.."violet", max = 30},
		{name = p.."white", max = 30},
		{name = p.."yellow", max = 30}
	}}
})

p = "bakedclay:terracotta_"

lucky_block:add_blocks({
	{"nod", "default:chest", 0, {
		{name = p.."black", max = 20},
		{name = p.."blue", max = 20},
		{name = p.."brown", max = 20},
		{name = p.."cyan", max = 20},
		{name = p.."dark_green", max = 20},
		{name = p.."dark_grey", max = 20},
		{name = p.."green", max = 20},
		{name = p.."grey", max = 20},
		{name = p.."magenta", max = 20},
		{name = p.."orange", max = 20},
		{name = p.."pink", max = 20},
		{name = p.."red", max = 20},
		{name = p.."violet", max = 20},
		{name = p.."white", max = 20},
		{name = p.."yellow", max = 20}
	}}
})
