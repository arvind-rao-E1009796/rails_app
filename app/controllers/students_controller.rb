class StudentsController < ApplicationController
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
            # This line overrides the default rendering behavior, which
            # would have been to render the "create" view.
            render :action => "new"
          end
    end

    def show
        @student = Student.find(params[:id]);
        
    end

end