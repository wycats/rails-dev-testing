class Post333sController < ApplicationController
  # GET /post333s
  # GET /post333s.xml
  def index
    @post333s = Post333.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post333s }
    end
  end

  # GET /post333s/1
  # GET /post333s/1.xml
  def show
    @post333 = Post333.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post333 }
    end
  end

  # GET /post333s/new
  # GET /post333s/new.xml
  def new
    @post333 = Post333.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post333 }
    end
  end

  # GET /post333s/1/edit
  def edit
    @post333 = Post333.find(params[:id])
  end

  # POST /post333s
  # POST /post333s.xml
  def create
    @post333 = Post333.new(params[:post333])

    respond_to do |format|
      if @post333.save
        format.html { redirect_to(@post333, :notice => 'Post333 was successfully created.') }
        format.xml  { render :xml => @post333, :status => :created, :location => @post333 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post333.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post333s/1
  # PUT /post333s/1.xml
  def update
    @post333 = Post333.find(params[:id])

    respond_to do |format|
      if @post333.update_attributes(params[:post333])
        format.html { redirect_to(@post333, :notice => 'Post333 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post333.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post333s/1
  # DELETE /post333s/1.xml
  def destroy
    @post333 = Post333.find(params[:id])
    @post333.destroy

    respond_to do |format|
      format.html { redirect_to(post333s_url) }
      format.xml  { head :ok }
    end
  end
end
