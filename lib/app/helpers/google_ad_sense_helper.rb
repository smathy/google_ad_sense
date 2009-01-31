module GoogleAdSenseHelper

  require 'yaml'
  @@config = YAML.load_file(File.join(RAILS_ROOT, %w/config google_ad_sense.yml/))['config']

  # :ad_client, :colors, :type, :format, :text, :image, :width, :height, :ad_per_unit

  def google_ad(ad_format = @@config['format'])
    js_options = {}
    ad_format = ad_format.to_s
    
    # public ad client number
    js_options[:ad_client] = @@config['ad_client']

    # work out the colors to be used
    @@config['colors'] ||= {}    
    @@config['colors'].keys.each{|color_type| js_options["color_#{color_type}".to_sym] = @@config['colors'][color_type]}
    
    # work out the format of the ad to be used
    case @@config['type']
    when :ad
      js_options[:ad_format] = "#{@@config['formats'][ad_format]}_as"
    when :link
      js_options[:ad_format] = "#{@@config['formats'][ad_format]}_0ads_al"
      js_options[:ad_format] += "_s" if @@config['ads_per_unit'] == 5
    end

    @@config['text']  = true if @@config['text'].nil?
    @@config['image'] = true if @@config['image'].nil?
    
    # work out ad type (image or text)
    ad_type = []
    ad_type << "text"  if @@config['text']
    ad_type << "image" if @@config['image']
    js_options[:ad_type] = ad_type.join("_")
    
    # work out size from format
    size = @@config['formats'][ad_format].split('x')
    js_options[:ad_width] = @@config['width'].blank? ? size[0] : @@config['width']
    js_options[:ad_height] = @@config['height'].blank? ? size[1] : @@config['height']
    
    # work out the js code for the ad
    javascript_tag(js_options.keys.collect{|key| "google_#{key}='#{js_options[key]}';"}.join) +
    javascript_include_tag("http://pagead2.googlesyndication.com/pagead/show_ads.js")
  end
end
