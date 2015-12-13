require "rails_helper"

feature "Create student" do
	scenario "successfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "ameriika_angiie@hotmail.com"
			fill_in "Password", with: "angie10"
			fill_in "Password confirmation", with: "angie10"

		click_on "Sign up"	
		click_on "Crear nuevo estudiante"
		
			fill_in "Nombre(s)", with: "Angelica"
			fill_in "Apellidos", with: "Tlaixco Tlatempa"
			fill_in "Número de control", with: "10460316"
			fill_in "Semestre", with: "11"
		click_on "Guardar"
		sleep 5
				expect(current_path).to eq "/"
			expect(page).to have_content "Student was successfully created."
		
	end


		scenario "unsuccessfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "ameriika_angiie@hotmail.com"
			fill_in "Password", with: "angie10"
			fill_in "Password confirmation", with: "angie10"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
		click_on "Guardar"
		sleep 5
			expect(current_path).to eq "/students"
			expect(page).to have_content "First name can't be blank"
    		expect(page).to have_content "Last name can't be blank"
    		expect(page).to have_content "Control number can't be blank"
    		expect(page).to have_content "Semester can't be blank"
		
	end

	scenario "First name" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "ameriika_angiie@hotmail.com"
			fill_in "Password", with: "angie10"
			fill_in "Password confirmation", with: "angie10"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
			
			fill_in "Nombre(s)", with: "Lizek"
			fill_in "Apellidos", with: "Mejía"
			fill_in "Número de control", with: "11460282"
			fill_in "Semestre", with: "ER"
		
			click_on "Guardar"

			expect(current_path).to eq "/students/new"    		
		sleep 5
	end
end