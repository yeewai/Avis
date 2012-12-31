class InsertStatusMadeTimeCheckThing < ActiveRecord::Migration
  def up
    Status.create(:past => 'STATUSCHKTHANG', :future => 'STATUSCHKTHANG')
  end

  def down
  end
end
