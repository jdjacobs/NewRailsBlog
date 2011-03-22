# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

role = Role.create!(:name => "Administrator")

user = User.create!(
  :email => 'joshua.jacobs@ccisystems.com',
  :password => 'development',
  :password_confirmation => 'development'
)

article_one = Article.create!(
  :title => 'Dreariness in Dismissal',
  :body => <<-BODY
    *This is a little unpleasant if you're very sensitive about animals.

    Working in the Miller Ponds in Indiana, the easiest way to get from one area to another was by walking on the railroad tracks. I had already been scolded once for walking along the tracks while trains were visible.

    As I walked one day, I noticed a gray lump on the tracks. A possum had died there. I didn't think much of it. Possums aren't pandas. But I saw something moving under the rail.

    And a single tiny young possum peaked it's head out from underneath.

    I snapped a few pictures while I was checking it out. The gray lump was a mother possum. While leading her young across, a train had come down the tracks. She tucked them beneath her and climbed up enough of the rail to cover them. The train cut her head off in the middle. Normally, I have no problem with the more revolting bits of the animal kingdom, but this was some pretty intense gore.

    I realized, slow as a I am, that a train would come soon and the young possum wasn't safe. I saw the small possum make silent crying motions at it's mother's body. I set the camera on the ground and when I turned her over, I saw two more infants, even smaller, still clutching beneath her. It wasn't hard to get the corpse and young off the tracks. I'm glad I'm not more squeemish.

    And then, I saw the fourth one, still under the rail. Too terrified to move. Hyperventilating. Virbrating. Shaking like Michael J. Fox with heroin withdrawal.

    I was going through a bit of a rough patch in my life and I think it made me feel like I should do something. But she just wouldn't come out from that rail. I was trying to grab her when I saw the Amtrack in the distance.

    You can tell an Amtrack easily from a freight train. The silver, rounded passenger cars instead of square brown and yellow box cars. I just couldn't get a grip on that possum. I got pretty upset and started shouting that I wasn't going to watch a baby possum get splattered by a train (maybe some transference of my own issues there). The train was getting close. It started blasting the horns. I finally got a grip on the possum's tail and pulled it out and looked up at a locomotive less than twenty feet from me and leapt from the tracks as it went screaming and blaring past.

    My partner immediately called me on the two-way radio to see what was going on. From far inside the swamp she had heard the horns. I left the possums in the woods clinging to the mother's belly. I'm sure it wasn't long before they were eaten by a fox, but it just didn't seem right to leave them for the train like that.
  BODY
)

article_two = Article.create(
  :title => 'Dolor in Scattering',
  :body => <<-BODY
    Iron Mountain Daily News printed a front page article with photograph of the technology consultants that worked so busily to put in a new space-age computer lab. Although, the full-time staff had most of that time off and I set up the computers so I just needed a Sharpie to fix it.
  BODY
)
