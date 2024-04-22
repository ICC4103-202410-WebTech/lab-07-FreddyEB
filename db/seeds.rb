# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all
Tag.delete_all

User.create(
    name: 'JohnDoe',
    email: 'john.doe@example.com',
    password:'P@ssw0rd123')
User.create(
    name: 'EmilySmith',
    email: 'emily.smith@example.com',
    password:'SecurePass456')
User.create(
    name: 'DavidBrown',
    email: 'david.brown@example.com',
    password:'Brownie789!')
User.create(
    name: 'SarahJohnson',
    email: 'sarah.johnson@example.com',
    password:'SarahPass789')
User.create(
    name: 'MichaelTaylor',
    email: 'michael.taylor@example.com',
    password:'TaylorPass123!')
    
tag1 = Tag.create(
    name: 'The best tag'
)
tag2 = Tag.create(
    name: 'The 2nd best tag'
)
tag3 = Tag.create(
    name: 'The 3rd best tag'
)
tag4 = Tag.create(
    name: 'The 4th best tag'
)
tag5 = Tag.create(
    name: 'The 5th best tag'
)
    
post1 = Post.create(
    title: 'Title 1',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquam neque ut massa tristique, nec fermentum dolor volutpat.',
    user_id: 5,
    published_at: '2017-03-11 09:00:00',
    answers_count: 190,
    likes_count: 55,
)
post1.tags << tag2
post2 = Post.create(
    title: 'Title 2',
    content: "Why so serious?",
    user_id: 2,
    published_at: '2018-04-12 10:00:00',
    answers_count: 111,
    likes_count: 300, 
)
post3 = Post.create(
    title: 'Title 3',
    content: "Luke, I am your father",
    user_id: 3,
    published_at: '2019-05-13 11:00:00',
    answers_count: 66,
    likes_count: 501,
)
post4 = Post.create(
    title: 'Title 4',
    content: "Well, Superman, here we are, the two last men on Earth. One of us must die.",
    user_id: 4,
    published_at: '2020-06-14 12:00:00',
    answers_count: 190,
    likes_count: 100,
)
post5 = Post.create(
    title: 'Title 5',
    content: "Even the most monstrous of beings deserves a little compassion",
    user_id: 3,
    published_at: '2021-07-15 13:00:00',
    answers_count: 20,
    likes_count: 30,
)
post6 = Post.create(
    title: 'Title 6',
    content: "Everybody's a nobody, till somebody loves you",
    user_id: 1,
    published_at: '2022-08-16 14:00:00',
    answers_count: 90,
    likes_count: 200,
)
post7 = Post.create(
    title: 'Title 7',
    content: "I ask for so little. Just fear me, love me, do as I say and I will be your slave",
    user_id: 1,
    published_at: '2023-09-17 15:00:00',
    answers_count: 46,
    likes_count: 125,
)
post8 = Post.create(
    title: 'Title 8',
    content: "Silence, you fools!",
    user_id: 2,
    published_at: '2024-01-18 16:00:00',
    answers_count: 40,
    likes_count: 100,
)
post9 = Post.create(
    title: 'Title 9',
    content: "Revenge is a dish best served cold",
    user_id: 3,
    published_at: '2024-03-19 17:00:00',
    answers_count: 20,
    likes_count: 70,
)
post10 = Post.create(
    title: 'Title 10',
    content: "I am inevitable",
    user_id: 5,
    published_at: '2023-12-20 18:00:00',
    answers_count: 33,
    likes_count: 50,
)

child_post1 = post10.child_posts.create(title: 'Title 9',
content: "Revenge is a dish best served cold",
user_id: 3,
published_at: '2024-03-19 17:00:00',
answers_count: 20,
likes_count: 70,)
