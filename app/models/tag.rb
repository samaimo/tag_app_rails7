class Tag < ApplicationRecord
  # アソシエーション
  has_many :post_tag_relations
  has_many :posts, through: :post_tag_relations
  # バリデーションの記述   #一意性の制約はモデル単位で設ける必要があるので、FormオブジェクトのPostFormクラスではなく、Tagモデルに記述する。
  validates :tag_name,  uniqueness: true
end
