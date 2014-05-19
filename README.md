# Simple Form SCSS

CSS styling helpers for [Simple Form](https://github.com/plataformatec/simple_form).

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