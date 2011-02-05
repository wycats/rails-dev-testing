class Post450sController < ApplicationController
  # GET /post450s
  # GET /post450s.xml
  def index
    @post450s = Post450.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post450s }
    end
  end

  # GET /post450s/1
  # GET /post450s/1.xml
  def show
    @post450 = Post450.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post450 }
    end
  end

  # GET /post450s/new
  # GET /post450s/new.xml
  def new
    @post450 = Post450.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post450 }
    end
  end

  # GET /post450s/1/edit
  def edit
    @post450 = Post450.find(params[:id])
  end

  # POST /post450s
  # POST /post450s.xml
  def create
    @post450 = Post450.new(params[:post450])

    respond_to do |format|
      if @post450.save
        format.html { redirect_to(@post450, :notice => 'Post450 was successfully created.') }
        format.xml  { render :xml => @post450, :status => :created, :location => @post450 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post450.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post450s/1
  # PUT /post450s/1.xml
  def update
    @post450 = Post450.find(params[:id])

    respond_to do |format|
      if @post450.update_attributes(params[:post450])
        format.html { redirect_to(@post450, :notice => 'Post450 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post450.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post450s/1
  # DELETE /post450s/1.xml
  def destroy
    @post450 = Post450.find(params[:id])
    @post450.destroy

    respond_to do |format|
      format.html { redirect_to(post450s_url) }
      format.xml  { head :ok }
    end
  end
end
