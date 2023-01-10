Post.destroy_all

20.times do |i|
    title = Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4)

    Post.create({
        title: title,        
        content: [
                Faker::Lorem.paragraph(sentence_count: 40),
                Faker::Lorem.paragraph(sentence_count: 24)
            ].join('<br/><br/>')
    })
end