class Cat
  attr_reader :cat_curiosities
  def initialize(cat_curiosities = nil)
    @cat_curiosities = ['The oldest cat on record was Crème Puff from Austin,
                        Texas, who lived 38 years.',
                        'Cats spend nearly 1/3 of their waking hours cleaning themselves.',
                        'Cats do not actually meow at each other, just at humans.',
                        'Cats typically will spit, purr, and hiss at other cats.',
                        'On average, cats spend 2/3 of every day sleeping.',
                        'A cat can hear sounds up to two octaves higher than a human.',
                        'Cats make about 100 different sounds. Dogs make only about 10.',
                        'Researchers say your cat does know her name. She just doesn\'t care.',
                        'Cats can drink seawater.',
                        'A female cat is called a queen or a molly.',
                        'Cats are said to detect earthquake tremors 10 or 15 minutes before humans can.']
  end
end
