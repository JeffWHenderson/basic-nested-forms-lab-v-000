class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
end

#
# {
#   "utf8"=>"✓",
#        "authenticity_token"=>"ctbg/E9TvCLG9G93s9v7Nm3dUFDKHigSWSEnL6h2Hikea9JbGJEBpmxxA9DINyd9PljQtSru3g8zxZjXHJG3NA==",
#        "recipe"=> { "title"=>"cake",
#                     "ingredients_attributes"=> {
#                                                   "0"=>  {"name"=>"chocolate", "quantity"=>"2 cups"},
#                                                   "1"=> {"name"=>"vanilla", "quantity"=>"1 cup"}
#                                                 }
#             },
#
#  "commit"=>"Create Recipe"
# }
