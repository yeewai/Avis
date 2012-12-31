class ChangeStatusLateNoticetoDatetime < ActiveRecord::Migration
  def up
    change_column :statuses, :start_late_notice, :datetime
  end

  def down
  end
end
