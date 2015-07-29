# encoding: utf-8
class Portfolio < Sinatra::Application
  get '/' do
    send_file File.join('public', 'index.html')
  end

  get '/projects' do
    @projects = Project.all
    @projects.to_json
  end

  get '/projects/:id' do
    @project = Project.find(params[:id])
    unless @project[:toolbox_ids].nil?
      @project.tools = @project[:toolbox_ids].join(", ")
    end
    unless @project[:skills].nil?
      @project.skills_str = @project[:skills].join(", ")
    end
    unless @project[:role].nil?
      @project.role_str = @project[:role].join(", ")
    end
    unless @project.description.nil?
      @project.description = @project.description.gsub("'", '')
    end
    @project.to_json(:methods => [:tools, :skills_str , :role_str] )
  end

  get '/projectCategories' do
    @project_categories = ProjectType.all
    @project_categories.to_json
  end

  get '/toolboxCategories' do
    @toolbox_categories = Toolbox.all
    @toolbox_categories.to_json
  end
end
