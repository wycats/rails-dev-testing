class Post413sController < ApplicationController
  # GET /post413s
  # GET /post413s.xml
  def index
    @post413s = Post413.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post413s }
    end
  end

  # GET /post413s/1
  # GET /post413s/1.xml
  def show
    @post413 = Post413.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post413 }
    end
  end

  # GET /post413s/new
  # GET /post413s/new.xml
  def new
    @post413 = Post413.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post413 }
    end
  end

  # GET /post413s/1/edit
  def edit
    @post413 = Post413.find(params[:id])
  end

  # POST /post413s
  # POST /post413s.xml
  def create
    @post413 = Post413.new(params[:post413])

    respond_to do |format|
      if @post413.save
        format.html { redirect_to(@post413, :notice => 'Post413 was successfully created.') }
        format.xml  { render :xml => @post413, :status => :created, :location => @post413 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post413.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post413s/1
  # PUT /post413s/1.xml
  def update
    @post413 = Post413.find(params[:id])

    respond_to do |format|
      if @post413.update_attributes(params[:post413])
        format.html { redirect_to(@post413, :notice => 'Post413 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post413.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post413s/1
  # DELETE /post413s/1.xml
  def destroy
    @post413 = Post413.find(params[:id])
    @post413.destroy

    respond_to do |format|
      format.html { redirect_to(post413s_url) }
      format.xml  { head :ok }
    end
  end
end
