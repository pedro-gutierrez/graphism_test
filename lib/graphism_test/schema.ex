defmodule GraphismTest.Schema do
  use Graphism, repo: GraphismTest.Repo

  deny()

  role([:current_user, :roles])

  scope :is_premium do
    "premium" == true
  end

  scope :is_free do
    "premium" == false
  end

  scope :is_released do
    "released" == true
  end

  scope :is_paid do
    "paid" == true
  end

  scope :is_premium_and_paid do
    all(:is_premium, :is_paid)
  end

  scope :visible_catalogs do
    all(
      :is_released,
      any(
        :is_free,
        :is_premium_and_paid
      )
    )
  end

  entity :catalog do
    unique(string(:name))
    slug(:name)
    boolean(:released)
    boolean(:premium)
    boolean(:paid)

    action :create do
      allow(:anonymous)
    end

    action :list do
      allow(:anonymous, scope(:visible_catalogs))
    end
  end
end
