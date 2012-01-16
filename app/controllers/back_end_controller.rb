class BackEndController < ApplicationController
  before_filter :authenticate_admin_admin!
end
