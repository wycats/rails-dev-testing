class Post495sController < ApplicationController
  # GET /post495s
  # GET /post495s.xml
  def index
    @post495s = Post495.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post495s }
    end
  end

  # GET /post495s/1
  # GET /post495s/1.xml
  def show
    @post495 = Post495.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post495 }
    end
  end

  # GET /post495s/new
  # GET /post495s/new.xml
  def new
    @post495 = Post495.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post495 }
    end
  end

  # GET /post495s/1/edit
  def edit
    @post495 = Post495.find(params[:id])
  end

  # POST /post495s
  # POST /post495s.xml
  def create
    @post495 = Post495.new(params[:post495])

    respond_to do |format|
      if @post495.save
        format.html { redirect_to(@post495, :notice => 'Post495 was successfully created.') }
        format.xml  { render :xml => @post495, :status => :created, :location => @post495 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post495.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post495s/1
  # PUT /post495s/1.xml
  def update
    @post495 = Post495.find(params[:id])

    respond_to do |format|
      if @post495.update_attributes(params[:post495])
        format.html { redirect_to(@post495, :notice => 'Post495 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post495.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post495s/1
  # DELETE /post495s/1.xml
  def destroy
    @post495 = Post495.find(params[:id])
    @post495.destroy

    respond_to do |format|
      format.html { redirect_to(post495s_url) }
      format.xml  { head :ok }
    end
  end
end
