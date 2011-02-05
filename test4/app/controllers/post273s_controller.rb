class Post273sController < ApplicationController
  # GET /post273s
  # GET /post273s.xml
  def index
    @post273s = Post273.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post273s }
    end
  end

  # GET /post273s/1
  # GET /post273s/1.xml
  def show
    @post273 = Post273.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post273 }
    end
  end

  # GET /post273s/new
  # GET /post273s/new.xml
  def new
    @post273 = Post273.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post273 }
    end
  end

  # GET /post273s/1/edit
  def edit
    @post273 = Post273.find(params[:id])
  end

  # POST /post273s
  # POST /post273s.xml
  def create
    @post273 = Post273.new(params[:post273])

    respond_to do |format|
      if @post273.save
        format.html { redirect_to(@post273, :notice => 'Post273 was successfully created.') }
        format.xml  { render :xml => @post273, :status => :created, :location => @post273 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post273.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post273s/1
  # PUT /post273s/1.xml
  def update
    @post273 = Post273.find(params[:id])

    respond_to do |format|
      if @post273.update_attributes(params[:post273])
        format.html { redirect_to(@post273, :notice => 'Post273 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post273.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post273s/1
  # DELETE /post273s/1.xml
  def destroy
    @post273 = Post273.find(params[:id])
    @post273.destroy

    respond_to do |format|
      format.html { redirect_to(post273s_url) }
      format.xml  { head :ok }
    end
  end
end
