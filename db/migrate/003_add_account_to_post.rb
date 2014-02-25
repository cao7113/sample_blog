class AddAccountToPost < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.references :account
    end
    first_account = Account.first
    Post.all.each do |p|
      p.update_attribute(:account, first_account)
    end
  end

  def self.down
    change_table :posts do |t|
      t.remove :account
    end
  end
end
