class Post249sController < ApplicationController
  # GET /post249s
  # GET /post249s.xml
  def index
    @post249s = Post249.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post249s }
    end
  end

  # GET /post249s/1
  # GET /post249s/1.xml
  def show
    @post249 = Post249.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post249 }
    end
  end

  # GET /post249s/new
  # GET /post249s/new.xml
  def new
    @post249 = Post249.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post249 }
    end
  end

  # GET /post249s/1/edit
  def edit
    @post249 = Post249.find(params[:id])
  end

  # POST /post249s
  # POST /post249s.xml
  def create
    @post249 = Post249.new(params[:post249])

    respond_to do |format|
      if @post249.save
        format.html { redirect_to(@post249, :notice => 'Post249 was successfully created.') }
        format.xml  { render :xml => @post249, :status => :created, :location => @post249 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post249.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post249s/1
  # PUT /post249s/1.xml
  def update
    @post249 = Post249.find(params[:id])

    respond_to do |format|
      if @post249.update_attributes(params[:post249])
        format.html { redirect_to(@post249, :notice => 'Post249 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post249.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post249s/1
  # DELETE /post249s/1.xml
  def destroy
    @post249 = Post249.find(params[:id])
    @post249.destroy

    respond_to do |format|
      format.html { redirect_to(post249s_url) }
      format.xml  { head :ok }
    end
  end
end
