// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import {Turbo} from "@hotwired/turbo-rails"

Turbo.session.drive = false
import "controllers"
import jquery from 'jquery';
window.jquery = jquery
window.$ = jqueryimport "trix"
import "@rails/actiontext"
//= require jquery
