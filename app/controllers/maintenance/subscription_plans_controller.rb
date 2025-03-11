module Maintenance
  class SubscriptionPlansController < BaseController
    before_action :set_subscription_plan, only: [:edit, :update, :destroy]

    def index
      @subscription_plans = SubscriptionPlan.all
    end

    def new
      @subscription_plan = SubscriptionPlan.new
    end

    def create
      @subscription_plan = SubscriptionPlan.build(subscription_plan_params)

      if @subscription_plan.save
        respond_to do |format|
          format.html { redirect_to maintenance_subscription_plans_path, notice: "subscription_plan was successfully created." }
          format.turbo_stream { flash.now[:notice] = "subscription plan was successfully created." }
        end
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @subscription_plan.update(subscription_plan_params)
        respond_to do |format|
          format.html { redirect_to maintenance_subscription_plans_path, notice: "subscription_plan was successfully updated." }
          format.turbo_stream { flash.now[:notice] = "subscription_plan was successfully updated." }
        end
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @subscription_plan.destroy

      respond_to do |format|
        format.html { redirect_to maintenance_subscription_plans_path, notice: "subscription_plan was successfully destroyed." }
        format.turbo_stream { flash.now[:notice] = "subscription_plan was successfully destroyed." }
      end
    end

    private

    def set_subscription_plan
      @subscription_plan = SubscriptionPlan.find(params[:id])
    end

    def subscription_plan_params
      params.require(:subscription_plan).permit(:name, :description, :price, :duration)
    end
  end
end
