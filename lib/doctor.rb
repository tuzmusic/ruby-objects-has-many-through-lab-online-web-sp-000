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

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    self.appointments.map {|appointment| appointment.patient}.uniq
  end
end
