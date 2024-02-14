module Api
  module V1
    class TodosController < ApplicationController
      def index
        todos = Todo.all

        render json: {
          todos: todos
        }, status: :ok
      end

      def create
        new_todo = Todo.new(todo: post_params[:todo])
        if new_todo.save
          render json: {
            message: "TODOを作成しました"
          }, status: :ok
        else
          render json: {
            message: "TODOを作成できませんでした"
          }, status: :unprocessable_entity
        end
      end

      def destroy
        todo = Todo.find(params[:id])
        if todo.destroy
          render json: {
            message: "TODOを削除しました"
          }, status: :ok
        else
          render json: {
            message: "TODOを削除できませんでした"
          }, status: :unprocessable_entity
        end
      end

      private
      def post_params
        params.permit(:todo)
      end
    end
  end
end