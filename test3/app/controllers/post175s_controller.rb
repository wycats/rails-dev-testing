class Post175sController < ApplicationController
  # GET /post175s
  # GET /post175s.xml
  def index
    @post175s = Post175.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post175s }
    end
  end

  # GET /post175s/1
  # GET /post175s/1.xml
  def show
    @post175 = Post175.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post175 }
    end
  end

  # GET /post175s/new
  # GET /post175s/new.xml
  def new
    @post175 = Post175.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post175 }
    end
  end

  # GET /post175s/1/edit
  def edit
    @post175 = Post175.find(params[:id])
  end

  # POST /post175s
  # POST /post175s.xml
  def create
    @post175 = Post175.new(params[:post175])

    respond_to do |format|
      if @post175.save
        format.html { redirect_to(@post175, :notice => 'Post175 was successfully created.') }
        format.xml  { render :xml => @post175, :status => :created, :location => @post175 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post175.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post175s/1
  # PUT /post175s/1.xml
  def update
    @post175 = Post175.find(params[:id])

    respond_to do |format|
      if @post175.update_attributes(params[:post175])
        format.html { redirect_to(@post175, :notice => 'Post175 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post175.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post175s/1
  # DELETE /post175s/1.xml
  def destroy
    @post175 = Post175.find(params[:id])
    @post175.destroy

    respond_to do |format|
      format.html { redirect_to(post175s_url) }
      format.xml  { head :ok }
    end
  end
end
