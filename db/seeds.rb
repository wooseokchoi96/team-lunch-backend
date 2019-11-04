# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.all[0]
u2 = User.all[1]
u3 = User.all[2]

c1 = Conversation.create(title: 'Convo 1')
c2 = Conversation.create(title: 'Convo 2')

m1 = Message.create(user: u1, conversation: c1, text: 'Hi')
m2 = Message.create(user: u1, conversation: c1, text: 'Hi again')
m3 = Message.create(user: u2, conversation: c1, text: 'My username is newAndy')
m4 = Message.create(user: u3, conversation: c1, text: 'EEEEEE')
m5 = Message.create(user: u1, conversation: c2, text: 'Am I alone in this chat?')

