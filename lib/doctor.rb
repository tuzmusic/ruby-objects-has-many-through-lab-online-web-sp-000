class Doctor

  attr_accessor :name
  @@all = []
  @@appointments = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment.new(name, self, doctor)
  end

  def appointments
    appointment.all.select {|appointment| appointment.artist == self}
  end

  def doctors
    self.appointments.map {|appointment| appointment.doctor}.uniq
  end
end
