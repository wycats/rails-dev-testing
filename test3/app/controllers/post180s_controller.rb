class Post180sController < ApplicationController
  # GET /post180s
  # GET /post180s.xml
  def index
    @post180s = Post180.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post180s }
    end
  end

  # GET /post180s/1
  # GET /post180s/1.xml
  def show
    @post180 = Post180.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post180 }
    end
  end

  # GET /post180s/new
  # GET /post180s/new.xml
  def new
    @post180 = Post180.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post180 }
    end
  end

  # GET /post180s/1/edit
  def edit
    @post180 = Post180.find(params[:id])
  end

  # POST /post180s
  # POST /post180s.xml
  def create
    @post180 = Post180.new(params[:post180])

    respond_to do |format|
      if @post180.save
        format.html { redirect_to(@post180, :notice => 'Post180 was successfully created.') }
        format.xml  { render :xml => @post180, :status => :created, :location => @post180 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post180.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post180s/1
  # PUT /post180s/1.xml
  def update
    @post180 = Post180.find(params[:id])

    respond_to do |format|
      if @post180.update_attributes(params[:post180])
        format.html { redirect_to(@post180, :notice => 'Post180 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post180.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post180s/1
  # DELETE /post180s/1.xml
  def destroy
    @post180 = Post180.find(params[:id])
    @post180.destroy

    respond_to do |format|
      format.html { redirect_to(post180s_url) }
      format.xml  { head :ok }
    end
  end
end
