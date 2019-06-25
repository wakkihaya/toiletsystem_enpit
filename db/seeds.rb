# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Toilet.create({name: '3A', comment: 'うんちぶりぶり',})
Toilet.create({name: '3C', comment: 'うんちおせち',})

Toilet.create({name: '3A', comment: 'aiueo',})
Toilet.create({name: '3C', comment: 'やまだ',})


# placeの初期設定
Place.create({
        name: '3A',
        latitude: '36.11061',
        longitude: '140.10064',
        num: '4',
         }
)


Place.create({
                name: '3C',
                latitude: '36.11023',
                longitude: '140.10034',
                num: '4',
            }
)