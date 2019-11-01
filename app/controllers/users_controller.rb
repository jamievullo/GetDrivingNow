class UsersController < ApplicationController

    def new
        @user = User.new 
    end

    def show 
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        if @user.save!
            flash[:notice] = "Congrats #{@user.first_name}, you will be contacted within the next 24 hours!"
            redirect_to user_path(@user)
        else
            @user.errors.full_messages
            redirect_to 'new'
        end
    end

    def edit

    end

    def update 
    end

    private 

    def user_params 
        params.require(:user).permit(:first_name, :last_name, :address, :apt, :city, :state, :zip, :residence_type, :monthly_housing_cost, :address_duration, :phone, :email, :dob, :ssn, :bankruptcy, :employment_type, :employer_name, :employer_phone_number, :job_title, :job_duration, :monthly_income)
    end

end
