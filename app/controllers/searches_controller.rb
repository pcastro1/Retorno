class SearchesController < ApplicationController


        def new
          @search = Search.new
        end

        def create
            @search = Search.create(search_params)
            redirect_to @search

        end
      
        # PATCH/PUT /schools/1
        # PATCH/PUT /schools/1.json
        def show

            @search = Search.find(params[:id])

        end
      
        private
      
          def search_params
            params.require(:search).permit(:nombre, :region, :comuna, :rbd, :estado)
          end





end
