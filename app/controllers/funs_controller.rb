class FunsController < ApplicationController

    def index
        @funs = Fun.all
    end

    def show
        @fun = Fun.find(params[:id])
    end

    def new
        @fun = Fun.new
    end

    def edit
        @fun = Fun.find(params[:id])
    end

    def create
        @fun = Fun.new(fun_params)

        if @fun.save
            redirect_to funs_path
        else 
            render :new
        end
    end

    def update
        @fun = Fun.find(params[:id])
        if @fun.update(fun_params)
            redirect_to funs_path
        else
            render :edit
        end
    end

    def destroy
        @fun = Fun.find(params[:id])
        @fun.destroy
        redirect_to funs_path
    end

    private
     
    def fun_params
        params.require(:fun).permit(:name, :content, :author)
    end
end