class Year < ActiveHash::Base
  self.data = [
    { id: 1, name: '' },
    { id: 2, name: '2020' },
    { id: 3, name: '2021' },
    { id: 4, name: '2022' },
    { id: 5, name: '2023' },
    { id: 6, name: '2024' },
    { id: 7, name: '2025' },
    { id: 8, name: '2026' },
    { id: 9, name: '2027' },
    { id: 10, name: '2028' },
    { id: 11, name: '2029' },
    { id: 12, name: '2030' },
    { id: 13, name: '2031' },
    { id: 14, name: '2032' },
    { id: 15, name: '2033' },
    { id: 16, name: '2034' },
    { id: 17, name: '2035' },
    { id: 18, name: '2036' },
    { id: 19, name: '2037' },
    { id: 20, name: '2038' },
    { id: 21, name: '2039' },
    { id: 22, name: '2040' },
    { id: 23, name: '2041' },
    { id: 24, name: '2042' },
    { id: 25, name: '2043' },
    { id: 26, name: '2044' },
    { id: 27, name: '2045' },
    { id: 28, name: '2046' },
    { id: 29, name: '2047' },
    { id: 30, name: '2048' },
    { id: 31, name: '2049' },
    { id: 32, name: '2050' }
  ]

  include ActiveHash::Associations
  has_many :area
end
