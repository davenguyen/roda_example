module Admin1
  class App < Roda
    plugin :render,
      layout_opts: { views: 'apps/admin1/views/layouts' },
      views: 'apps/admin1/views'

    route do |r|
      r.root do
        view :index
      end
    end
  end
end
