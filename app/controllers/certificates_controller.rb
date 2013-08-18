class CertificatesController < ActionController::Base
  
  layout 'application'
  
  def show
    @data = params[:id].tr('-_','+/').unpack('m')[0]
    #render  :pdf => "urkunde", :page_size  => 'A4', :margin => { :top => 0, :bottom => 0, :left => 0, :right => 0}
 end
  
end
