class PortfoliosController < ApplicationController
  def index
    portfolios
  end

  def angular
    @portfolio_items = Portfolio.angular
  end

  def new
    @portfolio_item = Portfolio.new #  new instance of form is generated
    3.times { @portfolio_item.technologies.build }

  end

  def create
    @portfolio_items = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name] ))

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to  portfolios_path, notice: "portfolio was successfully created." }

      else
        format.html { render :new, status: :unprocessable_entity }

      end
    end
  end

  def edit
    portfolio
  end
  def update
    portfolio
    respond_to do |format|
      if @portfolio.update(params.require(:portfolio).permit(:title,:subtitle, :body))
        format.html { redirect_to portfolios_path, notice: " Blog was successfully updated." }

      else
        format.html { render :edit, status: :unprocessable_entity }

      end
    end
  end

  def show
    portfolio
  end
  def destroy
    portfolio #perform the lookup for the item

    portfolio.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: "Portfolios was successfully destroyed." }

    end
  end

  private
  def portfolio
    @portfolio ||= Portfolio.find(params[:id])
  end

  def portfolios
    @portfolios ||= Portfolio.includes(:technologies)
  end
end
