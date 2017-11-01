class CameraControl < ActiveRecord::Base
  def self.start_stream
    system('raspivid --verbose --nopreview -hf -vf --width 1280 --height 720 --framerate 20 --bitrate 1000000 --profile baseline --timeout 0 -o - | gst-launch-1.0 -v fdsrc ! h264parse ! rtph264pay config-interval=1 pt=96 ! udpsink host=10.0.20.1 port=8004')
  end

  def self.stop_stream
    system('sudo')
  end
end
