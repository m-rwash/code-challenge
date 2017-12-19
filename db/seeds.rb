michael = User.create!(name: "Michael")
sarah = User.create!(name: "Sarah")

michael.skills.create!(name: "Rails")
michael.skills.create!(name: "Ruby")
michael.skills.create!(name: "Python")
michael.skills.create!(name: "HTML")


sarah.skills.create!(name: "HTML")
sarah.skills.create!(name: "CSS")
sarah.skills.create!(name: "JavaScript")
sarah.skills.create!(name: "Rails")