class Post222sController < ApplicationController
  # GET /post222s
  # GET /post222s.xml
  def index
    @post222s = Post222.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post222s }
    end
  end

  # GET /post222s/1
  # GET /post222s/1.xml
  def show
    @post222 = Post222.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post222 }
    end
  end

  # GET /post222s/new
  # GET /post222s/new.xml
  def new
    @post222 = Post222.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post222 }
    end
  end

  # GET /post222s/1/edit
  def edit
    @post222 = Post222.find(params[:id])
  end

  # POST /post222s
  # POST /post222s.xml
  def create
    @post222 = Post222.new(params[:post222])

    respond_to do |format|
      if @post222.save
        format.html { redirect_to(@post222, :notice => 'Post222 was successfully created.') }
        format.xml  { render :xml => @post222, :status => :created, :location => @post222 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post222.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post222s/1
  # PUT /post222s/1.xml
  def update
    @post222 = Post222.find(params[:id])

    respond_to do |format|
      if @post222.update_attributes(params[:post222])
        format.html { redirect_to(@post222, :notice => 'Post222 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post222.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post222s/1
  # DELETE /post222s/1.xml
  def destroy
    @post222 = Post222.find(params[:id])
    @post222.destroy

    respond_to do |format|
      format.html { redirect_to(post222s_url) }
      format.xml  { head :ok }
    end
  end
end
