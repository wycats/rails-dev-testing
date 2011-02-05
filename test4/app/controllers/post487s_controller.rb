class Post487sController < ApplicationController
  # GET /post487s
  # GET /post487s.xml
  def index
    @post487s = Post487.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post487s }
    end
  end

  # GET /post487s/1
  # GET /post487s/1.xml
  def show
    @post487 = Post487.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post487 }
    end
  end

  # GET /post487s/new
  # GET /post487s/new.xml
  def new
    @post487 = Post487.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post487 }
    end
  end

  # GET /post487s/1/edit
  def edit
    @post487 = Post487.find(params[:id])
  end

  # POST /post487s
  # POST /post487s.xml
  def create
    @post487 = Post487.new(params[:post487])

    respond_to do |format|
      if @post487.save
        format.html { redirect_to(@post487, :notice => 'Post487 was successfully created.') }
        format.xml  { render :xml => @post487, :status => :created, :location => @post487 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post487.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post487s/1
  # PUT /post487s/1.xml
  def update
    @post487 = Post487.find(params[:id])

    respond_to do |format|
      if @post487.update_attributes(params[:post487])
        format.html { redirect_to(@post487, :notice => 'Post487 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post487.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post487s/1
  # DELETE /post487s/1.xml
  def destroy
    @post487 = Post487.find(params[:id])
    @post487.destroy

    respond_to do |format|
      format.html { redirect_to(post487s_url) }
      format.xml  { head :ok }
    end
  end
end
