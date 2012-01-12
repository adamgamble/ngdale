class Sermon < ActiveRecord::Base
  has_attached_file :sermon,
    :storage => :s3,
    :bucket => "ngdale-#{Rails.env}",
    :s3_credentials => {
    :access_key_id => ENV['S3_KEY'],
    :secret_access_key => ENV['S3_SECRET']
  }
end
