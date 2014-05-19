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


### File Link

    <div class='input file-link'>
      <label class='file optional'>File Link</label>
      <%= link_to f.object.file.url, f.object.file.url, target: '_blank' %>
      <%= f.input :file, as: :file, label: false %>
    </div>