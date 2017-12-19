michael = User.create!(name: "Michael", password: "password1")
sarah 	= User.create!(name: "Sarah", password: "password2")
moh 	= User.create!(name: "Moh", password: "password3")
lisa 	= User.create!(name: "Lisa", password: "password4")

rails   = Skill.create(name: "Rails")
ruby   	= Skill.create(name: "Ruby")
python  = Skill.create(name: "Python")
html   	= Skill.create(name: "HTML")
css   	= Skill.create(name: "CSS")
linux   = Skill.create(name: "Linux")
shell   = Skill.create(name: "Shell")
android = Skill.create(name: "Android")
swift   = Skill.create(name: "Swift")
react   = Skill.create(name: "React")
angular = Skill.create(name: "Angular")


michael.skills << [rails, ruby, python, html]
sarah.skills   << [html, css, rails, linux, angular]
moh.skills     << [rails, shell, ruby, react, swift]
lisa.skills    << [angular, rails, css, android]