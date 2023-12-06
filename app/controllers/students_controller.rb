class StudentsController < ApplicationController

    before_action :set_student, only: [:show, :edit, :update, :destroy]

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
            redirect_to students_path
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
            redirect_to student_path(@student)
          else
            render :action => "edit"
          end
    end

    def destroy
        @student.destroy
        redirect_to students_path 
    end

    private

    def set_student
        @student = Student.find(params[:id]);

end