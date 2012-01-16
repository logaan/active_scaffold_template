class BackEndController < ApplicationController
  before_filter :authenticate_admin_admin!
  layout "admin"
end
