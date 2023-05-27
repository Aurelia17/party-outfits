require "open-uri"

Booking.destroy_all
Outfit.destroy_all

puts "Starting seeding"

file1 = URI.open('https://images.asos-media.com/products/asos-edition-satin-ruched-halter-neck-maxi-dress-in-petrol-blue/200334101-1-petrolblue?$n_240w$&wid=40&fit=constrain 40w,https://images.asos-media.com/products/asos-edition-satin-ruched-halter-neck-maxi-dress-in-petrol-blue/200334101-1-petrolblue?$n_240w$&wid=75&fit=constrain 75w,https://images.asos-media.com/products/asos-edition-satin-ruched-halter-neck-maxi-dress-in-petrol-blue/200334101-1-petrolblue?$n_240w$&wid=120&fit=constrain 120w,https://images.asos-media.com/products/asos-edition-satin-ruched-halter-neck-maxi-dress-in-petrol-blue/200334101-1-petrolblue?$n_240w$&wid=168&fit=constrain 168w,https://images.asos-media.com/products/asos-edition-satin-ruched-halter-neck-maxi-dress-in-petrol-blue/200334101-1-petrolblue?$n_320w$&wid=317&fit=constrain 317w')
outfit1 = Outfit.create(title: 'Satin dress',
                        description: "Turn up and stand out in occasionwear that's as unique as you. With luxe
                        attention to detail, ASOS Edition is designed for the most memorable moments of your life.
                         Think dresses, matching sets and accessories – also available in our ASOS Curve fit range
                         – and, of course, our beautiful ASOS EDITION Bridal Collection, which will have you dancing
                          before the party's even begun. All dressed up with everywhere to go.",
                        category: 'FORMAL-OUTFIT',
                        size: 'M',
                        price_per_day: 300,
                        user: User.last
                        )
outfit1.photo.attach(io: file1, filename: 'Gala dress', content_type: 'image/png')

file2 = URI.open('https://images.asos-media.com/groups/topman-skinny-tuxedo-suit-in-black/117321-group-1?$n_240w$&wid=40&fit=constrain 40w,https://images.asos-media.com/groups/topman-skinny-tuxedo-suit-in-black/117321-group-1?$n_240w$&wid=75&fit=constrain 75w,https://images.asos-media.com/groups/topman-skinny-tuxedo-suit-in-black/117321-group-1?$n_240w$&wid=120&fit=constrain 120w,https://images.asos-media.com/groups/topman-skinny-tuxedo-suit-in-black/117321-group-1?$n_240w$&wid=168&fit=constrain 168w,https://images.asos-media.com/groups/topman-skinny-tuxedo-suit-in-black/117321-group-1?$n_320w$&wid=317&fit=constrain 317w')
outfit2 = Outfit.create(title: 'Black Tuxedo',
                        description: 'Our navy stretch blazer is crafted from a performance fabric blend that is
                        extremely stretchy while still providing an incredibly professional appearance. They are
                        lined with our dress shirt fabric making them lightweight, breathable and moisture-wicking.
                         It also features our signature athletic fit that rewards those with an athletic physique.',
                        category: 'FORMAL-OUTFIT',
                        size: 'L',
                        price_per_day: 400,
                        user: User.last
                      )
outfit2.photo.attach(io: file2, filename: 'Tuxedo', content_type: 'image/png')

file3 = URI.open('https://images.unsplash.com/photo-1585241920473-b472eb9ffbae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80')
outfit3 = Outfit.create(title: 'Wedding Dress',
                        description: 'Color: White Style: Boho Pattern Type: Floral Details: Ruffle, Corset, Lace Up,
                        Zipper, Ruched Bust Neckline: Sweetheart Type: A Line Sleeve Length: Long Sleeve Sleeve
                        Type: Flounce Sleeve Waist Line: High Waist Hem Shaped: Flared Length: Short Fit Type:
                        Regular Fit Fabric: Slight Stretch Material: Woven Fabric Composition: 95% Polyester,
                        5% Elastane Care Instructions: Machine wash or professional dry clean Sheer: No',
                        category: 'WEDDING',
                        size: 'S',
                        price_per_day: 600,
                        user: User.last
                      )
outfit3.photo.attach(io: file3, filename: 'wedding-dress', content_type: 'image/png')

file4 = URI.open('https://images.halloweencostumes.com/products/82164/1-2/womens-venus-costume.jpg')
outfit4 = Outfit.create(title: "Venus Costume",
                        description: "Great budget friendly children's tiger costume. We also do a baby tiger for tiny
                        children, absolutely perfect if you want your two children to dress up in similar costumes.
                        The orange and black striped onesie costume is very soft and comfy to wear and with detailed
                        printed character hood.  The outfit comes complete with a tail",
                        category: 'PARTY-COSTUME',
                        size: 'XS',
                        price_per_day: 150,
                        user: User.last
                        )
outfit4.photo.attach(io: file4, filename: 'tiger', content_type: 'image/png')

puts "Seed Completed"
