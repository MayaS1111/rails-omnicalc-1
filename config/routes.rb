Rails.application.routes.draw do
  get("/", {controller: "calculate", action: "home"})
  get("/square/new", {controller: "calculate", action: "square"})
  get("/square_root/new", {controller: "calculate", action: "square_root"})
  get("/payment", {controller: "calculate", action: "payment"})
  get("/random", {controller: "calculate", action: "random"})
end
