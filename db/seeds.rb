require "open-uri"

Booking.destroy_all
Outfit.destroy_all

puts "Starting seeding"

file1 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/ivory-wedding-dress-2.jpeg')
outfit1 = Outfit.create(title: 'Embroidered Wedding Dress',
                        description: "Maya Bridal embroidered puff sleeve maxi dress in ivory.
                        Details : Aisle approved, Boat neck, Puff sleeves, Button closure, Button placket to reverse,
                        Floral embroidery, Regular fit.",
                        category: 'WEDDING',
                        size: 'L',
                        price_per_day: 2000,
                        user: User.last
                        )
outfit1.photo.attach(io: file1, filename: 'embroided-wedding-dress', content_type: 'image/png')

puts "Outfit 1 created !"

file2 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/ivory-wedding-dress.jpeg')
outfit2 = Outfit.create(title: 'Embellished Corset Wedding Dress',
                        description: "Esme embellished corset cami wedding dress with full skirt in ivory.
                        Details : Sweetheart neck, Adjustable straps, Corset top, Zip-back fastening, Regular fit.",
                        category: 'WEDDING',
                        size: 'S',
                        price_per_day: 2500,
                        user: User.last
                      )
outfit2.photo.attach(io: file2, filename: 'corset-wedding-dress', content_type: 'image/png')

puts "Outfit 2 created !"

file3 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/White-wedding-dress.jpeg')
outfit3 = Outfit.create(title: 'Beaded Wedding Dress',
                        description: "Neve placement embroidered and beaded cami wedding dress in ivory.
                        Details : Aisle approved, V-neck, Fixed straps, Deep V-back, Zip-back fastening, Regular fit",
                        category: 'WEDDING',
                        size: 'M',
                        price_per_day: 2250,
                        user: User.last
                      )
outfit3.photo.attach(io: file3, filename: 'beaded-wedding-dress', content_type: 'image/png')

puts "Outfit 3 created !"

file4 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/White-wedding-dress-2.jpeg')
outfit4 = Outfit.create(title: "Blouson Wedding Dress",
                        description: "Elsie embroidered and beaded blouson sleeve maxi wedding dress with
                        tie back in ivory.
                        Details : Aisle approved, All-over floral embroidery, Crew neck, Blouson sleeves, Tie back,
                        Bead embellishment, Regular fit",
                        category: 'WEDDING',
                        size: 'XL',
                        price_per_day: 1750,
                        user: User.last
                        )
outfit4.photo.attach(io: file4, filename: 'blouson-wedding-dress', content_type: 'image/png')

puts "Outfit 4 created !"

file5 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/ivory-wedding-dress-3.jpeg')
outfit5 = Outfit.create(title: "Sculpted Off Shoulder Wedding Dress",
                        description: "Maeve sculpted off shoulder wedding dress in ivory.
                        Details : Aisle approved, Sculpted design, Off-shoulder style, Zip-back fastening,
                        High-low hem, Regular fit",
                        category: 'WEDDING',
                        size: 'XS',
                        price_per_day: 2750,
                        user: User.last
                        )
outfit5.photo.attach(io: file5, filename: 'off-shoulder-wedding-dress', content_type: 'image/png')

puts "Outfit 5 created !"

file6 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/red-formal-dress.jpeg')
outfit6 = Outfit.create(title: "Red Formal Dress With Drape Detail",
                        description: "Satin cami maxi dress with drape detail in red.
                        Details : Dress casual? No thanks, V-neck, Cami straps, Drape detail, Thigh slit,
                        Zip-side closure, Regular fit",
                        category: 'FORMAL-OUTFIT',
                        size: 'XS',
                        price_per_day: 1500,
                        user: User.last
                        )
outfit6.photo.attach(io: file6, filename: 'red-formal-dress', content_type: 'image/png')

puts "Outfit 6 created !"

file7 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/tuxedo-blue-2.jpeg')
outfit7 = Outfit.create(title: "Slim Tuxedo Suit In Navy",
                        description: "Slim tuxedo in navy.
                        Contrast-colored lapels add a bold accent to this Perry Ellis tuxedo jacket, for a suave look
                        that will stand out from the pack. The men’s dinner jacket is crafted from a textured fabric
                        that contrasts beautifully with smooth, crisp button-down shirts. A chest pocket and two
                        flap-closed pockets at the front provide space to accessorize or store small essentials.",
                        category: 'FORMAL-OUTFIT',
                        size: 'M',
                        price_per_day: 2000,
                        user: User.last
                        )
outfit7.photo.attach(io: file7, filename: 'blue-formal-tuxedo', content_type: 'image/png')

puts "Outfit 7 created !"

file8 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/green-formal-dress.jpeg')
outfit8 = Outfit.create(title: "Sage Formal Dress With Lace Up Back",
                        description: "Bridesmaid bias cut maxi dress with lace up back detail in sage.
                        Details : Love at first scroll, Cowl neck,Wide straps, Tie back, Regular fit",
                        category: 'FORMAL-OUTFIT',
                        size: 'M',
                        price_per_day: 1750,
                        user: User.last
                        )
outfit8.photo.attach(io: file8, filename: 'sage-formal-dress', content_type: 'image/png')

puts "Outfit 8 created !"

