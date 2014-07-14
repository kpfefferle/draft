module CommonStepHelpers

  def have_link_to_path(path)
    have_selector "a[href^='#{path}']"
  end

  def current_path
    URI.parse(current_url).path
  end
end

World(CommonStepHelpers)
