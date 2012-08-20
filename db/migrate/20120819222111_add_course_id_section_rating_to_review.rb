class AddCourseIdSectionRatingToReview < ActiveRecord::Migration
  def change
  	add_column :sections, :course_id, :integer
  	add_column :reviews, :rating, :integer
  	remove_column :courses, :rating
  end
end
