class Client < ApplicationRecord
  validates :phone_number, format: { with: /\A\d+\z/, message: " solo se admiten numeros" }, length: { is: 13 }
  validates :name, presence: true, length: { maximum: 50 }, format: { with: /\A[áéíóúñA-Za-z .]+[^0-9]\z/ }
  validates :address, presence: true, length: { maximum: 50 }, format: { with: /\A[áéíóúñA-Za-z .]+[^0-9]\z/ }
end
