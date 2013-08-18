class CertificatesController < ActionController::Base
  
  layout 'application'
  
  def show
    @data = params[:id].tr('-_','+/').unpack('m')[0]
    
    Rails.env == "development" ? @bg_path = 'C:/Users/Henrik/My Documents/Aptana Studio 3 Workspace/2013_06_rila_urkunden/public/images/urkunde_2013_leer.jpg' : @bg_path = 'http://ringelnatzlauf.herokuapp.com/images/urkunde_2013_leer.jpg'    
    
     #render  :pdf => "urkunde", :page_size  => 'A4', :margin => { :top => 0, :bottom => 0, :left => 0, :right => 0}
 end
  
end
