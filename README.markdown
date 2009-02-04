GoogleAdSense
=============

When you install the plugin you will end up with a google_ad_sense.yml file in
your config directory.  You can change all the parameters here.

Available options are,

<dl>

	<dt>ad_client</dt>
		<dd>The special identifier given to you by google, you can find this under "My Account" in your Google AdSense login. (required)</dd>
	<dt>format</dt>
		<dd>How the ad will be displayed. The different formats are listed in `formats` (required)</dd>
	<dt>type</dt>
		<dd>Whether the ad shown is a "Ad Unit" or a "Link Unit". Specificied with `ad` or `link` respectively. (required)</dd>
	<dt>image</dt>
		<dd>Whether to use images for this ad. (optional)</dd>
	<dt>text</dt>
		<dd>Whether to use text for this ad. (optional)</dd>
	<dt>colors</dt>
		<dd>The different colors you can use to customer the ad. (optional)</dd>
	<dt>width</dt>
		<dd>The width of the ad. (optional)</dd>
	<dt>height</dt>
		<dd>The height of the ad. (optional)</dd>
	<dt>ads_per_unit</dt>
		<dd>The number of ads per unit, only used by a "Link Unit" ad.</dd>
	<dt>formats</dt>
		<dd>The formats that I've coded in, you can add more if you want.</dd>

</dl>

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
