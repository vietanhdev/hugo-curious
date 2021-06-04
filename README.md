# Hugo Curious

The official theme for [AICurious Blog](https://aicurious.io) based on [Hugo Clarity](https://github.com/vietanhdev/hugo-curious). See a live demo at **[hugo-curious.aicurious.io](hugo-curious.aicurious.io)** or **[aicurious.io](https://aicurious.io)**.

![Screenshot](images/screenshot.png)

## Features

* Blog with tagging and category options
* Deeplinks
* Native Image Lazy Loading
* Customizable (see config)
* Dark Mode (with UI controls for user preference setting)
* Toggleable table of contents
* Flexible image configuration
* Logo alignment
* Mobile support with configurable menu alignment
* Syntax Highlighting
* Rich code block functions
* Math typing using MathJax
* Auto TOC using tocbot
* Search page
* Contact form
* Subscription form

## Prerequisites

Firstly, __ensure you have installed the [extended version of Hugo](https://github.com/gohugoio/hugo/releases)__. See installation steps from [Hugo's official docs](https://gohugo.io/getting-started/installing/).

## Getting up and running

Read the [prerequisites](#prerequisites) above and verify you're using the extended version of Hugo.
### Option 1 (recommended)

Generate a new Hugo site and add this theme as a Git submodule inside your themes folder:

```bash
hugo new site yourSiteName
cd yourSiteName
git init
git submodule add https://github.com/vietanhdev/hugo-curious themes/hugo-curious
cp -a themes/hugo-curious/exampleSite/* .
```

Then run

```bash
hugo server
```

Hurray!

### Option 2 (Great for testing quickly)

You can run your site directly from the `exampleSite`. To do so, use the following commands:

```bash
git clone https://github.com/vietanhdev/hugo-curious themes/hugo-curious
cd hugo-curious/exampleSite/
hugo server --themesDir ../..
```

> Although, option 2 is great for quick testing, it is somewhat problematic when you want to update your theme. You would need to be careful not to overwrite your changes.

## Configuration

If set, jump over to the `config.toml` file and start [configuring](#configuration) your site.

This section will mainly cover settings that are unique to this theme. If something is not covered here (or elsewhere in this file), there's a good chance it is covered in [this Hugo docs page](https://gohugo.io/getting-started/configuration/#configuration-file).

### Global Parameters

These options set global values that some pages or all pages in the site use by default.

| Parameter | Value Type | Overridable on Page |
|:---- | ---- | ---- |
| author | string | no |
| twitter | string | no |
| largeTwitterCard | boolean | no |
| ga_analytics | string | no |
| baidu_analytics | string | no |
| plausible_analytics | boolean | no |
| description | string | yes |
| introDescription | string | no |
| introURL | string/false | no |
| numberOfTagsShown | integer | no |
| fallBackOgImage | file path (string) | no |
| codeMaxLines | integer | yes |
| codeLineNumbers | boolean | yes |
| mainSections | array/string | no |
| centerLogo | boolean | no |
| logo | file path (string) | no |
| iconsDir | dir path (string) | no |
| mobileNavigation | string | no |
| figurePositionShow | boolean | yes |
| customCSS | array of file path (string) | no |
| customJS | array of file path (string) | no |
| enforceLightMode | boolean | N/A |
| enforceDarkMode | boolean | N/A |
| titleSeparator| string | no |
| showShare | boolean | yes |
| comments | boolean | yes |
| numberOfRecentPosts | integer | no |
| numberOfFeaturedPosts | integer | no |
| dateFormat | string | no |
| enableMathNotation | boolean | yes |
| customFonts | boolean | no |
| since | integer | N/A |
| rss_summary | boolean | N/A |
| rss_summary_read_more_link | boolean | N/A |
| footerLogo | string | N/A |
| talkyardServerUrl | string | N/A |
| talkyardScriptUrl | string | N/A |
| contactFormSubmitUrl | string | N/A |
| mailChimpUrl | string | N/A |
### Page Parameters

These options can be set from a page [frontmatter](https://gohugo.io/content-management/front-matter#readout) or via [archetypes](https://gohugo.io/content-management/archetypes/#readout).

| Parameter | Value Type | Overrides Global |
|:---- | ---- | ---- |
| title | string | N/A |
| date | date | N/A |
| description | string | N/A |
| draft | boolean | N/A |
| featured | boolean | N/A |
| tags | array/string | N/A |
| categories | array/string | N/A |
| toc | boolean | N/A |
| thumbnail | file path (string) | N/A |
| featureImage | file path (string) | N/A |
| shareImage | file path (string) | N/A |
| codeMaxLines | integer | yes |
| codeLineNumbers | boolean | yes |
| comments | boolean | yes |
| enableMathNotation | boolean | yes |
| showDate | boolean | N/A |
| showShare | boolean | N/A |
| showReadTime | boolean | N/A |
| sidebar | boolean | N/A |
| singleColumn | boolean | N/A |
| math | boolean | no |

### Modify Menus

#### Main Menu

To add, remove, or reorganize top menu items, [edit the files here](https://github.com/vietanhdev/hugo-curious/tree/master/exampleSite/config/_default/menus). Specifically look for items with `[[main]]`.

If you prefer the more [traditional approach](https://gohugo.io/content-management/menus/#readout), delete `content\config` folder and enter a [main menu entry](https://gohugo.io/content-management/menus/#add-non-content-entries-to-a-menut) inside the `config.toml` file

#### Social media

To edit your social media profile links, edit the files referenced above. Specifically, look for items with `[[social]]`

If you wish to globally use a [large Twitter summary card](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/summary-card-with-large-image) when sharing posts, set the global parameter `largeTwitterCard` to `true`.

### Web site analytics

If using Google Analytics, configure the `ga_analytics` global parameter in your site with your ID.

If using Baidu Analytics, configure the `baidu_analytics` global parameter in your site with your ID.

If using Plausible Analytics, configure the `plausible_analytics` global parameters in your site with following.

`enable` To enable plausible analytics change to `true`.

`websiteDomain` Set domain name of your website, most cases same as your base URL this is required.

`plausibleDomain`  Default is set to plausible.io, this parameter is only required if plausible is self-hosted.

`scriptName`  Default is set to plausible, this parameter is only required if using a custom name for script.

### Blog directory

Edit `config.toml` and change the `mainSections` key. Values will be directories where the blogs reside.

```yaml
[params]
...
mainSections = ["posts", "docs", "blogs"]
...
```

For more info, see the [Hugo docs](https://gohugo.io/functions/where/#mainsections).

### Mobile menu positioning

The navigation menu when mobile browsing can be configured in `config.toml` to open right or left depending on preference. The "hamburger" menu icon will always display in the upper right hand corner regardless.

```yaml
[params]
...
mobileNavigation = "left" # Mobile nav menu will open to the left of the screen.
...
```

### Tags and Taxonomies

#### Show number of tags

The number of tags and taxonomies (including categories) that should be shown can be configured so that any more than this value will only be accessible when clicking the All Tags button. This is to ensure a large number of tags or categories can be easily managed without consuming excess screen real estate. Edit the `numberOfTagsShown` parameter and set accordingly.

```yaml
[params]
...
numberOfTagsShown = 14 # Applies for all other default & custom taxonomies. e.g categories, brands see https://gohugo.io/content-management/taxonomies#what-is-a-taxonomy
...
```

#### Number of tags example

![Tags](https://github.com/vietanhdev/hugo-curious/blob/master/images/tags.png)

#### Add classes to images

To add a class image to the left, append `::<classname>` to its alt text. You can also add multiple classes to an image separated by space. `::<classname1> <classname2>`.

#### Article thumbnail image

Blog articles can specify a thumbnail image which will be displayed to the left of the card on the home page. Thumbnails should be square (height:width ratio of `1:1`) and a suggested dimension of 150 x 150 pixels. They will be specified using a frontmatter variable as follows:

```yaml
...
thumbnail: "images/2020-04/capv-overview/thumbnail.jpg"
...
```

The thumbnail image will take precedence on opengraph share tags if the [shareImage](#share-image) parameter is not specified.

#### Article featured image

Each article can specify an image that appears at the top of the content. When sharing the blog article on social media, if a thumbnail is not specified, the featured image will be used as a fallback on opengraph share tags.

```yaml
...
featureImage: "images/2020-04/capv-overview/featured.jpg"
...
```

#### Share Image

Sometimes, you want to explicitly set the image that will be used in the preview when you share an article on social media. You can do so in the front matter.

```yaml
...
shareImage = "images/theImageToBeUsedOnShare.png"
...
```

Note that if a share image is not specified, the order of precedence that will be used to determine which image applies is `thumbnail` => `featureImage` => `fallbackOgImage`. When sharing a link to the home page address of the site (as opposed to a specific article), the `fallbackOgImage` will be used.

#### Align logo

You can left align or center your site's logo.

```yaml
...
centerLogo = true # Change to false to align left
...
```

If no logo is specified, the title of the site will appear in its place.

### Code

#### Display line numbers

Choose whether to display line numbers within a code block globally with the parameter `codeLineNumbers` setting to `true` or `false`.

```yaml
[params]
...
codeLineNumbers = true # Shows line numbers for all code blocks globally.
...
```

#### Limit code block height

You can globally control the number of lines which are displayed by default for your code blocks. Code which has the number of lines exceed this value will dynamically cause two code block expansion buttons to appear, allowing the user to expand to full length and contract. This is useful when sharing code or scripts with tens or hundreds of lines where you wish to control how many are displayed. Under params in `config.toml` file, add a value as follows:

```yaml
[params]
...
codeMaxLines = 10 # Maximum number of lines to be shown by default across all articles.
...
```

> If the value already exists, change it to the desired number. This will apply globally.

If you need more granular control, this parameter can be overridden at the blog article level. Add the same value to your article frontmatter as follows:

```yaml
...
codeMaxLines = 15 # Maximum number of lines to be shown in code blocks in this blog post.
...
```

If `codeMaxLines` is specified both in `config.toml` and in the article frontmatter, the value specified in the article frontmatter will apply to the given article. In the above example, the global default is `10` and yet the article value is `15` so code blocks in this article will auto-collapse after 15 lines.

If `codeMaxLines` is not specified anywhere, an internal default value of `100` will be assumed.

### Table of contents

Each article can optionally have a table of contents (TOC) generated for it based on top-level links. By configuring the `toc` parameter in the article frontmatter and setting it to `true`, a TOC will be generated only for that article. The TOC will then render under the featured image.

#### Table of contents (TOC) example

![Article table of contents](images/toc.png)

### Custom CSS and JS

To minimize HTTP requests per page, we would recommend loading CSS styles and JavaScript helpers in single bundles. That is to say, one CSS file and one JavaScript file. Using Hugo minify functions, these files will be minified to optimize the size.

Going by the above 👆🏻 reason, we recommend adding custom CSS and JS via these files:

1. [`_override.sass`](https://github.com/vietanhdev/hugo-curious/blob/master/assets/sass/_override.sass).
    This file should only be used to override sass & css variables e.g theme colors
2. [`_custom.sass`](https://github.com/vietanhdev/hugo-curious/blob/master/assets/sass/_custom.sass).
    This file should only be used to override everything else except sass & css variables.
3. [`custom.js`](https://github.com/vietanhdev/hugo-curious/blob/master/assets/js/custom.js).

> __Pro Tip__: Ensure that your changes are git trackable by creating these files outside the theme directory. That is, at the root level of your site's directory. See tree below.

```
├── yourSite
│   ├── archetypes
│   │   └── post.md
│   ├── assets
│   │   ├── js
│   │   │   └── custom.js
│   │   └── sass
│   │       ├── _custom.sass
│   │       └── _override.sass
│   ├── config
│   │   └── _default
│   │       ├── config.toml
│   │       ├── configTaxo.toml
│   │       ├── languages.toml
│   │       ├── markup.toml
│   │       ├── menus
│   │       │   ├── menu.en.toml
│   │       │   └── menu.pt.toml
│   │       └── params.toml
│   ├── content
│   │   ├── _index.md
```

However, sometimes you may need to load additional style or script files. In such cases, you can add custom `.css` and `.js` files by listing them in the `config.toml` file (see the snippet below). Similar to images, these paths should be relative to the `static` directory.

```yaml
[params]
...
customCSS = ["css/custom.css"] # Include custom CSS files
customJS = ["js/custom.js"] # Include custom JS files
...
```

### Forcing light or dark mode

By default, sites authored using Clarity will load in the browser with the user's system-wide settings. I.e., if the underlying OS is set to dark mode, the site will automatically load in dark mode. Regardless of the default mode, a UI control switch exists to override the theme mode at the user's discretion.

In order to override this behavior and force one mode or another, add either `enforceLightMode` or `enforceDarkMode` to your `config.toml` file. If neither value is present, add it.

To enforce Light Mode by default, turn `enforceLightMode`  to `true`.

To enforce Dark Mode by default, turn `enforceDarkMode`  to `true`

```yaml
[params]
...
enforceLightMode = true # Force the site to always load in light mode.
...
```

Please note that you cannot enforce both modes at the same time. It wouldn't make sense, would it?

> ⚠️ Please also note that the mode toggle UI will remain in place. That way, if a user prefers dark mode, they can have their way. The best of both worlds.

### I18N

This theme supports Multilingual (i18n / internationalization / translations)

The `exampleSite` gives you some examples already.
You may extend the multilingual functionality by following the [official documentation](https://gohugo.io/content-management/multilingual/).

Things to consider in multilingual:

* **supported languages** are configured in [config/_default/languages.toml](./exampleSite/config/_default/languages.toml)
* **add new language support** by creating a new file inside [i18n](./i18n/) directory.
  Check for missing translations using `hugo server --i18n-warnings`
* **taxonomy** names (tags, categories, etc...) are translated in [i18n](./i18n/) as well (translate the key)
* **menus** are translated manually in the config files [config/_default/menus/menu.xx.toml](./exampleSite/config/_default/menus/)
* **menu's languages list** are semi-hardcoded. You may chose another text for the menu entry with [languageMenuName](./exampleSite/config/config.toml). Please, do better and create a PR for that.
* **content** must be translated individually. Read the [official documentation](https://gohugo.io/content-management/multilingual/#translate-your-content) for information on how to do it.

**note:** if you do NOT want any translations (thus removing the translations menu entry), then you must not have any translations.
In the exampleSite that's as easy as removing the extra translations from the `config/_default/...` or executing this one-liner:

```sh
sed '/^\[pt]$/,$d' -i config/_default/languages.toml && rm config/_default/menus/menu.pt.toml
```

To change the values of translatable text, such as `read_more` or `copyright`, edit the values in the language file you are using in the [`i18n`](i18n) directory. If you have no such directory, copy the one inside the theme to your root Hugo directory.

### Hooks

Clarity provides some hooks for adding code on a page.

If you need to add some code (CSS import, HTML meta or similar) to the head section on every page, add a partial to your project:

```
layouts/partials/hooks/head-end.html
```

Similar, if you want to add some code right before the body end (e.g fonts' links), create your own version of the following file:

```
layouts/partials/hooks/body-end.html
```

### Comments

I replace the default comment system with Talkyard. Configure the comment system using following variables in `config.toml`.

```
talkyardServerUrl = ""
talkyardScriptUrl = ""
```
### Contact form

This theme use [formspree.io](https://formspree.io/) as the contact form service. Update `contactFormSubmitUrl` to your form URL.
### Subscription form

This theme use [MailChimp](https://mailchimp.com/) for the subscription form. Update `mailChimpUrl` to your MailChimp URL.
### MathJax

To write Math equation, put `math: true` in the frontmatter of each post to enable MathJax.
