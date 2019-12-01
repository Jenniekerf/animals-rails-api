class AnimalSerializer < ActiveModel::Serializer

def initialize(animal: nil)
  @animal = animal
end

def serialize_new_animal()
  serialize_new_animal(@animal).to_json
end

private def serialize_animal(animal) {
  animal: {
    id: animal.id,
    animal_type: animal.animal_type,
    area: animal.area,
    description: animal.description,
    status: animal.status,
    image_url: animal.get_image_url()
  }
}

end

end
