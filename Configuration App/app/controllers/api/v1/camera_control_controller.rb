module Api
  module V1
    class CameraControlController < ApplicationController
      def start_stream
        CameraControl.start_stream
        render json: {
          status: 'Steam started'
        }, status: :ok
      end

      def stop_stream
        CameraControl.stop_stream
        render json: {
          status: 'Steam started'
        }, status: :ok
      end
    end
  end
end
