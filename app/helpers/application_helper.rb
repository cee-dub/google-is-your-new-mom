# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  AnalyticsEnvironments = Set.new %w( production express )
  def analytics
    render :file => 'layouts/analytics.html' if AnalyticsEnvironments.include? Rails.env
  end
  
  def colored_google
    '<b class="g">G</b><b class="o1">o</b><b class="o2">o</b><b class="g">g</b><b class="l">l</b><b class="e">e</b>'
  end
  
  def blur_links
    javascript_tag do <<-JS
        var links = document.getElementsByTagName('a');
        for (var i = links.length - 1; i >= 0; i--){ var link = links[i]; link.onclick = function() { link.blur(); } };
      JS
    end
  end
end
