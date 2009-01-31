require File.dirname(__FILE__) + '/spec_helper'
include GoogleAdSenseHelper

# setup the view environment for the helper tests
require 'action_view/helpers'
include ActionView::Helpers

describe "helper" do
  it "should produce the default google ad" do
    google_ad.should eql(%q(<script type="text/javascript">
//<![CDATA[
google_ad_width='728';google_ad_height='90';google_ad_type='text_image';google_ad_client='';
//]]>
</script><script src="http://pagead2.googlesyndication.com/pagead/show_ads.js" type="text/javascript"></script>))
  end

  it "should produce a custom google ad" do
    google_ad(:banner).should eql(%q(<script type="text/javascript">
//<![CDATA[
google_ad_width='468';google_ad_height='60';google_ad_type='text_image';google_ad_client='';
//]]>
</script><script src="http://pagead2.googlesyndication.com/pagead/show_ads.js" type="text/javascript"></script>))
  end

  it "shouldn't care if you use string or symbol" do
    google_ad('banner').should eql(google_ad(:banner))
  end
end
