GoogleAdSense
=============

When you install the plugin you will end up with a google_ad_sense.yml file in
your config directory.  You can change all the parameters here.

Available options are,

    ad_client
        The special identifier given to you by google, you can find this under
        "My Account" in your Google AdSense login. (required)
    format
        How the ad will be displayed. The different formats are listed in
        `formats` (required)
    type
        Whether the ad shown is a "Ad Unit" or a "Link Unit". Specificied with
        `ad` or `link` respectively. (required)
    image
        Whether to use images for this ad. (optional)
    text
        Whether to use text for this ad. (optional)
    colors
        The different colors you can use to customer the ad. (optional)
    width
        The width of the ad. (optional)
    height
        The height of the ad. (optional)
    ads_per_unit
        The number of ads per unit, only used by a "Link Unit" ad.
    formats
        The formats that I've coded in, you can add more if you want.

The different formats available include:

    leader_board, banner, half_banner, skyscraper, wide_skyscraper,
    vertical_banner, large_rectangle, medium_rectangle,
    square, small_square, small_rectangle, button

And colors you can customise include:

    border, bg, link, text, url

Note: these colors need to be given as a hex value.

Once setup, you can add the Google AdSense ad to your views by using the helper method google_ad.
That is, something like this:

    <%= google_ad %>

This will add in the default format, ie. the one that is set in the `format` setting in the YAML file.

    <%= google_ad(:banner) %>

This will use the `banner` format settings from your `formats` array in the YAML file.

Copyright &copy; 2009 Jason King, released under the MIT license
