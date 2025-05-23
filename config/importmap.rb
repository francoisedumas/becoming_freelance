# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: 'stimulus.min.js' # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@stimulus-components/rails-nested-form", to: "https://ga.jspm.io/npm:@stimulus-components/rails-nested-form@5.0.0/dist/stimulus-rails-nested-form.mjs"
pin "sortablejs", to: "https://ga.jspm.io/npm:sortablejs@1.15.6/modular/sortable.esm.js" # @1.15.6
pin "@rails/request.js", to: "https://ga.jspm.io/npm:@rails/request.js@0.0.11/src/index.js" # @0.0.11
pin "trix"
pin "@rails/actiontext", to: "actiontext.esm.js"
