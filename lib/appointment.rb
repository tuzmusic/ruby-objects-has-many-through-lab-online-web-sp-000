
require "pry"
class Appointment

  attr_accessor :patient, :doctor, :date
  @@all = []

  def self.all
    @@all
  end

  def initialize( patient, doctor, fate)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
    binding.pry
  end
end
