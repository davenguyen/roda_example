module Admin4
  class App < Roda
    opts[:root] = File.expand_path(File.dirname(__FILE__))

    plugin :render,
      check_paths: true,
      views: 'views/layouts'

    route do |r|
      r.root do
        view :index
      end
    end
  end
end
