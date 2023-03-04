puts "🌱 Seeding spices..."

# Seed your database here
# project instance
project1 = Project.create(
    project_name: "Portfolio",
    status: "Incomplete"
)

# user instance 
user1 = User.create(
    username: "Abdull",
    password: 11223344
)

# member instance
member1 = Member.create(
    user_id: user1.id, 
    project_id: project1.id
)



puts "✅ Done seeding!"
