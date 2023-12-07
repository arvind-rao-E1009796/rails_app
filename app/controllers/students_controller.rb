class StudentsController < ApplicationController
    before_filter :authenticate_user!

    before_filter :set_student, only: [:show, :edit, :update, :destroy]

    def index
        @students = Student.all;
    end


    def new
        @student = Student.new;
    end

    def create
        @student = Student.new(
            first_name: params[:student][:first_name],
            last_name: params[:student][:last_name],
            email: params[:student][:email]
        );
        if @student.save
            redirect_to students_path, notice: 'Student has been created successfully.'
          else
            render :action => "new"
          end
    end

    def show
    end

    def edit 
    end

    def update
        if @student.update_attributes(            
                first_name: params[:student][:first_name],
                last_name: params[:student][:last_name],
                email: params[:student][:email]
            )
            redirect_to student_path(@student), notice: 'Student has been updated successfully.'
          else
            render :action => "edit"
          end
    end

    def destroy
        @student.destroy
        redirect_to students_path, notice: 'Student has been deleted successfully.'
    end

    private

    def set_student
        @student = Student.find(params[:id]);
    end

end