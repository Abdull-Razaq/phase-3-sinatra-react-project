puts "🌱 Seeding spices..."

# Seed your database here
# project instance
project1 = Project.create(
    project_name: "Portfolio",
    status: "Incomplete"
)
project2 = Project.create(
    project_name: "Project Manager",
    status: "Complete"
)
project3 = Project.create(
    project_name: "Pet Finder",
    status: "Incomplete"
)
project4 = Project.create(
    project_name: "Task Manager",
    status: "Incomplete"
)

# user instance 
user1 = User.create(
    username: "Abdull",
    password: 11223344
)
user2 = User.create(
    username: "Mohamed",
    password: 22334455
)
user3 = User.create(
    username: "Abdull",
    password: 33445566
)
user4 = User.create(
    username: "Abdull",
    password: 44556677
)

# member instance
member1 = Member.create(
    user_id: user1.id, 
    project_id: project1.id,
    username: user1.username
)
member2 = Member.create(
    user_id: user1.id,
    project_id: project2.id,
    username: user1.username
)
member3 = Member.create(
    user_id: user1.id, 
    project_id: project3.id,
    username: user1.username
)
member4 = Member.create(
    user_id: user1.id,
    project_id: project4.id,
    username: user1.username
)
member5 = Member.create(
    user_id: user2.id, 
    project_id: project1.id,
    username: user2.username
)
member6 = Member.create(
    user_id: user2.id,
    project_id: project2.id,
    username: user2.username
)
member7 = Member.create(
    user_id: user2.id, 
    project_id: project3.id,
    username: user2.username
)
member8 = Member.create(
    user_id: user2.id,
    project_id: project4.id,
    username: user2.username
)
member9 = Member.create(
    user_id: user3.id, 
    project_id: project1.id,
    username: user3.username
)
member10 = Member.create(
    user_id: user3.id,
    project_id: project2.id,
    username: user3.username
)
member11 = Member.create(
    user_id: user3.id, 
    project_id: project3.id,
    username: user3.username
)
member12 = Member.create(
    user_id: user3.id,
    project_id: project4.id,
    username: user3.username
)


puts "✅ Done seeding!"
