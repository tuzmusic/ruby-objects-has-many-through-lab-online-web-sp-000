class Patient

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

  def new_appointment(date, doctor)
    appointment.new(date, self, doctor)
  end

  def appointments
    appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    self.appointments.map {|appointment| appointment.doctor}.uniq
  end
end
