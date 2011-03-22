class ArticlesController < ApplicationController

  respond_to :html, :json
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    respond_with(@articles = Article.all)
  end

  def show
    respond_with(@article = Article.find(params[:id]))
  end

  def new
    respond_with(@article = Article.new)
  end

  def edit
    authorize! :edit, @article
    respond_with(@article = Article.find(params[:id]))
  end

  def create
    authorize! :create, @article
    @article = Article.create(params[:article].merge({ :user => current_user }))
    respond_with(@article, :location => articles_url)
  end

  def update
    authorize! :update, @article
    @article = Article.find(params[:id])
    @article.update_attributes(params[:article])
    respond_with(@article, :location => articles_url)
  end

  def destroy
    authorize! :destroy, @article
    @article = Article.find(params[:id])
    @article.destroy
    respond_with(@article)
  end
end
