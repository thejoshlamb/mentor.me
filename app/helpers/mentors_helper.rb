module MentorsHelper
	# Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(mentor)
    gravatar_id = Digest::MD5::hexdigest(mentor.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=200"
    image_tag(gravatar_url, alt: mentor.name, class: "gravatar")
  end
end
