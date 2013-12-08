module ApplicationHelper

  def date_format_js format=nil
    format ||= t('date.formats.default')
    format.gsub('%Y','yyyy').gsub('%m','mm').gsub('%d','dd')
  end

end
