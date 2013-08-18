class CertificatesController < ActionController::Base
  
  layout 'application'
  
  def show
    @data = params[:id].tr('-_','+/').unpack('m')[0]
    @css_path = 'http://ringelnatzlauf.herokuapp.com/stylesheets/application.css'
    @bg_path = 'http://ringelnatzlauf.herokuapp.com/images/urkunde_2013_leer.jpg'    
    
     render  :pdf => "urkunde", :page_size  => 'A4', :margin => { :top => 0, :bottom => 0, :left => 0, :right => 0}
 end
  
end
