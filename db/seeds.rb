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

Place.create({
                 name: '3B',
                 latitude: '36.11108',
                 longitude: '140.10030',
                 num: '2',
             }
)

Place.create({
                 name: '3D',
                 latitude: '36.11002',
                 longitude: '140.09983',
                 num: '3',
             }
)

Place.create({
                 name: '3E',
                 latitude: '36.11000',
                 longitude: '140.09994',
                 num: '3',
             }
)

Place.create({
                 name: '2D',
                 latitude: '36.11174',
                 longitude: '140.10063',
                 num: '4',
             }
)

Place.create({
                 name: '2C',
                 latitude: '36.11136',
                 longitude: '140.10098',
                 num: '4',
             }
)

Place.create({
                 name: '2B',
                 latitude: '36.11095',
                 longitude: '140.10126',
                 num: '4',
             }
)

Place.create({
                 name: '中央図書館',
                 latitude: '36.10916',
                 longitude: '140.10122',
                 num: '2',
             }
)

