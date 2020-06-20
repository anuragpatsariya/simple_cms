class DemoController < ApplicationController

layout false

  def index
    # render('demo/index')
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
    # render('hello')
    # redirect_to(:controller=>'demo',:action=>'index')
  end

  def about #about_us
    render('about_us')
    #redirect_to(:controller=>'demo', :action=> 'about_us')
  end


  def contact #contact_us
    #redirect_to(:controller=>'demo', :action=> 'contact_us')
    if ['us','ca'].include?(params[:country])
      @phone = '(800) 123-3222'
    elsif ['uk'].include?(params[:country])
      @phone = '1800-111-1121'
    else
      @phone = '+1 (999) 988-0987'
    #@country = params['country']
    end
    render('contact_us')
  end

end
