  def create
  	@libraty = Article.new(libraty_params)
    
    @libraty.save
    redirect_to @libraty
end

private 
def libraty_params
	params.require(:libraty).permit(:title, :text)
end