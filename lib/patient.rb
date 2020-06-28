require 'pry'
class Patient
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
            ap_inst.patient == self
        end
    end
    def new_appointment(doctor,date)
        # :date, :patient, :doctor
        Appointment.new(date,self,doctor)
    end

    def doctors
        Appointment.all.map do |ap_inst|
            ap_inst.doctor
        end
    end

end