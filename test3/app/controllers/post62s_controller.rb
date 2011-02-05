class Post62sController < ApplicationController
  # GET /post62s
  # GET /post62s.xml
  def index
    @post62s = Post62.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post62s }
    end
  end

  # GET /post62s/1
  # GET /post62s/1.xml
  def show
    @post62 = Post62.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post62 }
    end
  end

  # GET /post62s/new
  # GET /post62s/new.xml
  def new
    @post62 = Post62.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post62 }
    end
  end

  # GET /post62s/1/edit
  def edit
    @post62 = Post62.find(params[:id])
  end

  # POST /post62s
  # POST /post62s.xml
  def create
    @post62 = Post62.new(params[:post62])

    respond_to do |format|
      if @post62.save
        format.html { redirect_to(@post62, :notice => 'Post62 was successfully created.') }
        format.xml  { render :xml => @post62, :status => :created, :location => @post62 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post62.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post62s/1
  # PUT /post62s/1.xml
  def update
    @post62 = Post62.find(params[:id])

    respond_to do |format|
      if @post62.update_attributes(params[:post62])
        format.html { redirect_to(@post62, :notice => 'Post62 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post62.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post62s/1
  # DELETE /post62s/1.xml
  def destroy
    @post62 = Post62.find(params[:id])
    @post62.destroy

    respond_to do |format|
      format.html { redirect_to(post62s_url) }
      format.xml  { head :ok }
    end
  end
end
