user = User.create!(email: "yoda@jedi.com", password: "password")

photo_url = "https://images.unsplash.com/photo-1441239372925-ac0b51c4c250?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"

post = Post.new(caption: "You're welcome for not using TLC lyrics to caption this photo.", user: user)
post.remote_photo_url = photo_url
post.save!
