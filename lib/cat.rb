class Cat
  attr_reader :cat_curiosities
  def initialize(_cat_curiosities = nil)
    @cat_curiosities = ['The oldest cat on record was Crème Puff from Austin,
                        Texas, who lived from 1967 to August 6, 2005, three days after her 38th birthday.',
                        'Cats spend nearly 1/3 of their waking hours cleaning themselves.',
                        'Cats do not actually meow at each other, just at humans. Cats typically will spit,
                         purr, and hiss at other cats.',
                        'On average, cats spend 2/3 of every day sleeping. That means a nine-year-old
                         cat has been awake for only three years of its life.',
                        'A cat’s hearing is better than a dog’s. And a cat can hear
                         high-frequency sounds up to two octaves higher than a human.',
                        'Cats make about 100 different sounds. Dogs make only about 10.',
                        'Researchers say your cat does know her name. She just doesn\'t care.',
                        'Cats can drink seawater.',
                        'A female cat is called a queen or a molly.',
                        'Cats are extremely sensitive to vibrations,
                        Cats are said to detect earthquake tremors 10 or 15 minutes before humans can']
  end
end
