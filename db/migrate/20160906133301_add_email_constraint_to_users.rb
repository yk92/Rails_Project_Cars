class AddEmailConstraintToUsers < ActiveRecord::Migration
  def up
    execute %{
      ALTER TABLE
	users
      ADD CONSTRAINT
	email_must_be_test_email
      CHECK ( email ~* '^[^@]+@test\\.com' )
    }
  end
  def down
    execute %{
      ALTER TABLE
	users
      DROP CONSTRAINT
	email_must_be_test_email
    }
  end
end
