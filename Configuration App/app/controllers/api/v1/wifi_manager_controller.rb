module Api
  module V1
    class WifiManagerController < ApplicationController
      def index
        current_values = WifiManager.get_current_config_values
        wifi_ap_hash = WifiManager.scan_wifi_networks
        render json: {
          currentValues: current_values,
          wifiScan: wifi_ap_hash
        }, status: :ok
      end

      def credentials
        ssid = params[:ssid]
        encryption_type = params[:enc]

        unless ssid.nil? || params[:key] == ''
          WifiManager.create_wpa_supplicant(ssid, encryption_type, params[:key])
        end

        if File.exist?('/etc/wpa_supplicant/wpa_supplicant.conf')
          WifiManager.set_ap_client_mode
        end
      end

      def reset
        WifiManager.reset_all
      end
    end
  end
end
