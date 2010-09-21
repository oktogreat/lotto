class LotteryResultsController < ApplicationController
  # GET /lottery_results
  # GET /lottery_results.xml
  def index
    @lottery_results = LotteryResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lottery_results }
    end
  end

  # GET /lottery_results/1
  # GET /lottery_results/1.xml
  def show
    @lottery_result = LotteryResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lottery_result }
    end
  end

  # GET /lottery_results/new
  # GET /lottery_results/new.xml
  def new
    @lottery_result = LotteryResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lottery_result }
    end
  end

  # GET /lottery_results/1/edit
  def edit
    @lottery_result = LotteryResult.find(params[:id])
  end

  # POST /lottery_results
  # POST /lottery_results.xml
  def create
    @lottery_result = LotteryResult.new(params[:lottery_result])

    respond_to do |format|
      if @lottery_result.save
        format.html { redirect_to(@lottery_result, :notice => 'Lottery result was successfully created.') }
        format.xml  { render :xml => @lottery_result, :status => :created, :location => @lottery_result }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lottery_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lottery_results/1
  # PUT /lottery_results/1.xml
  def update
    @lottery_result = LotteryResult.find(params[:id])

    respond_to do |format|
      if @lottery_result.update_attributes(params[:lottery_result])
        format.html { redirect_to(@lottery_result, :notice => 'Lottery result was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lottery_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lottery_results/1
  # DELETE /lottery_results/1.xml
  def destroy
    @lottery_result = LotteryResult.find(params[:id])
    @lottery_result.destroy

    respond_to do |format|
      format.html { redirect_to(lottery_results_url) }
      format.xml  { head :ok }
    end
  end
end
