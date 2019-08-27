# frozen_string_literal: true

# Numbers controller
class NumbersController < ApplicationController
  def index
    numbers = Number.all
    render json: {data: users, status: 'success', message: 'Users loaded'}
  end

  def create
    number = Number.create()
  end

  def get_number
    numbers = 111-111-1111..999-999-9999
  end
end
