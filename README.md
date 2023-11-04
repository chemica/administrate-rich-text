# administrate-rich-text
> A plugin for Rails 7+ to allow the use of `ActionText` `rich_text_area` fields in [Administrate](https://github.com/thoughtbot/administrate).

`ActionTexct` is based on the [Trix](https://trix-editor.org) WYSIWYG editor.

The Administrate field is compatible with Rails [Active Storage](https://guides.rubyonrails.org/active_storage_overview.html), so Rails will seamlessly handle attachment storage in your Wysiwyg field.

## Install

Add `administrate-rich-text`to your `Gemfile`:

```ruby
gem 'administrate-rich-text'
```

Install:

```bash
$ bundle install
```

Add javascript and CSS files to the asset pipeline and manifest:

```bash
$ rails g admin:actiontext_assets
```

## Usage

Add an `ActionText` `rich_text_area` field to `app/dashboards/foo_dashboard.rb`:

```ruby
ATTRIBUTE_TYPES = {
  bar: Field::RichTextArea
}.freeze
```


