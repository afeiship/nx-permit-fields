# nx-permit-fields
> Permit fields for rails.

## installation
```rb
# from gem
gem 'nx-permit-fields'
# from git
gem 'nx-permit-fields', git: 'git@github.com:afeiship/nx-permit-fields.git'
```

## usage
```rb
# before: --------------------------------

# [
#     :title, 
#     :summary, 
#     :image, 
#     :douban_rate, 
#     :author, 
#     :translator, 
#     :publishing_house, 
#     :publishing_at, 
#     :ext, 
#     :catalogue, 
#     :douban_url, 
#     :image_marked, 
#     :isbn
# ]

Nx::PermitFields::exclude(:post, fields:[:ext, :image_marked])
# after:
[
#     :title, 
#     :summary, 
#     :image, 
#     :douban_rate, 
#     :author, 
#     :translator, 
#     :publishing_house, 
#     :publishing_at, 
#     :catalogue, 
#     :douban_url, 
#     :isbn
# ]
```

## build/publish
```shell
# build
gem build nx-permit-fields.gemspec

# publish
gem push nx-permit-fields-0.1.0.gem
```
