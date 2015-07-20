#seed the project table
#<a href="#/projects#{{project.tags[0]}}"> cool</a>
require "sinatra/activerecord"
require File.expand_path('../../models/models.rb', __FILE__)
require 'smarter_csv'
#require 'csv'

ProjectType.delete_all
ProjectType.create(name: "All Categories",  tag: 'all')
ProjectType.create(name: "Tangible UI",  tag: 'tui')
ProjectType.create(name: "Natural Language Processing",  tag: 'nlp')
ProjectType.create(name: "Information Vizualization",  tag: 'info_viz')
ProjectType.create(name: "Web Development",  tag: 'web_dev')
ProjectType.create(name: "Databases and Devops",  tag: 'dbs')
ProjectType.create(name: "Writing Samples",  tag: 'writing')
ProjectType.create(name: "UX Research",  tag: 'ux_research')



Toolbox.delete_all
Toolbox.create( name:"all tools")
Toolbox.create( name:"mysql")
Toolbox.create( name:"ajax")
Toolbox.create( name:"css/html")
Toolbox.create( name:"ruby on rails")
Toolbox.create( name: "python" )
Toolbox.create( name:" arduino")
Toolbox.create( name:"d3")
Toolbox.create( name:"amazon ec2")
Toolbox.create( name:"shell scripting")
Toolbox.create( name:"node.js")
Toolbox.create( name:"tablau")


Project.delete_all

csvfile = File.dirname(__FILE__) + "/portfolio_projects.csv"
csv = SmarterCSV.process(csvfile) do |line|
  Project.create!(line)
end


Project.where(:title_short => "whirld").update_all( tags: ['ux_research', 'web_dev'], toolbox_ids: ["mysql", "ruby on rails", "ajax", "html/css", "javascript", "elastic search"], skills:["Contextual Interviewing, Rapid Iterative Testing Evaluation, Competive Research, Affinity Diagramming, Object Based Parcipatory Design, Prototyping"], role:['user research, backend web-development, front-end web-development'])

Project.where(:title_short => "meeglo").update_all( tags: ['ux_research', 'web_dev', 'tui'], toolbox_ids: ["arduino", "sinatra", "ajax", "html/css", "javascript", "mongodb"], skills:["Contextual Interviewing, Rapid Iterative Testing Evaluation,  Affinity Diagramming, Prototyping"], role:['user research, product design, web development, branding, device prototyping'])

Project.where(:title_short => "archextract").update_all( tags: ['nlp', 'web_dev', 'dbs'], toolbox_ids: ["mysql", "ruby on rails", "ajax", "html/css" "javascript", "python", "map reduce"], skills:["contextual interviewing, dev ops, product design, web development"])

Project.where(:title_short => "trains").update_all( tags: ['info_viz'], toolbox_ids: ["mysql", "python"], skills:["spacial data analysis"])

Project.where(:title_short => "sfgraffitti").update_all( tags: ['info_viz'], toolbox_ids: ["tablau"], skills:["data analysis"])

Project.where(:title_short => "india").update_all(tags: ["info_viz",  "web_dev"],  toolbox_ids: ["d3, html/css"], skills:["data analysis, data visualization"])

Project.where(:title_short => "tubestrends").update_all(tags: ["dbs"],  toolbox_ids: ["mongo db", "mysql", "amazon ec2", "shell scripting", "python"], skills:["automation engineering, server admininstration, ETL pipline creation, data management"])

Project.where(:title_short => "caceo").update_all( tags: ["web_dev"],  toolbox_ids: ["ruby on rails", "ajax", "css/html", "mysql"], skills:["contextual interviewing, dev ops, product design, web development"])



#Project.create( proj_date: 'Fall and Summer 2015',    tags: ["web_dev"], title:"CACEO Costs",  thumb: "cali.png", toolbox_ids: ["ruby on rails", "ajax", "css/html", "shell scripting"])
# Project.create( proj_date: 'Fall and Summer 2015',    tags: ["web_dev"], title:"CACEO Costs",  thumb: "cali.png", toolbox_ids: ["ruby on rails", "ajax", "css/html", "shell scripting"])
# Project.create(proj_date: 'Fall 2014', tags: ['tui, info_viz, cool'], title:"Visual Feedback for Medication Adherence",  thumb: "medication1.jpg", toolbox_ids: ["arduino"])
# Project.create(  proj_date: 'Fall 2014', tags: ['info_viz'], title:"Pipeline and RailRoad Oil Spills",  thumb: "2005kde_pp_oil_.png", toolbox_ids: ["mysql",  "python"])
# Project.create(  proj_date: 'Summer 2015',   tags: ["nlp", "web_dev"] ,  title:"ArchExtract",  thumb: "bancroft_library_lg.jpg", toolbox_ids: ["ruby on rails", "python", "ajax", "css/html", "shell scripting"])
# Project.create(  proj_date: 'Spring 2014', tags: ['info_viz'], title:"SF Graffiti",  thumb: "sfg.jpg", toolbox_ids: ["tablau"])
# Project.create( proj_date: 'Fall and Summer 2015',    tags: ["web_dev"], title:"CACEO Costs",  thumb: "cali.png", toolbox_ids: ["ruby on rails", "ajax", "css/html", "shell scripting"])
# Project.create(  proj_date:  'December 2015',  tags: [ "nlp",  "web_dev"],  title:"QParse",  thumb: "qparse.jpg", toolbox_ids: ["python"])
# Project.create(  proj_date: 'Fall 2014',   tags: ["tui"], title:"Tilt",  thumb: "tilt.jpg")
# Project.create(   proj_date: 'Fall 2013',   tags: ["dbs"], title:"TubesTrends",  thumb: "ants.jpg", toolbox_ids: ["mongo db", "mysql", "amazon ec2", "shell scripting", "python"])
# Project.create(   proj_date: 'Fall 2013',  tags: ['writing'], title:"Sybil Attacks and Swarms",  thumb: "sybil_0.jpg")
# Project.create(   proj_date: 'Spring 2014',   tags: ['writing'], title:"Apportioned User Synergy",  thumb: "synergy.jpg" )
# Project.create(  proj_date: 'Spring 2014',   tags: ["info_viz",  "web_dev"], title:"Violence Against Women in India", thumb: "AwarenessIndia_logo2.jpg", toolbox_ids: ["mysql", "ajax"])
# Project.create(  proj_date: 'October 2014',  tags: ["tui"], title:"FroggerBot", thumb: "frogger1.jpg",  toolbox_ids: ["mysql", "ajax", "python"])
# Project.create( proj_date: 'November 2014',   tags: ["tui"], title:"Fractal Viewer", thumb: "fractal.gif", toolbox_ids: ["mysql", "ajax", "python"])
# Project.create(  proj_date: 'Spring 2014',   tags: ["info_viz",  "web_dev"], title:"Violence Against Women in India", thumb: "AwarenessIndia_logo2.jpg",
# Project.create(   proj_date: 'Fall 2013',   tags: ["dbs"], title:"TubesTrends",  thumb: "ants.jpg", toolbox_ids: ["mongo db", "mysql", "amazon ec2", "shell scripting", "python"])

