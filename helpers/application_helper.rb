module ApplicationHelper

  def custom_form_for(*args, **options, &block)
    options[:builder] = CustomFormBuilder
    if options.has_key?(:defaults)
      @_custom_form_for_defaults = options.delete(:defaults)
    end
    form_for(*args, options, &block)
  end

  def custom_fields_for(*args, **options, &block)
    options[:builder] = CustomFormBuilder
    if options.has_key?(:defaults)
      @_custom_form_for_defaults = options.delete(:defaults)
    end
    fields_for(*args, options, &block)
  end

end
