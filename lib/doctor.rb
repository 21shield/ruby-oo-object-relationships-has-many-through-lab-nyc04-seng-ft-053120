require 'pry'
class Doctor
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def appointments
        Appointment.all.select do |ap_inst|
            ap_inst.doctor == self
        end
    end

    def new_appointment(patient, date)
       
        Appointment.new(date, patient, self)
     
    end
    def patients
      self.appointments.map do |ap|
          ap.patient
      end
    end

end