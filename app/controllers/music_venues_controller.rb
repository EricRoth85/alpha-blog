class MusicVenuesController < ApplicationController

  def show
    # @music_venue = MusicVenue.find(params[:id])
  end

#   def load_routers
#     @music_venue = Gmaps4rails.build_markers(MusicVenue.all) do |plot, marker|
#       puts 'marker' marker
#        marker.lat plot.latitude
#        marker.lng plot.longitude

#        @status = rand(1..4)
#        @battery = rand(10..90)
#        @ip = "192.168."+rand(0..255).to_s+"."+rand(15..250).to_s
#        @connected = rand(50..100)

#        if @status == 1
#          url_alert = "/good.png"
#          @status == "Normal"
#        else
#          url_alert = "/alert.png"
#        end

#        marker.picture({
#          "url" => url_alert,
#          "width" => 35,
#          "height" => 30
#        })

#        marker.infowindow render_to_string(:partial => "/routers/info",
#          :locals => {:name => plot.name, :battery => @battery, :date => rand(6.months.ago..Time.now), :ip => @ip, :connected => @connected })
#     end
#   end

#  def index
#     load_routers

#     @routers = Router.all
#  end

end
