require 'rails_helper'

describe Student do
	describe "#full_name" do
		it "returns complete name" do
			student=Student.create!( 
				first_name: "Angie",
				last_name: "Tlaixco",
				birthdate: "20/04/1992",
		    	control_number:"10460316",
		    	semester: "11" )

		    expect(student.name).to eq "Angie Tlaixco"
		end
	end

	describe "validations" do
	    it "fails to save" do
	    	post = Student.new
	      	post.save
	      	expect(post).to_not be_persisted
	    end

	    it "validates presence of first_name" do
	      	post = Student.new(last_name: "Tlaixco", birthdate: "20/04/1992", control_number:"10460316", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["First name can't be blank"])
	    end

	    it "validates presence of last_name" do
	      	post = Student.new(first_name: "Angie", birthdate: "20/04/1992", control_number:"10460316", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Last name can't be blank"])
	    end

	    it "validates presence of birthdate" do
	      	post = Student.new(first_name: "Angie", last_name: "Tlaixco", control_number:"10460316", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Birthdate can't be blank"])
	    end
	   
	    it "validates presence of control_number" do
	      	post = Student.new(first_name: "Angie", last_name: "Tlaixco", birthdate: "20/04/1992", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Control number can't be blank"])
	    end

	    it "validates presence of semester" do
	      	post = Student.new(first_name: "Angie", last_name: "Tlaixco", birthdate: "20/04/1992", control_number:"10460316")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Semester can't be blank"])
	    end
	   
  	end
16

  		it "returns complete name" do
			student=Student.create!( 
				first_name: "Lizek",
				last_name: "Mejía",
				birthdate: "13/06/1992",
		    	control_number:"11460282",
		    	semester: "09" )

		    expect(student.name).to eq "Lizek Mejía"
		end

			describe "validations" do
	    it "fails to save" do
	    	post = Student.new
	      	post.save
	      	expect(post).to_not be_persisted
	    end

	    it "validates presence of first_name" do
	      	post = Student.new(last_name: "Mejía", birthdate: "13/06/1992", control_number:"11460282", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["First name can't be blank"])
	    end

	    it "validates presence of last_name" do
	      	post = Student.new(first_name: "Lizek", birthdate: "13/06/1992", control_number:"11460282", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Last name can't be blank"])
	    end

	    it "validates presence of birthdate" do
	      	post = Student.new(first_name: "Lizek", last_name: "Mejía", control_number:"11460282", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Birthdate can't be blank"])
	    end
	   
	    it "validates presence of control_number" do
	      	post = Student.new(first_name: "Lizek", last_name: "Mejía", birthdate: "13/06/1992", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Control number can't be blank"])
	    end

	    it "validates presence of semester" do
	      	post = Student.new(first_name: "Lizek", last_name: "Mejía", birthdate: "13/06/1992", control_number:"11460282")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Semester can't be blank"])
	    end
	   
  	end

end

