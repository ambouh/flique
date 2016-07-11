class MyDevise::RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    @channel = Channel.new
    @channel.user = current_user
    @channel.image_url = "http://cdn1-www.dogtime.com/assets/uploads/gallery/30-impossibly-cute-puppies/impossibly-cute-puppy-2.jpg"
    @channel.description = "This is a channel!"
    @channel.save
  end
end
