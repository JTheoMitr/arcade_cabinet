Company.destroy_all
Game.destroy_all


nintendo = Company.create(name: "Nintendo", location: "Kyoto, Japan", age: 131, founded: 1889)
nintendo.games.create(name: "Donkey Kong", release_year: 1981)
nintendo.games.create(name: "Super Mario Bros", release_year: 1985)


bethesda = Company.create(name: "Bethesda Game Studios", location: "Rockville, Maryland", age: 19, founded: 2001)
bethesda.games.create(name: "Fallout 3", release_year: 2008)
bethesda.games.create(name: "The Elder Scrolls V: Skyrim", release_year: 2011)

capcom = Company.create(name: "Capcom", location: "Osaka, Japan", age: 41, founded: 1979)
capcom.games.create(name: "Resident Evil", release_year: 1996)
capcom.games.create(name: "Street Fighter", release_year: 1987)
capcom.games.create(name: "Mega Man X", release_year: 1993)


cdp = Company.create(name: "CD Projekt", location: "Warsaw, Poland", age: 26, founded: 1994)
cdp.games.create(name: "Cyberpunk 2077", release_year: 2020)
cdp.games.create(name: "The Witcher", release_year: 2007)

sega = Company.create(name: "Sega", location: "Tokyo, Japan", age: 60, founded: 1960)
sega.games.create(name:"Sonic the Hedgehog", release_year: 1991)
sega.games.create(name:"Streets of Rage", release_year: 1991)
