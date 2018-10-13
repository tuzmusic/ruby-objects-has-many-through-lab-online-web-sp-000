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

  def new_appointment(patient, date)
    appointment.new(date, patient, self)
  end

  def appointments
    appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    self.appointments.map {|appointment| appointment.patient}.uniq
  end
end
