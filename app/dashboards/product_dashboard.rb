require "administrate/base_dashboard"

class ProductDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    baskets: Field::HasMany,
    categories: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    price: Field::Number.with_options(decimals: 2),
    quantity: Field::Number.with_options(decimals: 2),
    color: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    photo_file_name: Field::String,
    photo_content_type: Field::String,
    photo_file_size: Field::Number,
    photo_updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :baskets,
    :categories,
    :id,
    :name,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :baskets,
    :categories,
    :id,
    :name,
    :price,
    :quantity,
    :color,
    :created_at,
    :updated_at,
    :photo_file_name,
    :photo_content_type,
    :photo_file_size,
    :photo_updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :baskets,
    :categories,
    :name,
    :price,
    :quantity,
    :color,
    :photo_file_name,
    :photo_content_type,
    :photo_file_size,
    :photo_updated_at,
  ]

  # Overwrite this method to customize how products are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(product)
  #   "Product ##{product.id}"
  # end
end
