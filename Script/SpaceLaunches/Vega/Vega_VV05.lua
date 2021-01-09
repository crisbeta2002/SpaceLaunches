h = oapi.create_annotation()
h:set_pos(0.04,0.8,0.4,1)
h:set_size(1.0)
h:set_colour({r=0.9,g=1,b=0.9})

t1 = oapi.get_simtime()

function tstep()
	proc.skip()
	t1 = oapi.get_simtime()
end

h:set_text('Launch Date: 23rd June 2015 01:52 UTC\nLaunch site: ELA-1, Kourou, French Guiana\nRocket: Vega\nPayload: Sentinel-2A (1130 kg)')

while t1 < 30 do
	tstep()
end

h:set_text('')
h:set_text('Stage 1: P80\nTotal mass: 97t\nThrust: 310t (230t SL)')

while t1 < 145 do
	tstep()
end

h:set_text('')
h:set_text('Stage 2: Zefiro 23\nTotal mass: 25.8t\nThrust: 122t')

while t1 < 259 do
	tstep()
end

h:set_text('')
h:set_text('Stage 3: Zefiro 9\nTotal mass: 10.9t\nThrust: 32t')

while t1 < 492 do
	tstep()
end

h:set_text('')
h:set_text('Stage 4: AVUM\nTotal mass: 1t\nThrust: 0.25t')

while t1 < 600 do
	tstep()
end

h:set_text('')
