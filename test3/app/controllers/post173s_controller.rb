class Post173sController < ApplicationController
  # GET /post173s
  # GET /post173s.xml
  def index
    @post173s = Post173.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post173s }
    end
  end

  # GET /post173s/1
  # GET /post173s/1.xml
  def show
    @post173 = Post173.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post173 }
    end
  end

  # GET /post173s/new
  # GET /post173s/new.xml
  def new
    @post173 = Post173.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post173 }
    end
  end

  # GET /post173s/1/edit
  def edit
    @post173 = Post173.find(params[:id])
  end

  # POST /post173s
  # POST /post173s.xml
  def create
    @post173 = Post173.new(params[:post173])

    respond_to do |format|
      if @post173.save
        format.html { redirect_to(@post173, :notice => 'Post173 was successfully created.') }
        format.xml  { render :xml => @post173, :status => :created, :location => @post173 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post173.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post173s/1
  # PUT /post173s/1.xml
  def update
    @post173 = Post173.find(params[:id])

    respond_to do |format|
      if @post173.update_attributes(params[:post173])
        format.html { redirect_to(@post173, :notice => 'Post173 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post173.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post173s/1
  # DELETE /post173s/1.xml
  def destroy
    @post173 = Post173.find(params[:id])
    @post173.destroy

    respond_to do |format|
      format.html { redirect_to(post173s_url) }
      format.xml  { head :ok }
    end
  end
end
