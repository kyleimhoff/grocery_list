class ListController < ApplicationController
    #create
    get '/lists/new' do 
        erb :'/lists/new'
    end
    post '/lists' do 
        @list = List.create(
             title: params[:title],
             list1: params[:list1],
             list2: params[:list2],
             list3: params[:list3],
             list4: params[:list4],
             list5: params[:list5],
             list6: params[:list6],
             list7: params[:list7],
             list8: params[:list8],
             list9: params[:list9],
             list10: params[:list10],
            )
            
        
        redirect "/lists/#{@list.id}"
    end
    #read
    get '/lists/:id' do 
        @list = List.find(params[:id])
        erb :'/lists/show'
    end
    get '/lists' do 
        @lists = List.all 
        erb :'/lists/index'
    end
    #update
    get '/lists/:id/edit' do
        @lists = List.find(params[:id])
        erb :'/lists/edit'
    end
    patch '/lists/:id' do
        @lists = List.find(params[:id])
        @lists.update(
            title: params[:title],
             list1: params[:list1],
             list2: params[:list2],
             list3: params[:list3],
             list4: params[:list4],
             list5: params[:list5],
             list6: params[:list6],
             list7: params[:list7],
             list8: params[:list8],
             list9: params[:list9],
             list10: params[:list10],
            )
        redirect "/list/#{@list.id}"
    end
    #delete
    delete "/lists/:id" do
            list = List.find(params[:id])
            list.destroy
    end
    
              

end