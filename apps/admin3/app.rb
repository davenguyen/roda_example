module Admin3
  class App < Roda
    opts[:root] = File.expand_path(File.dirname(__FILE__))

    plugin :render,
      #check_paths: true, # this won't work now
      layout_opts: { views: 'apps/admin3/views/layouts' }

    route do |r|
      r.root do
        view :index
      end
    end
  end
end
