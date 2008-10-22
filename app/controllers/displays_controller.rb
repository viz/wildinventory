class DisplaysController < ApplicationController
  # GET /displays
  # GET /displays.xml
  def index
    @displays = Display.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @displays }
    end
  end

  # GET /displays/1
  # GET /displays/1.xml
  def show
    @display = Display.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @display }
    end
  end

  # GET /displays/new
  # GET /displays/new.xml
  def new
    @display = Display.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @display }
    end
  end

  # GET /displays/1/edit
  def edit
    @display = Display.find(params[:id])
  end

  # POST /displays
  # POST /displays.xml
  def create
    @display = Display.new(params[:display])

    respond_to do |format|
      if @display.save
        flash[:notice] = 'Display was successfully created.'
        format.html { redirect_to(@display) }
        format.xml  { render :xml => @display, :status => :created, :location => @display }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @display.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /displays/1
  # PUT /displays/1.xml
  def update
    @display = Display.find(params[:id])

    respond_to do |format|
      if @display.update_attributes(params[:display])
        flash[:notice] = 'Display was successfully updated.'
        format.html { redirect_to(@display) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @display.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /displays/1
  # DELETE /displays/1.xml
  def destroy
    @display = Display.find(params[:id])
    @display.destroy

    respond_to do |format|
      format.html { redirect_to(displays_url) }
      format.xml  { head :ok }
    end
  end
end
