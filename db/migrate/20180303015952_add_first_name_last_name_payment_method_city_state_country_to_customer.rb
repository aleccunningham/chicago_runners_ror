class AddFirstNameLastNamePaymentMethodCityStateCountryToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
    add_column :customers, :payment_method, :string
    add_column :customers, :city, :string
    add_column :customers, :state, :string
    add_column :customers, :country, :string
  end
end
