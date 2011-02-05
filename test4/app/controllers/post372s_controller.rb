class Post372sController < ApplicationController
  # GET /post372s
  # GET /post372s.xml
  def index
    @post372s = Post372.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post372s }
    end
  end

  # GET /post372s/1
  # GET /post372s/1.xml
  def show
    @post372 = Post372.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post372 }
    end
  end

  # GET /post372s/new
  # GET /post372s/new.xml
  def new
    @post372 = Post372.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post372 }
    end
  end

  # GET /post372s/1/edit
  def edit
    @post372 = Post372.find(params[:id])
  end

  # POST /post372s
  # POST /post372s.xml
  def create
    @post372 = Post372.new(params[:post372])

    respond_to do |format|
      if @post372.save
        format.html { redirect_to(@post372, :notice => 'Post372 was successfully created.') }
        format.xml  { render :xml => @post372, :status => :created, :location => @post372 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post372.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post372s/1
  # PUT /post372s/1.xml
  def update
    @post372 = Post372.find(params[:id])

    respond_to do |format|
      if @post372.update_attributes(params[:post372])
        format.html { redirect_to(@post372, :notice => 'Post372 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post372.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post372s/1
  # DELETE /post372s/1.xml
  def destroy
    @post372 = Post372.find(params[:id])
    @post372.destroy

    respond_to do |format|
      format.html { redirect_to(post372s_url) }
      format.xml  { head :ok }
    end
  end
end