file9 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/tuxedo-blue.jpeg')
outfit9 = Outfit.create(title: "Skinny Tuxedo Suit In Navy",
                        description: "Noak 'Verona' skinny tuxedo suit with satin side stripe in navy.
                        Update your formal attire with this men’s tuxedo jacket from Perry Ellis. The men’s jacket
                        offers a sleek skinny fit, and the fabric has added stretch to help you move comfortably in
                        it throughout the day. The material is constructed with a tight plain weave pattern that
                        stands up well to regular wear, so you can count on it to last through season after season.
                        Details like contrast-colored lapels, three pockets and button closure complete the
                        sophisticated design.",
                        category: 'FORMAL-OUTFIT',
                        size: 'L',
                        price_per_day: 2250,
                        user: User.last
                        )
outfit9.photo.attach(io: file9, filename: 'blue-formal-tuxedo2', content_type: 'image/png')

puts "Outfit 9 created !"

file10 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/yellow-formal-dress.jpeg')
outfit10 = Outfit.create(title: "Mustard Formal Dress With Open Back",
                         description: "Embroidered bodice satin bias midi dress with open back in mustard.
                         Details : All other dresses can go home,Embroidered bodice, Fixed straps, Cut-out panel,
                         Button and zip-back fastening, Side slit, Regular fit",
                         category: 'FORMAL-OUTFIT',
                         size: 'L',
                         price_per_day: 1900,
                         user: User.last
                        )
outfit10.photo.attach(io: file10, filename: 'yellow-formal-dress', content_type: 'image/png')

puts "Outfit 10 created !"

file11 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/women-gryffindor-costume-e1685278769696.jpeg')
outfit11 = Outfit.create(title: "Woman Gryffindor Quidditch Costume",
                         description: "Adult Gryffindor Quidditch Costume - Harry Potter.
                         This athleisure-inspired Gryffindor set is the perfect way to get dressed for your next
                         Quidditch match. The sleeveless top and high-waisted leggings are made of a stretchy
                         fabric that moves with you, and the hooded robe offers coverage from the elements. Take
                         a flash photo of each of the Gryffindor crests to reveal the reflective effect!",
                         category: 'PARTY-COSTUME',
                         size: 'S',
                         price_per_day: 600,
                         user: User.last
                        )
outfit11.photo.attach(io: file11, filename: 'woman-party-dress', content_type: 'image/png')

puts "Outfit 11 created !"

file12 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/men-pirate-costume-e1685278912138.jpeg')
outfit12 = Outfit.create(title: "Man Pirate Marauder Costume",
                         description: "Adult Pirate Marauder Costume.
                         Land ho, me mateys! Seize the chance to pillage and plunder as a Pirate Marauder. With the
                         look of high seas adventure, this costume features a black and red striped tunic with a
                         sewn-in white collared shirt, tattered black pants, a black waist sash, and a black
                         headscarf.",
                         category: 'PARTY-COSTUME',
                         size: 'L',
                         price_per_day: 500,
                         user: User.last
                        )
outfit12.photo.attach(io: file12, filename: 'man-party-dress', content_type: 'image/png')

puts "Outfit 12 created !"

file13 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/girl-mermaid-costume-e1685278845315.jpeg')
outfit13 = Outfit.create(title: "Girl Mermaid Costume (Ariel)",
                         description: "Kids' Ariel Costume - The Little Mermaid Movie 2023.
                         Your child is ready for their under-the-sea adventure as Ariel from Disney's
                         live-action movie The Little Mermaid. This blue, green, and violet ombre dress features a
                         scalloped, fish-scale design and a layered mesh fishtail hem for a magical mermaid look.
                         Shoulder straps comfortably support the dress, and the skirt allows plenty of room to run
                         and play.",
                         category: 'PARTY-COSTUME',
                         size: '6-10 years',
                         price_per_day: 300,
                         user: User.last
                        )
outfit13.photo.attach(io: file13, filename: 'girl-party-dress', content_type: 'image/png')

puts "Outfit 13 created !"

file14 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/boy-iron-man-costume-e1685278880205.jpeg')
outfit14 = Outfit.create(title: "Boy Iron Man Costume (Marvel)",
                         description: "Kids' Iron Man Costume - Marvel.
                         Your child is ready for their under-the-sea adventure as Ariel from Disney's live-action movie
                         The Little Mermaid. This blue, green, and violet ombre dress features a scalloped, fish-scale
                         design and a layered mesh fishtail hem for a magical mermaid look. Shoulder straps comfortably
                          support the dress, and the skirt allows plenty of room to run and play.",
                         category: 'PARTY-COSTUME',
                         size: '10-12 years',
                         price_per_day: 250,
                         user: User.last
                        )
outfit14.photo.attach(io: file14, filename: 'boy-party-dress', content_type: 'image/png')

puts "Outfit 14 created !"

file15 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/05/dog-gryffindor-costume-e1685278987665.jpeg')
outfit15 = Outfit.create(title: "Gryffindor Dog Hoodie Costume",
                         description: "Gryffindor Dog Hoodie Costume - Harry Potter.
                         Get your doggy in on the Halloween fun by dressing them in Gryffindor swag! This officially
                         licensed pet hoodie features a printed red and gold scarf and the house crest on the back.",
                         category: 'PARTY-COSTUME',
                         size: 'Small dog',
                         price_per_day: 150,
                         user: User.last
                        )
outfit15.photo.attach(io: file15, filename: 'dog-party-dress', content_type: 'image/png')

puts "Outfit 15 created !"

puts "Seed Completed"
