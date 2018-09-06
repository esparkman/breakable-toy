class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :text

  set_key_transform :camel
end
