class Photo
  attr_reader :imagen, :image_path
  def initialize(imagen_path = './images/*')
    @imagen = Dir[imagen_path]
  end
end
