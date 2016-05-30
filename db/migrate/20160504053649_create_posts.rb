class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      	t.string  :type1_post_p
      	t.string  :type2_post_p
      	t.string  :name_post_p
      	t.string  :location_post_p
      	t.string  :age_post_p
        t.string  :time1_post_p
        t.string  :time2_post_p
        t.string  :time3_post_p
        t.string  :care_post_p


        t.string  :type1_post_n
        t.string  :type2_post_n
        t.string  :name_post_n
        t.string  :pic_post_n
        t.string  :age_post_n
        t.string  :location_post_n
        t.string  :time1_post_n
        t.string  :time2_post_n
        t.string  :time3_post_n
        t.string  :intro_post_n
        t.string  :image_url,  default: ""
        t.integer :user_id

      t.timestamps null: false
    end
  end
end
