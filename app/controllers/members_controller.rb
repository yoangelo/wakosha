class MembersController < ApplicationController
    before_action :login_required, only: [ :new, :create, :edit, :update, :destroy]

    def index
        @members = Member.all.recent
    end

    def show
        @member = Member.find(params[:id])
    end

    def new
        @member = Member.new
    end

    def create
        @member = Member.new(member_params)
        if @member.save
            redirect_to @member, notice: "#{@member.name}を登録しました。"
        else
            render :new
        end
    end

    def edit
        @member = Member.find(params[:id])
    end

    def update
        member = Member.find(params[:id])
        member.update!(member_params)
        redirect_to members_path, notice: "#{member.name}を編集しました。"
    end

    def destroy
        member = Member.find(params[:id])
        member.destroy
        redirect_to members_path, notice: "#{member.name}を削除しました。"
    end

    private

    def member_params
        params.require(:member).permit(:name, :description)
    end
end
