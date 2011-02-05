class Post331sController < ApplicationController
  # GET /post331s
  # GET /post331s.xml
  def index
    @post331s = Post331.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post331s }
    end
  end

  # GET /post331s/1
  # GET /post331s/1.xml
  def show
    @post331 = Post331.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post331 }
    end
  end

  # GET /post331s/new
  # GET /post331s/new.xml
  def new
    @post331 = Post331.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post331 }
    end
  end

  # GET /post331s/1/edit
  def edit
    @post331 = Post331.find(params[:id])
  end

  # POST /post331s
  # POST /post331s.xml
  def create
    @post331 = Post331.new(params[:post331])

    respond_to do |format|
      if @post331.save
        format.html { redirect_to(@post331, :notice => 'Post331 was successfully created.') }
        format.xml  { render :xml => @post331, :status => :created, :location => @post331 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post331.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post331s/1
  # PUT /post331s/1.xml
  def update
    @post331 = Post331.find(params[:id])

    respond_to do |format|
      if @post331.update_attributes(params[:post331])
        format.html { redirect_to(@post331, :notice => 'Post331 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post331.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post331s/1
  # DELETE /post331s/1.xml
  def destroy
    @post331 = Post331.find(params[:id])
    @post331.destroy

    respond_to do |format|
      format.html { redirect_to(post331s_url) }
      format.xml  { head :ok }
    end
  end
end
