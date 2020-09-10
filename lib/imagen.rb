class Photo
  attr_reader :imagen, :image_path
  def initialize(imagen_path = '../images/*', _imagen = nil)
    @imagen = Dir[imagen_path]
  end
end
