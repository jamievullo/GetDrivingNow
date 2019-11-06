body {
    background: linear-gradient(to left,#7b4397,#dc2430);
  }

  h1 {
    font-family: Arial, Helvetica, sans-serif;
  }

  .side-runner {
    color: white;
  }

 .thumbnail {   
    background-color: rgb(211, 207, 207);
    margin-left: auto;
    margin-right: auto;
    /*box-shadow: 2px 2px 6px #313135;*/
    border-radius: 3px;
    margin-bottom: 15px;
    width: 50%;
}

input {
  font-family: Arial, Helvetica, sans-serif;
  font-size: 15px;
  display: inline-block;
  width: 97%;
  height: 2em;
  margin-right: 2px;
  margin-left: 4px;
  margin-top: 2px;
  margin-bottom: 5px;
  border-radius: 3px;
  border-color: darkblue;
}

label {
  font-family: Arial, Helvetica, sans-serif;
  color: #dc2430;
  margin-left: 10px;
  height: 3em;
}

select {
  font-family: Arial, Helvetica, sans-serif;
  height: 2.5em;
  font-size: 13px;
  margin-top: 2px;
  margin-bottom: 2px;
}

.form-label-group-left {
  width: 49%;
  float: left;
  
}

.form-label-group-right {
  width: 49%;
  float: left;
  
}

<div class="side-runner">
<h2>(checkmark)Approval within 24 hours</h2>
</div>
<div class="thumbnail">
    <div class="main-app-class">
        <div class="title">
        <h1>Applicant Registration Form</h1>
        </div>
        <%= form_for(@driver) do |f| %>

        <div class="form-label-group-left">
            <%= f.text_field :first_name, placeholder: "First Name" %>
        </div>

        <div class="form-label-group-right">
            <%= f.text_field :last_name, placeholder: "Last Name" %>
        </div>

        <div class="form-label-group">
            <%= f.text_field :address, placeholder: "Street Address" %>
        </div>

        <div class="form-label-group-right">
            <%= f.text_field :apt, placeholder: "Apt. #" %>
        </div>

        <div class="form-label-group-left">
            <%= f.text_field :city, placeholder: "City" %>
        </div>

        <div class="form-label-group-right">
            <%= f.label :state, "State:" %>
            <%= f.select :state, [["select state"], ["AK"], ["AL"], ["AR"], ["AZ"], ["CA"], ["CO"], 
                ["CT"], ["DC"], ["DE"], ["FL"], ["GA"], ["HI"], ["IA"], ["ID"], ["IL"], 
                ["IN"], ["KS"], ["KY"], ["LA"], ["MA"], ["MD"], ["ME"], ["MI"], ["MN"], 
                ["MO"], ["MS"], ["MT"], ["NC"], ["ND"], ["NE"], ["NH"], ["NJ"], ["NM"], 
                ["NV"], ["NY"], ["OH"], ["OK"], ["OR"], ["PA"], ["RI"], ["SC"], ["SD"], 
                ["TN"], ["TX"], ["UT"], ["VA"], ["VT"], ["WA"], ["WI"], ["WV"], ["WY"]] %>
        </div>

        <div class="form-label-group-left">
            <%= f.text_field :zip, placeholder: "Zip Code" %>
        </div>

        <div class="form-label-group-right">
            <%= f.label :residence_type, "Residence Type:" %>
            <%= f.select :residence_type, [["select type"], ['Lives w/ Relatives'], ['Own Home Outright'], ['Rent'], ['Mortgage']] %>
        </div>

        <div class="form-label-group-left">
            <%= f.label :monthly_housing_cost, "Monthly Housing Cost: $" %>
            <%= f.select :monthly_housing_cost, [["-"], ["300"], ["350"], ["400"], ["450"], ["500"], ["550"],
                                ["600"], ["650"], ["700"], ["750"], ["800"], ["850"], ["900"], ["950"],
                                ["1000"], ["1100"], ["1200"], ["1300"], ["1400"], ["1500"], ["1600"],
                                ["1700"], ["1800"], ["1900"], ["2000"]] %>
        </div>

        <div class="form-label-group-right">
            <%= f.label :address_duration_years, "Time at address? "%>
            <%= f.select :address_duration_years, [["years"], ["1"], ["2"], ["3"], ["4"], ["5"], ["6"], ["7"], ["8"], ["9"], ["10"], ["11"], ["12"], ["13"], ["14"],
                                ["15"], ["16"], ["17"], ["18"], ["19"], ["20"]] %><%= f.select :address_duration_months, [["months"], ["1"], ["2"], ["3"], ["4"], ["5"], ["6"], ["7"], ["8"], ["9"], ["10"], ["11"]] %>
        </div>

        <div class="form-label-group-left">
            <%= f.text_field :phone, placeholder: "Phone Number (no-dashes)" %>
        </div>

        <div class="form-label-group-right">
            <%= f.email_field :email, placeholder: "Email Address" %>
        </div>

        <div class="form-label-group-left">
            <%= f.text_field :dob, placeholder: "Date of Birth / mmddyyyy" %>
        </div>

        <div class="form-label-group-right">
            <%= f.text_field :ssn, placeholder: "Soc. Security Number (no-dashes)" %>
        </div>

        <div class="form-label-group-left">
            <%= f.label :bankruptcy, "Bankruptcy last 5 years?:" %>(check box if yes)
            <%= f.check_box :bankruptcy %> 
        </div>

        <div class="form-label-group-right">
            <%= f.label :employment_type, "Employment Type:" %>
            <%= f.select :employment_type, [["select type"], ['Employed Full-Time'], ['Employed Part-Time'], ['Self-Employed'], ['Social Security'], ['Fixed-Income'], ['Unemployed'], ['Student']] %>
        </div>

        <div class="form-label-group-left">
            <%= f.text_field :employer_name, placeholder: "Employer Name" %>
        </div>

        <div class="form-label-group-right">
            <%= f.text_field :job_title, placeholder: "Job Title" %>
        </div>

        <div class="form-label-group-left">
            <%= f.text_field :employer_phone_number, placeholder: "Employer Phone Number (no-dashes)" %>
        </div>

        <div class="form-label-group-right">
            <%= f.label :job_duration, "Time on Job:"%>
            <%= f.select :job_duration_years, [["years"], ["1"], ["2"], ["3"], ["4"], ["5"], ["6"], ["7"], ["8"], ["9"], ["10"], ["11"], ["12"], ["13"], ["14"],
                                ["15"], ["16"], ["17"], ["18"], ["19"], ["20"]] %><%= f.select :job_duration_months, [["months"], ["1"], ["2"], 
                                ["3"], ["4"], ["5"], ["6"], ["7"], ["8"], ["9"], ["10"], ["11"]] %>
        </div>

        <div class="form-label-group-left">
            <%= f.label :monthly_income, "Gross Monthly Income: $" %>
            <%= f.select :monthly_income, [["-"], ["400"], ["450"], ["500"], ["550"],
                                ["600"], ["650"], ["700"], ["750"], ["800"], ["850"], ["900"], ["950"],
                                ["1000"], ["1100"], ["1200"], ["1300"], ["1400"], ["1500"], ["1600"],
                                ["1700"], ["1800"], ["1900"], ["2000"], ["2100"], ["2200"], ["2300"], ["2400"],
                                ["2500"], ["2600"], ["2700"], ["2800"], ["2900"], ["3000"], ["3100"], ["3200"],
                                ["3300"], ["3400"], ["3500"], ["3600"], ["3700"], ["3800"], ["3900"],
                                ["4000"], ["4100"], ["4200"], ["4300"], ["4400"], ["4500"], ["4600"],
                                ["4700"], ["4800"], ["4900"], ["5000"], ["5100"], ["5200"], ["5300"],
                                ["5400"], ["5500"], ["5600"], ["5700"], ["5800"], ["5900"], ["6000"]] %>
        </div>

        <div class="form-label-group">
            <%= f.submit "Submit Your Application" %>
        </div>

        <% end %>
    </div>
</div>


        [row1-start] "1 2" 1fr [row1-end]
        [row2-start] "3 4" 1fr [row2-end]
        [row3-start] "5 6 7" 1fr [row3-end]
        [row4-start] "8 9 10" 1fr [row4-end]
        [row5-start] "11 12" 1fr [row5-end]
        [row6-start] "13 14" 1fr [row6-end]
        [row7-start] "15 16" 1fr [row7-end]
        [row8-start] "17 18 19" 1fr [row8-end]
        [row9-start] "20 21" 1fr [row9-end]
        [row10-start] "submit" 1fr [row10-end];   