#seed the project table
#<a href="#/projects#{{project.tags[0]}}"> cool</a>
require "sinatra/activerecord"
require File.expand_path('../../models/models.rb', __FILE__)
require 'smarter_csv'
#require 'csv'

ProjectType.delete_all
ProjectType.create(name: "all categories",  tag: 'all')
ProjectType.create(name: "tangible ui",  tag: 'tui')
ProjectType.create(name: "natural language processing",  tag: 'nlp')
ProjectType.create(name: "information vizualization",  tag: 'info_viz')
ProjectType.create(name: "web development",  tag: 'web_dev')
ProjectType.create(name: "databases and devops",  tag: 'dbs')
ProjectType.create(name: "writing samples",  tag: 'writing')
ProjectType.create(name: "ux research",  tag: 'ux_research')



Toolbox.delete_all
Toolbox.create( name:"all tools")
Toolbox.create( name:"mysql")
Toolbox.create( name:"jquery+ajax")
Toolbox.create( name:"html+css")
Toolbox.create( name:"ruby on rails")
Toolbox.create( name: "python" )
Toolbox.create( name:"arduino")
Toolbox.create( name:"d3")
Toolbox.create( name:"amazon ec2")
Toolbox.create( name:"shell scripting")
Toolbox.create( name:"elasticsearch")
Toolbox.create( name:"tablau")
Toolbox.create( name:"javascript")


Project.delete_all

csvfile = File.dirname(__FILE__) + "/portfolio_projects.csv"
csv = SmarterCSV.process(csvfile) do |line|
  Project.create!(line)
end


Project.where(:title_short => "whirld").update_all( tags: 'ux_research, web_dev, dbs', toolbox_ids:'mysql, ruby on rails, jquery+ajax, html+css, javascript, elasticsearch', skills:'contextual interviewing, user observation, rapid iterative testing evaluation, personas, competive research, participatory design, prototyping, spacial data analysis', role:'ux research, backend and front end development, dev ops')

Project.where(:title_short => "meeglo").update_all( tags: 'ux_research, web_dev, tui', toolbox_ids: 'arduino, sinatra, html+css, javascript, jquery+ajax, mongodb', skills:'contextual interviewing,  rapid iterative testing evaluation, Affinity Diagramming, Prototyping', role:'user research, product design, web development, branding, device prototyping')

Project.where(:title_short => "archextract").update_all( tags: 'nlp, web_dev, dbs', toolbox_ids: 'mysql, ruby on rails, html+css, javascript, python, map reduce, shell scripting, jquery+ajax,', skills:'contextual interviewing, comparative analysis, dev ops, automation, product design, web development', role:'ux research, front and backend web development, dev ops, product design')

Project.where(:title_short => "trains").update_all( tags: 'info_viz, tui', toolbox_ids: 'mysql, python', skills:'spacial data analysis, data visualization')

Project.where(:title_short => "sfgraffitti").update_all( tags: 'info_viz', toolbox_ids: 'tablau', skills:'data analysis, data visualization')

Project.where(:title_short => "india").update_all(tags: 'info_viz',  toolbox_ids: 'd3, html+css, javascript, tablau', skills:'data analysis, data visualization, user testing', role:'exploratory data analysis, creation of d3 and highcharts visualizations, user testing')

Project.where(:title_short => "tubestrends").update_all(tags: 'dbs',  toolbox_ids: 'mongo db, mysql, amazon ec2, shell scripting, ruby, python', skills:'automation engineering, server admininstration, ETL pipline creation, data management')

Project.where(:title_short => "caceo").update_all( tags: 'web_dev',  toolbox_ids: 'ruby on rails, html+css, mysql, jquery+ajax', skills:'contextual interviewing, dev ops, product design, web development')

Project.where(:title_short => "fractalviewer").update_all( tags: 'tui',  toolbox_ids: 'arduino, processing, java', skills:'prototyping, tangible ui design')

Project.where(:title_short => "sybil").update_all( tags: 'writing')


