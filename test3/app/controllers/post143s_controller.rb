class Post143sController < ApplicationController
  # GET /post143s
  # GET /post143s.xml
  def index
    @post143s = Post143.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post143s }
    end
  end

  # GET /post143s/1
  # GET /post143s/1.xml
  def show
    @post143 = Post143.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post143 }
    end
  end

  # GET /post143s/new
  # GET /post143s/new.xml
  def new
    @post143 = Post143.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post143 }
    end
  end

  # GET /post143s/1/edit
  def edit
    @post143 = Post143.find(params[:id])
  end

  # POST /post143s
  # POST /post143s.xml
  def create
    @post143 = Post143.new(params[:post143])

    respond_to do |format|
      if @post143.save
        format.html { redirect_to(@post143, :notice => 'Post143 was successfully created.') }
        format.xml  { render :xml => @post143, :status => :created, :location => @post143 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post143.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post143s/1
  # PUT /post143s/1.xml
  def update
    @post143 = Post143.find(params[:id])

    respond_to do |format|
      if @post143.update_attributes(params[:post143])
        format.html { redirect_to(@post143, :notice => 'Post143 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post143.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post143s/1
  # DELETE /post143s/1.xml
  def destroy
    @post143 = Post143.find(params[:id])
    @post143.destroy

    respond_to do |format|
      format.html { redirect_to(post143s_url) }
      format.xml  { head :ok }
    end
  end
end
