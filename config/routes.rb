TestBootstrap::Application.routes.draw do
  match "*path", to: "static#show"
  root to: "static#sitemap"
end
