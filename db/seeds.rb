# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
bob = User.create(name: 'bob', email: 'bob@gmail.com', password: "password")
baz = User.create(name: 'baz', email: 'baz@gmail.com', password: "password")

a = Post.create(title: 'Yo Bro!', image_url: 'http://www.thehighdefinite.com/wp-content/uploads/2012/11/lakersbro.gif')
b = Post.create(title: 'Get out the way Bro!', image_url: 'http://24.media.tumblr.com/9ddf7c1fa6f7995670cdb830c6fa55af/tumblr_mjf2jztrb81rptdkso1_400.gif')
c = Post.create(title: 'Next time Bro!', image_url: 'http://www.totalprosports.com/wp-content/uploads/2012/11/5-trampoline-dunk-fail-basketball-fail-gifs.gif')
d = Post.create(title: 'Bro gtfo', image_url: 'http://24.media.tumblr.com/tumblr_lrwanhMiDF1qj93o4o1_400.gif')
e = Post.create(title: 'Victory Bro', image_url: 'http://i286.photobucket.com/albums/ll111/AKSig/victory.gif')
f = Post.create(title: 'Bro, where my donuts?', image_url: 'http://i.minus.com/iP1FgeyOMl76k.gif')
g = Post.create(title: 'brrrrrooooooooooo', image_url: 'http://25.media.tumblr.com/tumblr_lj22orBoPn1qakh43o1_500.gif')
h = Post.create(title: 'Taters Bro', image_url: 'http://i864.photobucket.com/albums/ab204/Tiki5872/animated%20gifs/funny-taters-gonna-tate-dancing-potato-animated-gif.gif')

bobs_posts = [a,b,c,d]
bazs_posts = [e,f,g,h]

bobs_posts.each {|post| bob.posts << post}

bazs_posts.each {|post| baz.posts << post}
