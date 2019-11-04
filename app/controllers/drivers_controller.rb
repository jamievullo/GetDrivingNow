class DriversController < ApplicationController

    def new
        @driver = Driver.new 
    end

    def show 
        @driver = Driver.find(params[:id])
    end

    def create
        @driver = Driver.new(driver_params)
        if @driver.save!
            flash[:notice] = "Congrats #{@driver.first_name}, you will be contacted within the next 24 hours!"
            redirect_to driver_path(@driver)
        else
            @driver.errors.full_messages
            redirect_to 'new'
        end
    end

    def edit

    end

    def update 
    end

    private 

    def driver_params 
        params.require(:drivers).permit(:first_name, :last_name, :address, :apt, :city, :state, :zip, :residence_type, :monthly_housing_cost, :address_duration, :phone, :email, :dob, :ssn, :bankruptcy, :employment_type, :employer_name, :employer_phone_number, :job_title, :job_duration, :monthly_income)
    end

end
