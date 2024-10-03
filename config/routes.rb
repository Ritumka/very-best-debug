Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "all_users" })
  get("/users", { :controller => "users", :action => "all_users" })
  get("/users/:username", { :controller => "users", :action => "show" })
  post("/add_user", { :controller => "users", :action => "create" })
  post("/update_user/:user_id", { :controller => "users", :action => "update" })

  get("/venues", { :controller => "venues", :action => "index" })
  get("/venues/:the_id", { :controller => "venues", :action => "show" })
  post("/add_venue", { :controller => "venues", :action => "create" })
  post("/update_venue/:the_id", { :controller => "venues", :action => "update" })
  get("/delete_venue/:the_id", { :controller => "venues", :action => "destroy" })
  
  post("/add_comment", { :controller => "comments", :action => "create" })
end
