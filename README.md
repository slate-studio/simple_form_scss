# Simple Form SCSS

CSS styling helpers for [Simple Form](https://github.com/plataformatec/simple_form).

![Simple Form SCSS Demo](http://character.s3.amazonaws.com/simple_form_demo.png)

## Setup

Add gem to ```Gemfile```:

    gem 'simple_form_scss'

Include and configure form styles in ```application.scss```:

    @import "simple_form_scss";

    .simple_form {
      $font_size:           12px;
      $color:               #474a4c;
      $max_width:           58em;
      $label_color:         #a1a7b2;
      $error_color:         #bc3737;
      $input_border_color:  #e6e9f0;
      $input_focus_color:   #6dd2f2;
      $button_color:        #9ca1ab;
      $button_border_color: #d1d6e0;
      $button_hover_color:  #1fc776;

      @include simple_form( $font_size,
                            $color,
                            $max_width,
                            $label_color,
                            $error_color,
                            $input_border_color,
                            $input_focus_color,
                            $button_color,
                            $button_border_color,
                            $button_hover_color );
    }

## Custom Types

### Image

    <% if @object.has_avatar? %>
      <div class='input image'>
        <%= f.input :avatar %>
        <%= f.input :remove_avatar, as: :boolean, label: 'Remove avatar' %>
        <%= image_tag @object.avatar.thumb.url %>
      </div>
    <% else %>
      <%= f.input :avatar, as: :file %>
    <% end %>

### File Link

    <div class='input file-link'>
      <label class='file optional'>File Link</label>
      <%= link_to f.object.file.url, f.object.file.url, target: '_blank' %>
      <%= f.input :file, as: :file, label: false %>
    </div>

### Nested Images

    <div class='nested_form sortable images'>
      <%= f.fields_for :images do |ff| %>
        <%= ff.link_to_remove "Remove" %>
        <%= image_tag ff.object.image.chr_list_thumbnail.url %>
        <%= ff.input :title, placeholder: 'Image title' %>
        <%= ff.input :image %>
        <%= ff.input :_position, as: :hidden %>
      <% end %>
      <%= f.link_to_add "Add an Image", :images %>
    </div>

## Author

Alexander Kravets @ [Slate Studio](http://www.slatestudio.com)

## License

MIT