class TeamsController < ApplicationController
  before_action :set_event
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  # GET /teams.json
  def index
    @teams = @event.teams
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
  end

  # GET /teams/new
  def new 
    # Team.new
    @team = @event.teams.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = @event.teams.new(team_params)
    @team.user = current_user 
    respond_to do |format|
      if current_user.id = @team.user_id
        if @team.save
            format.html { redirect_to event_team_path(@event, @team), notice: 'Team was successfully created.' }
            format.json { render :show, status: :created, location: @team }
        else
          format.html { render :new }
          format.json { render json: @team.errors, status: :unprocessable_entity }
        end
      end 
    end 
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to event_team_path(@event, @team), notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to event_teams_url(@event), notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = @event.teams.find(params[:id])
    end

    def set_event 
      @event = Event.find(params[:event_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :num_members, :event_id)
    end
end
