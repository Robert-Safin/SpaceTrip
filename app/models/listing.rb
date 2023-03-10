class Listing < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :user
  has_one_attached :photo

  ALLOWED_LOCATIONS = [
    "Baikonur Cosmodrome,Kazakhstan (Soviet and Russian flights)",
    "Cape Canaveral Space Force Station,Florida, United States",
    "Jiuquan Satellite Launch Center,China",
    "Corn Ranch,Texas, United States",
    "Russia Kapustin Yar Cosmodrome, Astrakhan Oblast, Russia",
    "San Marco platform, Broglio Space Centre, Malindi, Kenya",
    "Hammaguir French Special Weapons Test Centre, Algeria",
    "Plesetsk Cosmodrome, Arkhangelsk Oblast, Russia",
    "Uchinoura Space Center (Kagoshima), Japan",
    "Jiuquan Satellite Launch Center, China",
    "Satish Dhawan Space Centre (SHAR), Andhra Pradesh, India",
    "Naro Space Center, South Jeolla, South Korea",
    "Rocket Lab Launch Complex 1, New Zealand",
    "Wenchang Satellite Launch Center, China ",
    "Woomera Prohibited Area, South Australia"
  ]

  FEATURES = ["Wifi", 'Gym', 'Entertainment', 'Spa', 'Quantum Hyperspace Drive', 'Zero-Gravity Spa', 'Artificial Intelligence Butler', 'Holographic Entertainment Suite', 'Space Garden', 'Personalized Atmosphere Control', 'Anti-Gravity Gym', 'Quantum-Entangled Teleportation', 'Infrared Sauna', 'Gravity Defying Infinity Pool', 'Bananas']

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 30 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :short_description, presence: true, length: { maximum: 50 }
  validates :launch_site, presence: true, inclusion: { in: ALLOWED_LOCATIONS }
  validates :capacity, presence: true

  geocoded_by :launch_site
  after_validation :geocode, if: :will_save_change_to_launch_site?

end
