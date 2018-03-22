class Perfume < ApplicationRecord
  enum public_target: [:hombre, :mujer, :niño, :niña]
  enum category: [:toilette, :parfum]
  enum classification: [:original, :fraiche]
  enum visibility: [:visible, :invisible]

  validates :name, presence: true, length: { maximum: 50 }, format: { with: /\A[áéíóúñA-Za-z .\#0-9]+\z/ }
  validates :buy_price, format: { with: /\d+(([.,])\d+)?\z/ }, length: { maximum: 6 }
  validates :retail_price, format: { with: /\A[+]?[0-9]*\.?[0-9]+\z/ }, length: { maximum: 6 }
  validates :stock, format: { with: /\A[+]?[0-9]+\z/ }, length: { maximum: 4 }
  validates :presentation, format: { with: /\A\d+\z/ }, length: { maximum: 3 }
end
