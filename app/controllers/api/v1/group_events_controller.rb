module Api::V1
  class GroupEventsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_group_event, only: [:show, :update, :publish, :destroy]

    # GET /group_events
    def index
      @group_events = GroupEvent.all
      render json: @group_events
    end

    # GET /group_events/1
    def show
      render json: @group_event
    end

    # POST /group_events
    def create
      @group_event = GroupEvent.new(group_event_params)
      if @group_event.save
        render json: @group_event, status: :created
      else
        redner_errors
      end
    end

    # PATCH/PUT /group_events/1
    def update
      if @group_event.update(group_event_params)
        render json: @group_event
      else
        redner_errors
      end
    end

    # DELETE /group_events/1
    # DELETE /group_events/1.json
    def destroy
      @group_event.soft_delete!
      render json: @group_event, status: :success
    end

    # PUT /group_events/1/publish
    def publish
      if @group_event.publish_event!
        render json: @group_event, status: :success
      else
        redner_errors
      end
    end

    private

      def set_group_event
        @group_event = GroupEvent.find(params[:id])
      end

      def group_event_params
        params.require(:group_event).permit(:user_id, :start_date, :end_date, :name, :location, :description)
      end

      def redner_errors
        render json: {
          errors: @group_event.errors
        }.to_json
      end
  end
end
