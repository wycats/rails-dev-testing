class Post492sController < ApplicationController
  # GET /post492s
  # GET /post492s.xml
  def index
    @post492s = Post492.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post492s }
    end
  end

  # GET /post492s/1
  # GET /post492s/1.xml
  def show
    @post492 = Post492.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post492 }
    end
  end

  # GET /post492s/new
  # GET /post492s/new.xml
  def new
    @post492 = Post492.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post492 }
    end
  end

  # GET /post492s/1/edit
  def edit
    @post492 = Post492.find(params[:id])
  end

  # POST /post492s
  # POST /post492s.xml
  def create
    @post492 = Post492.new(params[:post492])

    respond_to do |format|
      if @post492.save
        format.html { redirect_to(@post492, :notice => 'Post492 was successfully created.') }
        format.xml  { render :xml => @post492, :status => :created, :location => @post492 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post492.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post492s/1
  # PUT /post492s/1.xml
  def update
    @post492 = Post492.find(params[:id])

    respond_to do |format|
      if @post492.update_attributes(params[:post492])
        format.html { redirect_to(@post492, :notice => 'Post492 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post492.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post492s/1
  # DELETE /post492s/1.xml
  def destroy
    @post492 = Post492.find(params[:id])
    @post492.destroy

    respond_to do |format|
      format.html { redirect_to(post492s_url) }
      format.xml  { head :ok }
    end
  end
end
