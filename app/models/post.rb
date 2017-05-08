class Post < ApplicationRecord
    mount_uploader :header, HeaderUploader
end
