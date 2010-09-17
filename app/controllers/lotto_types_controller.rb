class LottoTypesController < ApplicationController
  # GET /lotto_types
  # GET /lotto_types.xml
  def index
    @lotto_types = LottoType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lotto_types }
    end
  end

  # GET /lotto_types/1
  # GET /lotto_types/1.xml
  def show
    @lotto_type = LottoType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lotto_type }
    end
  end

  # GET /lotto_types/new
  # GET /lotto_types/new.xml
  def new
    @lotto_type = LottoType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lotto_type }
    end
  end

  # GET /lotto_types/1/edit
  def edit
    @lotto_type = LottoType.find(params[:id])
  end

  # POST /lotto_types
  # POST /lotto_types.xml
  def create
    @lotto_type = LottoType.new(params[:lotto_type])

    respond_to do |format|
      if @lotto_type.save
        format.html { redirect_to(@lotto_type, :notice => 'Lotto type was successfully created.') }
        format.xml  { render :xml => @lotto_type, :status => :created, :location => @lotto_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lotto_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lotto_types/1
  # PUT /lotto_types/1.xml
  def update
    @lotto_type = LottoType.find(params[:id])

    respond_to do |format|
      if @lotto_type.update_attributes(params[:lotto_type])
        format.html { redirect_to(@lotto_type, :notice => 'Lotto type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lotto_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lotto_types/1
  # DELETE /lotto_types/1.xml
  def destroy
    @lotto_type = LottoType.find(params[:id])
    @lotto_type.destroy

    respond_to do |format|
      format.html { redirect_to(lotto_types_url) }
      format.xml  { head :ok }
    end
  end
end
