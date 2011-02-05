class Post345sController < ApplicationController
  # GET /post345s
  # GET /post345s.xml
  def index
    @post345s = Post345.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post345s }
    end
  end

  # GET /post345s/1
  # GET /post345s/1.xml
  def show
    @post345 = Post345.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post345 }
    end
  end

  # GET /post345s/new
  # GET /post345s/new.xml
  def new
    @post345 = Post345.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post345 }
    end
  end

  # GET /post345s/1/edit
  def edit
    @post345 = Post345.find(params[:id])
  end

  # POST /post345s
  # POST /post345s.xml
  def create
    @post345 = Post345.new(params[:post345])

    respond_to do |format|
      if @post345.save
        format.html { redirect_to(@post345, :notice => 'Post345 was successfully created.') }
        format.xml  { render :xml => @post345, :status => :created, :location => @post345 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post345.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post345s/1
  # PUT /post345s/1.xml
  def update
    @post345 = Post345.find(params[:id])

    respond_to do |format|
      if @post345.update_attributes(params[:post345])
        format.html { redirect_to(@post345, :notice => 'Post345 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post345.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post345s/1
  # DELETE /post345s/1.xml
  def destroy
    @post345 = Post345.find(params[:id])
    @post345.destroy

    respond_to do |format|
      format.html { redirect_to(post345s_url) }
      format.xml  { head :ok }
    end
  end
end
