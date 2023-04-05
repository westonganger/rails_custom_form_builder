# Rails Custom Form Builder

A good example/starter pack for a custom form builder for use with Rails `form_for`.

Aside from usage in normal Rails apps, custom form builders are also useful in creating Rails engines where customizing `simple_form` or another form gem dependency is not possible.

Currently the html classes/semantics are setup for Bootstrap 5, however it is designed to be generic and easy to modify to work with any CSS framework.

## Installation

- Copy the [`CustomFormBuilder` class](./helpers/custom_form_builder.rb) `app/helpers/` or wherever else you like
- Copy the [`custom_form_for` helper method](./helpers/application_helper.rb) to `app/helpers/application_helper.rb`
- Copy the [views](./views/) to `app/views/form_builder/`
- (Optional) Copy the [`Forms::Base` class](./forms/base.rb) to `app/lib/forms/` as it provides a very useful base class for forms that arent backed by an activerecord model. Provides required features for validations and some `form_for` requirements

## Usage

```erb
<%= custom_form_for(..., defaults: {view_mode: false, input_html: {}}) do |f| %>
  <%= f.field :my_text, type: :text %>
  <%= f.field :my_num, type: :number %>
  <%= f.field :my_date, type: :date %>
  <%= f.field :my_datetime_local, type: "datetime-local" %>
  <%= f.field :my_time, type: :time %>
  <%= f.field :my_textarea, type: :textarea %>
  <%= f.field :my_checkbox, type: :checkbox %>

  <%= f.field :my_select, type: :select, collection: [], selected: [], disabled: [], prompt: "Select...", include_blank: false, input_html: {multiple: true} %>

  <%= f.view_field :my_readonly_field, label: "Foo", value: "bar" %>

  <%=
    ### Showing all field options
    f.field(
      :my_text,
      type: :text,
      value: "foo",
      name: "bar",
      field_wrapper_html: {},
      label_wrapper_html: {},
      label_html: {},
      input_wrapper_html: {},
      input_html: {},
      required: true,
      required_text: "*",
      field_layout: :horizontal,
      #field_layout: :vertical,
    )
  %>
<% end %>
```

## Further documentation on custom `form_for` builders:
- https://www.brandnewbox.com/notes/2021/03/form-builders-in-ruby/
- https://api.rubyonrails.org/classes/ActionView/Helpers/FormBuilder.html

## Credits

Created & Maintained by [Weston Ganger](https://westonganger.com) - [@westonganger](https://github.com/westonganger)
