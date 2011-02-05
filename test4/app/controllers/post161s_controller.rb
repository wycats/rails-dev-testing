class Post161sController < ApplicationController
  # GET /post161s
  # GET /post161s.xml
  def index
    @post161s = Post161.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post161s }
    end
  end

  # GET /post161s/1
  # GET /post161s/1.xml
  def show
    @post161 = Post161.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post161 }
    end
  end

  # GET /post161s/new
  # GET /post161s/new.xml
  def new
    @post161 = Post161.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post161 }
    end
  end

  # GET /post161s/1/edit
  def edit
    @post161 = Post161.find(params[:id])
  end

  # POST /post161s
  # POST /post161s.xml
  def create
    @post161 = Post161.new(params[:post161])

    respond_to do |format|
      if @post161.save
        format.html { redirect_to(@post161, :notice => 'Post161 was successfully created.') }
        format.xml  { render :xml => @post161, :status => :created, :location => @post161 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post161.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post161s/1
  # PUT /post161s/1.xml
  def update
    @post161 = Post161.find(params[:id])

    respond_to do |format|
      if @post161.update_attributes(params[:post161])
        format.html { redirect_to(@post161, :notice => 'Post161 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post161.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post161s/1
  # DELETE /post161s/1.xml
  def destroy
    @post161 = Post161.find(params[:id])
    @post161.destroy

    respond_to do |format|
      format.html { redirect_to(post161s_url) }
      format.xml  { head :ok }
    end
  end
end
