class Post286sController < ApplicationController
  # GET /post286s
  # GET /post286s.xml
  def index
    @post286s = Post286.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post286s }
    end
  end

  # GET /post286s/1
  # GET /post286s/1.xml
  def show
    @post286 = Post286.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post286 }
    end
  end

  # GET /post286s/new
  # GET /post286s/new.xml
  def new
    @post286 = Post286.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post286 }
    end
  end

  # GET /post286s/1/edit
  def edit
    @post286 = Post286.find(params[:id])
  end

  # POST /post286s
  # POST /post286s.xml
  def create
    @post286 = Post286.new(params[:post286])

    respond_to do |format|
      if @post286.save
        format.html { redirect_to(@post286, :notice => 'Post286 was successfully created.') }
        format.xml  { render :xml => @post286, :status => :created, :location => @post286 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post286.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post286s/1
  # PUT /post286s/1.xml
  def update
    @post286 = Post286.find(params[:id])

    respond_to do |format|
      if @post286.update_attributes(params[:post286])
        format.html { redirect_to(@post286, :notice => 'Post286 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post286.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post286s/1
  # DELETE /post286s/1.xml
  def destroy
    @post286 = Post286.find(params[:id])
    @post286.destroy

    respond_to do |format|
      format.html { redirect_to(post286s_url) }
      format.xml  { head :ok }
    end
  end
end
