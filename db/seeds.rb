# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.create(name: 'Frank Mason', position: 'Guard', number: 0, height: %q[5'11"], weight: 190, year: 'Sr.')
Player.create(name: 'Lagerald Vick', position: 'Guard', number: 2, height: %q[6'5"], weight: 175, year: 'So.')
Player.create(name: 'Sam Cunliffe', position: 'Guard', number: 3, height: %q[6'6"], weight: 200, year: 'Fr.')
Player.create(name: 'Devonte Graham', position: 'Guard', number: 4, height: %q[6'2"], weight: 185, year: 'Jr.')
Player.create(name: 'Sviatoslav Mykhailiuk', position: 'Guard', number: 10, height: %q[6'8"], weight: 205, year: 'Jr.')
Player.create(name: 'Josh Jackson', position: 'Guard', number: 11, height: %q[6'8"], weight: 207, year: 'Fr.')
Player.create(name: 'Tucker Vang', position: 'Guard', number: 12, height: %q[6'2"], weight: 180, year: 'Jr.')
Player.create(name: 'Malik Newman', position: 'Guard', number: 14, height: %q[6'3"], weight: 190, year: 'So.')
Player.create(name: 'Carlton Bragg Jr.', position: 'Forward', number: 15, height: %q[6'10"], weight: 240, year: 'So.')
Player.create(name: 'Tyler Self', position: 'Guard', number: 20, height: %q[6'2"], weight: 170, year: 'Sr.')
Player.create(name: 'Clay Young', position: 'Guard', number: 21, height: %q[6'5"], weight: 205, year: 'Jr.')
Player.create(name: 'Dwight Coleby', position: 'Forward', number: 22, height: %q[6'9"], weight: 240, year: 'Jr.')
Player.create(name: 'Landen Lucas', position: 'Center', number: 33, height: %q[6'10"], weight: 250, year: 'Sr.')
Player.create(name: 'Udoka Azubuike', position: 'Center', number: 35, height: %q[7'0"], weight: 280, year: 'Fr.')
Player.create(name: 'Mitch Lightfoot', position: 'Forward', number: 44, height: %q[6'8"], weight: 210, year: 'Fr.')

Team.create(name: 'Kansas', conference: 'Big 12', rank: 1)
Team.create(name: 'Villanova', conference: 'Big East', rank: 2)
Team.create(name: 'UCLA', conference: 'Pac-12', rank: 3)
Team.create(name: 'Gonzaga', conference: 'West Coast', rank: 4)
Team.create(name: 'Oregon', conference: 'Pac-12', rank: 5)
Team.create(name: 'North Carolina', conference: 'ACC', rank: 6)
Team.create(name: 'Arizona', conference: 'Pac-12', rank: 7)
Team.create(name: 'Kentucky', conference: 'SEC', rank: 8)
Team.create(name: 'Baylor', conference: 'Big 12', rank: 9)
Team.create(name: 'Louisville', conference: 'ACC', rank: 10)
Team.create(name: 'West Virginia', conference: 'Big 12', rank: 11)
Team.create(name: 'SMU', conference: 'American', rank: 12)
Team.create(name: 'Purdue', conference: 'Big Ten', rank: 13)
Team.create(name: 'Duke', conference: 'ACC', rank: 14)
Team.create(name: 'Cincinatti', conference: 'American', rank: 15)
Team.create(name: 'Florida State', conference: 'ACC', rank: 16)
Team.create(name: 'Florida', conference: 'SEC', rank: 17)
Team.create(name: 'Butler', conference: 'Big East', rank: 18)
Team.create(name: 'Saint Marys', conference: 'West Coast', rank: 19)
Team.create(name: 'Wichita State', conference: 'Missouri Valley', rank: 20)
Team.create(name: 'Virginia', conference: 'ACC', rank: 21)
Team.create(name: 'Notre Dame', conference: 'ACC', rank: 22)
Team.create(name: 'Iowa State', conference: 'Big 12', rank: 23)
Team.create(name: 'Wisconsin', conference: 'Big Ten', rank: 24)
Team.create(name: 'Maryland', conference: 'Big Ten', rank: 25)