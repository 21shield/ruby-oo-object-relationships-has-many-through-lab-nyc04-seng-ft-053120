require 'pry'
class Appointment
    @@all = []
    attr_reader :date, :patient, :doctor
    def initialize(date, patient, doctor)
       @date = date
       @patient = patient
       @doctor = doctor
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

end