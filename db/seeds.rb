puts "🌱 Seeding spices..."

# Seed your database here

    Category.create(name: "urgent")
    Category.create(name: "important")
    Category.create(name: "upcoming")
    Category.create(name: "weekly")

    Task.create(task: "finish task app", category_id: 1)
    Task.create(task: "write blog", category_id: 2)
    Task.create(task: "create video walkthorugh", category_id: 3)
    Task.create(task: "schedule interview", category_id: 3)
    Task.create(task: "LinkedIn activity", category_id: 4)


puts "✅ Done seeding!"
