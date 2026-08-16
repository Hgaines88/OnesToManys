-- Preserve the complete curated archive assembled through the application UI.
-- Records are matched by stable natural keys so unrelated user-created IDs survive.

-- Normalize the earlier shortened record before syncing the curated profile.
UPDATE designers
SET full_name = 'Demna Gvasalia'
WHERE full_name = 'Demna'
  AND NOT EXISTS (
      SELECT 1 FROM designers WHERE full_name = 'Demna Gvasalia'
  );

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Sarah Burton', 'British', NULL, NULL, 'Fashion designer whose career includes work for Alexander McQueen and Givenchy.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Shayne Oliver', 'American', 1988, 'https://shayneoliver.com', 'American designer, creative director, and musician whose work across Hood By Air, Helmut Lang, Diesel, Longchamp, Colmar A.G.E., his eponymous practice, and Anonymous Club has reshaped the relationship between luxury fashion, streetwear, queer nightlife, music, performance, gender, and collective authorship.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Grace Wales Bonner', 'British-Jamaican', NULL, 'https://walesbonner.com', 'Founder of Wales Bonner, a label exploring European heritage and Afro-Atlantic cultural traditions.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Lee Alexander McQueen', 'British', NULL, 'https://www.alexandermcqueen.com', 'Founder of the McQueen house, known for innovative tailoring and theatrical presentations.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Jonathan Anderson', 'Northern Irish', NULL, 'https://jwanderson.com', 'Founder of JW Anderson whose career includes creative leadership at Loewe and Dior.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Demna Gvasalia', 'Georgian', NULL, NULL, 'Designer and co-founder of Vetements whose career includes creative leadership at Balenciaga and Gucci.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Virgil Abloh', 'American', NULL, NULL, 'Designer and founder of Off-White whose career includes creative leadership at Louis Vuitton.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Junya Watanabe', 'Japanese', 1961, NULL, 'Designer who began his career at Comme des Garçons and launched his namesake line within the house.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Miuccia Prada', 'Italian', NULL, NULL, 'Designer and creative director of Prada and Miu Miu.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Rei Kawakubo', 'Japanese', NULL, NULL, 'Designer and founder of Comme des Garçons.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Telfar Clemens', 'Liberian-American', 1985, 'https://telfar.net', 'Liberian-American designer Telfar Clemens founded his eponymous New York label in 2005, building a radically inclusive, unisex wardrobe around familiar American clothing. Across runway collections, performance-led presentations, democratic accessories, uniforms, sportswear, and collaborations, Telfar has made accessibility and community central to luxury fashion. His practice encompasses the long-running TELFAR main line, the Shopping Bag, White Castle uniforms and capsules, Liberia''s Olympic uniforms, and projects with UGG, Converse, and Moose Knuckles.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Rick Owens', 'American', 1962, 'https://www.rickowens.eu', 'California-born designer who founded his independent namesake label in 1994 and later established it in Paris.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Chitose Abe', 'Japanese', 1965, 'https://www.sacai.jp/', 'Chitose Abe (née Sakai) is a Japanese fashion designer and the founder of the luxury label Sacai. Launched in Tokyo in 1999, her brand is globally renowned for its signature "hybrid" aesthetic, which splices contrasting fabrics, utility wear, and classic tailoring into cohesive, multi-dimensional garments.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Raf Simons', 'Belgian', 1968, 'https://rafsimons.com', 'Belgian fashion designer whose career includes his namesake label and creative leadership roles at Jil Sander, Dior, Calvin Klein, and Prada.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Ye (Kanye West)', 'American', 1977, NULL, 'American designer, artist, and musician who founded Yeezy. His fashion work includes independent collections and former collaborations with Nike, Adidas, and Gap.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Vivienne Westwood', 'British', 1941, 'https://www.viviennewestwood.com', 'British designer whose work helped bring punk and new-wave style into fashion before expanding into historically informed tailoring, corsetry, environmental activism, and an influential global house.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('John Galliano', 'British', 1960, NULL, 'British fashion designer born in Gibraltar whose career includes his namesake label and creative leadership at Givenchy, Christian Dior, and Maison Margiela. His work is known for narrative-driven collections, historical research, technical cutting, and theatrical presentation.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Dries Van Noten', 'Belgian', 1958, 'https://www.driesvannoten.com', 'Belgian designer and member of the Antwerp Six, celebrated for sophisticated color, print, textile, and embroidery combinations across menswear and womenswear.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Raul Lopez', 'Dominican-American', NULL, 'https://luar.world', 'Brooklyn-born Dominican-American designer Raul Lopez is the founder and creative director of Luar. A co-founder of Hood By Air, Lopez launched Luar in 2011 to tell a more personal story shaped by New York''s queer underground, his Dominican heritage, family, and the style languages of the city. After periods of hiatus, he returned to New York Fashion Week in 2021 with a sharpened approach to tailoring and accessories, including the instantly recognizable Ana bag. His work turns neighborhood archetypes, glamour, gender performance, and immigrant aspiration into assertive American fashion.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Tom Ford', 'American', 1961, 'https://www.tomfordfashion.com', 'American designer and filmmaker Tom Ford transformed Gucci in the 1990s through a precise vocabulary of erotic glamour, then directed Yves Saint Laurent Rive Gauche while overseeing the Gucci Group. He founded his namesake house in 2005, extending his vision across menswear, womenswear, beauty, eyewear, and film. This profile attributes only collections designed during Ford''s own tenures, separating his authorship from the houses that continued after him.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Jun Takahashi', 'Japanese', 1969, 'https://undercoverism.com', 'Japanese designer Jun Takahashi founded Undercover in 1990 while studying at Bunka Fashion College. Emerging from Harajuku''s Ura-Harajuku scene, he fused punk, street culture, fine construction, music, cinema, and emotional storytelling into a practice he describes through the phrase ''We make noise, not clothes.'' His work moves between cult graphic garments and highly poetic Paris presentations.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Thom Browne', 'American', 1965, 'https://www.thombrowne.com', 'American designer Thom Browne began with five grey suits and a by-appointment New York shop, transforming the mid-century business uniform through cropped proportions and exacting construction. His practice expanded into womenswear and theatrical runway narratives populated by athletes, students, office workers, animals, and dream figures. Browne has repeatedly used the grey suit as both disciplined system and limitless storytelling device.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Yohji Yamamoto', 'Japanese', 1943, 'https://www.yohjiyamamoto.co.jp', 'Japanese designer Yohji Yamamoto established his company in 1972 and presented in Paris in 1981. His work radically challenged Western ideals of glamour through black, asymmetry, generous volume, weathered textiles, and an insistence on space between garment and body. Across Yohji Yamamoto, Y''s, and the Adidas partnership Y-3, he has sustained a poetic and rebellious approach to tailoring, movement, gender, and time.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Willy Chavarria', 'American', NULL, 'https://www.willychavarria.com', 'American designer Willy Chavarria builds fashion around dignity, emotion, and the visibility of communities often excluded from luxury imagery. Drawing from his Mexican-American upbringing in California, Chicano style, queer culture, workwear, religion, and political struggle, he combines monumental tailoring and sportswear with deeply human casting. He launched his namesake collection in 2015 and has expanded its message from New York to Paris.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Olivier Rousteing', 'French', 1985, 'https://www.balmain.com', 'French designer Olivier Rousteing served as creative director of Balmain from 2011 to 2025. Appointed at 25, he amplified the house''s structured glamour through dense embellishment, sharp shoulders, body-conscious silhouettes, and a digitally fluent vision of celebrity and community known as the Balmain Army. His work also brought his mixed-race identity, adoption story, and search for his African heritage into the narrative of a historic Paris house.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Issey Miyake', 'Japanese', 1938, 'https://www.isseymiyake.com', 'Japanese designer Issey Miyake founded the Miyake Design Studio in 1970 and built a practice around the relationship between cloth, technology, movement, and everyday life. Rather than treating fashion as surface decoration, he pursued new systems of making—from a single piece of cloth to garment pleating after construction. This profile focuses on work created during Miyake''s own design tenure, keeping later collections by Naoki Takizawa, Dai Fujiwara, Yoshiyuki Miyamae, and Satoshi Kondo distinct.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Jil Sander', 'German', 1943, 'https://www.jilsander.com', 'German designer Jil Sander established her label in Hamburg in 1968 and became one of modern fashion''s defining minimalists. Her precise tailoring, luxurious textiles, controlled color, and refusal of ornament reshaped professional dress in the 1980s and 1990s. Sander left and returned to her namesake house several times; this profile attributes only collections from her own creative tenures rather than later work by Raf Simons, Luke and Lucie Meier, or Simone Bellotti.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('Craig Green', 'British', 1986, 'https://www.craig-green.com', 'London designer Craig Green founded his label in 2012 after completing the Central Saint Martins MA. Beginning with workwear, uniforms, and the worker jacket, he constructs deeply emotional menswear around protection, restraint, vulnerability, ritual, and collective movement. His processions often combine highly wearable garments with sculptural structures that resemble flags, shelters, machines, or devotional objects.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO designers (full_name, nationality, birth_year, website, biography)
VALUES ('John Elliott', 'American', NULL, 'https://www.johnelliott.com', 'California-born, Los Angeles-based designer John Elliott founded his namesake label in 2012. Grounded in skate culture, basketball, travel, and intensive fabric development, his work elevates familiar American sportswear through engineered materials, layered proportions, and exacting construction. Elliott debuted on the New York runway for Fall 2015 and has extended the label through womenswear and collaborations with Nike, Converse, Gap, and other performance and streetwear partners.')
ON CONFLICT(full_name) DO UPDATE SET
    nationality=excluded.nationality,
    birth_year=excluded.birth_year,
    website=excluded.website,
    biography=excluded.biography;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Sarah Burton'), 'Givenchy', NULL, 'Fall/Winter', 2025, 'released', 52, 'The collection focused on cut, proportion, and tailoring.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Sarah Burton'), 'Alexander McQueen', NULL, 'Spring/Summer', 2024, 'archived', NULL, 'Sarah Burton''s final collection as creative director of Alexander McQueen.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Hood By Air', 'Pilgrimage', 'Fall/Winter', 2016, 'archived', NULL, 'Titled Pilgrimage, the collection explored transience, transmigration, and bodies treated as cargo. Patent-leather puffers, baggage-tagged shoes, plastic-wrapped bustiers, waders, dislocated sleeves, and luggage forms carried political undertones about displacement while demonstrating Oliver’s growing technical confidence.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Grace Wales Bonner'), 'Wales Bonner', NULL, 'Spring/Summer', 2024, 'released', 34, 'The Spring/Summer 2024 menswear collection was titled Marathon.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Lee Alexander McQueen'), 'Alexander McQueen', 'No. 13', 'Spring/Summer', 1999, 'archived', NULL, 'A landmark Lee Alexander McQueen collection known for its theatrical runway presentation.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jonathan Anderson'), 'JW Anderson', NULL, 'Spring/Summer', 2024, 'released', NULL, 'The collection reworked familiar wardrobe pieces with exaggerated proportions and unexpected materials.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Hood By Air', 'Wench', 'Spring/Summer', 2017, 'archived', NULL, 'Hood By Air shared billing with Wench, Oliver and Arca’s musical project, in a subversive take on tour merchandise. WENCH graphics, corporate name tags, reconstructed Wall Street suits, off-shoulder tailoring, corsetry, polos, and Pornhub collaboration reframed executive dress through queer club culture.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Helmut Lang', 'Seen by Shayne Oliver', 'Spring/Summer', 2018, 'archived', NULL, 'As Helmut Lang’s first designer in residence, Oliver rebuilt the house’s minimal staples around its fetishistic undercurrent. Streamlined tailoring, parkas, asymmetric bras, rearless trousers, codpieces, harnesses, patent bra-bags, and BDSM straps restored sensuality through an unmistakably Oliverian lens.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Diesel', 'Red Tag Project', 'Fall/Winter', 2018, 'archived', NULL, 'The inaugural Diesel Red Tag capsule turned denim Americana into a techno-rodeo of cropped boxy jackets, unconventional jeans, layered construction, exaggerated utility, and prominent red branding. It translated Oliver’s pattern manipulation into Diesel’s industrial denim processes.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Demna Gvasalia'), 'Balenciaga', NULL, 'Spring/Summer', 2023, 'archived', NULL, 'A Demna collection presented on a mud-covered runway in Paris.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Virgil Abloh'), 'Louis Vuitton', NULL, 'Spring/Summer', 2019, 'archived', NULL, 'Virgil Abloh''s debut menswear collection for Louis Vuitton.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Junya Watanabe'), 'Junya Watanabe MAN', NULL, 'Spring/Summer', 2025, 'archived', NULL, 'A menswear collection combining formalwear with a punk sensibility.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Miuccia Prada'), 'Prada', NULL, 'Spring/Summer', 2012, 'archived', NULL, 'A Miuccia Prada collection drawing on 1950s automobile imagery.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Rei Kawakubo'), 'Comme des Garçons', 'Body Meets Dress, Dress Meets Body', 'Spring/Summer', 1997, 'archived', NULL, 'Rei Kawakubo challenged conventional silhouettes using asymmetrical padded forms.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Anonymous Club', NULL, 'Resort', 2024, 'archived', 17, 'Anonymous Club’s second installment clarified the studio as a collaborative label and talent incubator. Black, beige, neon green, and clear vinyl staples carried Oliver signatures including pagoda shoulders, club leather, oversized utility jackets, displaced sleeves, and a three-headed Cerberus motif symbolizing protection of vulnerable new ideas.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', 'The World Isn''t Everything', 'Spring/Summer', 2020, 'archived', NULL, 'Presented in Paris through the film ''The World Isn''t Everything,'' the collection treated migration as a core Telfar philosophy. Hybrid garments—T-shirt dresses, denim joined to track pants, fishnet-transformed jeans, and branded inserts—made movement and recombination literal.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Rick Owens'), 'Rick Owens', 'Vicious', 'Spring/Summer', 2014, 'archived', 40, 'A presentation performed by four step teams that challenged conventional runway casting and beauty standards.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Chitose Abe'), 'Sacai', 'Free-form', 'Spring/Summer Ready-to-Wear', 2019, 'concept', 52, 'The collection marked a transition toward structural asymmetry, splitting classical archetypes side-to-side rather than front-to-back [index:1.1.1]. Chitose Abe intentionally left edges raw and items looking spontaneous or "undone"')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Rei Kawakubo'), 'Comme des Garçons', 'Anger', 'Fall/Winter', 2024, 'archived', NULL, 'Rei Kawakubo described the collection as an expression of anger at the state of the world and at herself.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Demna Gvasalia'), 'Balenciaga', 'Winter 24', 'Fall/Winter', 2024, 'archived', NULL, 'A Winter 2024 collection pairing Cristóbal Balenciaga-inspired eveningwear with faux fur, coordinated puffers, biker-derived accessories, and a runway of physical screens.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raf Simons'), 'Prada', NULL, 'Spring/Summer', 2024, 'archived', NULL, 'Prada Spring/Summer 2024 womenswear, jointly designed by co-creative directors Miuccia Prada and Raf Simons. The collection explored freedom of the body through lightweight dresses, reworked menswear silhouettes, and reinterpreted archival designs.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raf Simons'), 'Raf Simons', 'Riot! Riot! Riot!', 'Fall/Winter', 2001, 'archived', NULL, 'Raf Simons returned from a one-year sabbatical with a landmark collection staged in a smoke-filled warehouse. Oversized, layered silhouettes and youth-subculture references framed clothing as protection, identity, and revolt.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raf Simons'), 'Raf Simons', 'Nightmares and Dreams', 'Fall/Winter', 2016, 'archived', NULL, 'Raf Simons explored adolescent dreams and nightmares through distressed, oversized tailoring and knitwear in a labyrinthine set, accompanied by Angelo Badalamenti discussing his work with David Lynch.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raf Simons'), 'Raf Simons', NULL, 'Fall/Winter', 2017, 'archived', 40, 'Raf Simons presented his first namesake runway show in New York, combining an immigrant’s view of the city with punk-inflected graphics, oversized outerwear, and an argument for fearlessness.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raf Simons'), 'Raf Simons', NULL, 'Spring/Summer', 2019, 'archived', NULL, 'A Raf Simons menswear collection presented in Paris, extending the designer’s exploration of youth culture through elongated proportions, graphic layering, and subcultural references.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', 'Anything, Anytime', 'Spring/Summer', 2016, 'archived', NULL, 'Telfar presented the collection both on a physical runway and through a CGI film featuring 45 digital clones of Telfar Clemens across a spectrum of genders, body types, and skin tones. The project was created with CultureSport and supported by White Castle.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', NULL, 'Fall/Winter', 2017, 'archived', NULL, 'A fiercely unisex collection that reconstructed everyday garments into hybrid street uniforms, including denim joined to flared knits, puffer-sweatshirt combinations, and cargo pockets shaped from the TC logo.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', 'WOW', 'Fall/Winter', 2022, 'archived', NULL, 'A two-part collection unveiled through an immersive TELFAR TV event combining public-access television, performance art, and runway. It expanded Telfar sportswear into athleticwear and denim while introducing the Circle Bag.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Ye (Kanye West)'), 'Yeezy', 'Yeezy Season 1', 'Fall/Winter', 2015, 'archived', NULL, 'The debut Yeezy apparel collection with Adidas Originals introduced military- and sportswear-derived layers in a muted palette alongside the Yeezy Boost 750. The presentation also premiered the song Wolves.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Ye (Kanye West)'), 'Yeezy', 'Yeezy Season 3', 'Fall/Winter', 2016, 'archived', NULL, 'Presented at Madison Square Garden before an audience of roughly 20,000, Yeezy Season 3 combined a large-scale fashion presentation with the premiere of The Life of Pablo.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Ye (Kanye West)'), 'Yeezy', 'Yeezy Season 4', 'Spring/Summer', 2017, 'archived', NULL, 'A presentation staged at Franklin D. Roosevelt Four Freedoms Park on Roosevelt Island, continuing Yeezy’s exploration of monochromatic casting, body-conscious foundations, oversized outerwear, and utilitarian footwear.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Ye (Kanye West)'), 'Yeezy', 'Yeezy Season 8', 'Fall/Winter', 2020, 'archived', NULL, 'Yeezy returned to the runway during Paris Fashion Week with sculptural outerwear, workwear, and oversized footwear. The presentation at Espace Niemeyer was filmed by Nick Knight and included a performance by North West.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Vivienne Westwood'), 'Vivienne Westwood', NULL, 'Spring/Summer', 2018, 'archived', NULL, 'A theatrical unisex collection developed by Vivienne Westwood and Andreas Kronthaler, combining punk-inflected historical dress, tailoring, platforms, circus performance, and the house’s sustainability advocacy.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='John Galliano'), 'Maison Margiela', 'Artisanal', 'Spring/Summer Couture', 2024, 'archived', 44, 'John Galliano’s final Artisanal collection for Maison Margiela transformed Brassaï-inspired nocturnal Paris into theatrical couture through extreme corsetry, decayed surfaces, bias cutting, character-driven movement, and Pat McGrath’s porcelain-like makeup.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Dries Van Noten'), 'Dries Van Noten', 'Unfamiliar Familiar', 'Spring/Summer', 2024, 'archived', 65, 'A womenswear collection built on manipulated silhouettes and tensions between opposing ideas, reworking utility, tailoring, collegiate stripes, pearls, embroidery, and sportswear into deliberately unfamiliar combinations.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='John Galliano'), 'Givenchy', NULL, 'Fall/Winter Couture', 1996, 'archived', NULL, 'John Galliano’s final couture collection for Givenchy combined the house’s aristocratic codes with his theatrical historicism, romantic bias cutting, elaborate surface work, and a cast of defining 1990s models.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='John Galliano'), 'Christian Dior', 'Egypt', 'Spring/Summer Couture', 2004, 'archived', NULL, 'Inspired by Galliano’s travels through Egypt, this gilded couture fantasia translated pharaohs, deities, hieroglyphs, tomb paintings, and mummification into an elongated Sphinx silhouette using gold leaf, lapis tones, lamé, coral beading, monumental jewelry, and extreme headdresses.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='John Galliano'), 'Christian Dior', 'Dior 60th Anniversary', 'Fall/Winter Couture', 2007, 'archived', NULL, 'Presented at the Orangerie of the Palace of Versailles for Dior’s 60th anniversary, Galliano’s collection transformed references to major painters and fashion history into an opulent couture procession celebrating the house’s legacy.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Chitose Abe'), 'Sacai', 'A Day in the Life', 'Fall/Winter Ready-to-Wear', 2017, 'archived', 45, 'Chitose Abe used the Beatles song A Day in the Life as a framework for dressing across the hours of a day. Pajamas, military MA-1 nylon, floral embroidery, skiwear, tweed, shirting, and evening details were hybridized to argue for wearing what you want, when you want.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Chitose Abe'), 'Sacai', '4D', 'Fall/Winter Ready-to-Wear', 2020, 'archived', 46, 'Built around movement through time, Abe fused tuxedos, floor-length dresses, knitwear, and space-suit references into unusually formal hybrid silhouettes. NASA imagery and graphics derived from Alexander Girard added an optimistic, interstellar register.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Chitose Abe'), 'Sacai', NULL, 'Spring/Summer Ready-to-Wear', 2022, 'archived', NULL, 'Abe developed Sacai hybridization through a film presentation, combining familiar archetypes and contrasting materials while reflecting the altered rhythms and perspectives of the pandemic period.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Chitose Abe'), 'Sacai', NULL, 'Spring/Summer Ready-to-Wear', 2023, 'archived', 41, 'A study of uniforms and the freedom found within them, this collection dismantled and recombined tailoring, flight jackets, trench coats, and workwear. Zippers, displaced panels, and sculptural volumes turned recognizable garments into mutable Sacai hybrids.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jonathan Anderson'), 'Loewe', 'A New Aesthetic', 'Spring/Summer Ready-to-Wear', 2022, 'archived', NULL, 'For Loewe’s return to the runway, Anderson called for a creative reset. Black column dresses erupted into metal-supported geometric volumes, while contorted draping, sculpted breastplates, surreal heels, and everyday objects pushed provocation, sensuality, and movement into a new visual language.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jonathan Anderson'), 'Loewe', 'Nature as Artifice', 'Spring/Summer Ready-to-Wear', 2023, 'archived', NULL, 'Anderson examined nature that already resembles design through the poisonous anthurium flower. Molded floral bodices, fiberglass and metal structures, pixelated garments, split-arm leather dresses, and deliberately unreal surfaces tested the boundary between the physical body and the digital image.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jonathan Anderson'), 'Christian Dior', 'Do You Dare Enter the House of Dior?', 'Spring/Summer Ready-to-Wear', 2026, 'released', 75, 'Anderson’s Dior womenswear debut placed the house archive in deliberate collision with his own instincts. Shrunken Bar jackets, winged Cigale-derived volumes, denim, capes, lace, tricorne hats, and princess motifs blurred decades while balancing Dior formality with everyday dressing.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jonathan Anderson'), 'Christian Dior', 'Promenade', 'Fall/Winter Ready-to-Wear', 2026, 'released', NULL, 'Shown around a water-lily pond in the Tuileries, Anderson relaxed Dior’s structure into light, mobile clothes. A knitted Bar jacket, pleated-silk tailoring, Junon-derived patterns, balloon trousers, lace frock coats, denim, and raffia flowers framed dressing as a promenade through Parisian history.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jonathan Anderson'), 'JW Anderson', 'Parties That Never Were', 'Fall/Winter Menswear + Pre-Fall', 2022, 'archived', 51, 'A digital collection celebrating dressing as a mischievous act beyond barriers of gender and taste. Metallic surfaces, saturated color, cartoon imagery, elephant and pigeon motifs, playful bags, and clashing proportions turned memories of missed parties into an unabashed fantasy.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Junya Watanabe'), 'Junya Watanabe Comme des Garçons', 'Function and Practicality', 'Spring/Summer Ready-to-Wear', 2000, 'archived', NULL, 'A landmark rain-soaked presentation that made material performance visible on the runway. Transformable dresses, waterproof skirts, attached wrap scarves, pleating, and futuristic headpieces joined advanced synthetic textiles to precise, functional pattern cutting.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Junya Watanabe'), 'Junya Watanabe Comme des Garçons', 'Techno Couture', 'Fall/Winter Ready-to-Wear', 2000, 'archived', NULL, 'Watanabe transformed hand-sewn polyester chiffon into enormous honeycomb ruffs and ethereal volumes that could collapse flat for storage. The collection fused historical couture technique, Rembrandt-era silhouettes, and space-age synthetic material into one of his defining statements.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Junya Watanabe'), 'Junya Watanabe Comme des Garçons', 'Parachute', 'Spring/Summer Ready-to-Wear', 2003, 'archived', NULL, 'Romantic floral dresses and cropped trousers were suspended and gathered with parachute webbing, straps, buckles, and integrated backpacks. Airy umbrella hats completed Watanabe’s improbable fusion of pastoral innocence, combat utility, and transformable construction.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Junya Watanabe'), 'Junya Watanabe Comme des Garçons', 'Classic Clothing, Interpreted', 'Fall/Winter Ready-to-Wear', 2003, 'archived', 44, 'Edwardian romance and classic tailoring were destabilized through raw hems, unraveling sleeves, rough tweeds, tartans, oversized bows, and punk-inflected Chanel references. Watanabe treated proper period clothing as material for reconstruction rather than nostalgia.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Junya Watanabe'), 'Junya Watanabe Comme des Garçons', 'Army', 'Fall/Winter Ready-to-Wear', 2006, 'archived', 44, 'Models advanced like a battalion in army green as Watanabe rebuilt fatigues, camouflage, concert-shirt patchwork, lace, parkas, trenches, and tailcoats into an antiwar-inflected punk wardrobe. Electrical-tape masks, studs, and trailing straps sharpened its subversive force.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Junya Watanabe'), 'Junya Watanabe', 'Kashmir', 'Fall/Winter Ready-to-Wear', 2023, 'archived', 29, 'Led Zeppelin’s Kashmir launched a dark pilgrimage of futuristic travelers. Rebuilt motorcycle jackets, technical strapping, carabiners, mesh, protective masks, studded boots, leather pleating, and abstract down-filled buffers blended exploration gear with dystopian romance.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Junya Watanabe'), 'Junya Watanabe', 'Creating Objects, Not Clothes', 'Spring/Summer Ready-to-Wear', 2024, 'archived', 41, 'Watanabe’s geometric pattern cutting produced wearable sculpture from jutting triangles, curved tubes, scuba neoprene, origami-folded biker jackets, fractal denim, and deconstructed bouclé. Extreme black objects gradually resolved into recognizable garments without surrendering their strangeness.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Vivienne Westwood'), 'World’s End / Vivienne Westwood', 'Pirate', 'Fall/Winter', 1981, 'archived', NULL, 'Westwood and Malcolm McLaren’s first official catwalk collection abandoned punk’s tight black uniform for romantic volume. Drawing on eighteenth- and nineteenth-century dress, British history, and global textiles, it introduced billowing shirts, dropped armholes, slash-cut sleeves, broad trousers, and the influential Squiggle print.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Vivienne Westwood'), 'World’s End / Vivienne Westwood', 'Nostalgia of Mud', 'Fall/Winter', 1982, 'archived', NULL, 'Also known as Buffalo, the collection rejected conventional Western hierarchy through sheepskin jackets, voluminous swirling skirts, hooded layers, raw construction, earthy color, and eclectic cultural references. Its wrapped silhouettes helped define the early-1980s Buffalo aesthetic.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Vivienne Westwood'), 'Vivienne Westwood', 'Mini-Crini', 'Spring/Summer', 1985, 'archived', NULL, 'Westwood compressed the Victorian crinoline into a buoyant thigh-length cage skirt, opposing the decade’s dominant broad shoulders with a sharply emphasized waist and hips. Polka dots, playful prints, fitted country tailoring, and Rocking Horse platforms joined historical construction to pop irreverence.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Vivienne Westwood'), 'Vivienne Westwood', 'Harris Tweed', 'Fall/Winter', 1987, 'archived', NULL, 'An affectionate parody of British upper-class dress based on young Princesses Elizabeth and Margaret. A-line coats, jodhpurs, corsets worn as outerwear, tweed crowns, mini-crinis, denim, and traditional checks helped revive Harris Tweed as a fashion fabric and consolidated Westwood’s historically informed tailoring.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Vivienne Westwood'), 'Vivienne Westwood Gold Label', 'Anglomania', 'Fall/Winter Ready-to-Wear', 1993, 'archived', NULL, 'English tailoring collided with French exaggeration in tartan mini-kilts, double-breasted suits, corseted gowns, tweed capes, fur, and towering Elevated Ghillie platforms. The collection introduced the MacAndreas tartan and produced Naomi Campbell’s famous laughing runway fall.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Vivienne Westwood'), 'Vivienne Westwood Gold Label', 'Café Society', 'Spring/Summer Ready-to-Wear', 1994, 'archived', NULL, 'Westwood pushed historical silhouette and erotic display to lavish extremes, mixing nineteenth-century military dress, Elizabethan beauty codes, corsetry, bustles, tailoring, and the micro-mini-crini. A celebrated supermodel cast turned the runway into a theatrical argument about power, femininity, and spectacle.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Vivienne Westwood'), 'Vivienne Westwood', 'Homo Loquax', 'Fall/Winter Ready-to-Wear', 2019, 'archived', NULL, 'A collection-cum-manifesto staged with models, actors, and activists speaking about climate change, anti-capitalism, consumerism, and Brexit. Repurposed fabrics, assertive tailoring, draped dresses, and Westwood’s buy less, choose well ethic made political speech part of the runway itself.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Hood By Air', 'Prophets and Fetishists', 'Fall/Winter Ready-to-Wear', 2013, 'archived', NULL, 'Hood By Air’s breakout New York runway fused a distant-future mood with streetwear, fetish codes, neoprene, aggressive graphics, and sculptural cut-and-sew garments. A$AP Rocky closed the smoke-and-laser presentation, marking HBA’s transition from cult graphic label to a new kind of designer house.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Hood By Air', NULL, 'Fall/Winter Ready-to-Wear', 2014, 'archived', 40, 'Oliver made statements about gender, power, class, beauty, and commerce through oversized sports jerseys, bruise graphics, grommeted leather, bondage-inflected construction, and influential zip-detailed denim. A forceful ballroom performance transformed the finale into a declaration of HBA’s community and cultural source.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Hood By Air', NULL, 'Spring/Summer Ready-to-Wear', 2015, 'archived', NULL, 'Presented across New York and Paris, the collection dismantled machismo through hybrid suits, jumpsuits, deconstructed shirting, transparent restraint devices, and orthopedic imagery. Oliver used restriction and vulnerability to challenge conventional ideas of masculine power.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Hood By Air', 'Human Evolution', 'Fall/Winter Ready-to-Wear', 2015, 'archived', NULL, 'Oliver treated categorization itself as a threat, hybridizing khakis, button-downs, puffers, sweaters, and T-shirts until familiar wardrobe staples appeared alien. Distorted faces, ambiguous bodies, and liminal silhouettes framed human evolution as a refusal of fixed identity.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Hood By Air', 'Self-Obsessed', 'Spring/Summer Menswear', 2016, 'archived', NULL, 'A Paris meditation on self-worship filtered old-Hollywood glamour, toddler dressing, and bodily control through partitioned garments, trailing trains, pleated culottes, padlocked pacifiers, and slashed silhouettes. The work treated clothing as philosophy in transition rather than stable menswear.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Hood By Air', 'Galvanize', 'Spring/Summer Ready-to-Wear', 2016, 'archived', NULL, 'Drawing on Oliver’s Caribbean childhood and school uniforms worn amid unequal living conditions, Galvanize radically chopped, suspended, and reassembled denim, striped knits, skirts, dresses, and institutional dress. Gender was treated as secondary to membership in the HBA family.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Hood By Air', 'Positive Utilitarianism', 'Spring/Summer Menswear', 2017, 'archived', NULL, 'Staged in the semi-darkness of a Paris gay sauna, the show turned medical supports, trusses, bandages, built-in braces, military utility, and bondage into an uneasy language of healing and desire. Its immersive format rejected the hierarchy and visibility of the conventional runway.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Longchamp by Shayne Oliver', 'Realness / Hiatus', 'Spring/Summer Capsule', 2018, 'archived', 19, 'Oliver reworked Longchamp’s democratic Le Pliage through elongated handles, doubled bags, wearable luggage, convertible footwear, garment-bag outerwear, and oversized REALNESS and HIATUS graphics. The project extended his experiments with proportion and logo language into travel design.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Colmar A.G.E. by Shayne Oliver', 'Advanced Garment Exploration I', 'Fall/Winter Capsule', 2018, 'archived', 11, 'The inaugural Colmar A.G.E. project turned archival alpine outerwear inside out. Eleven oversized, deconstructed, reversible, and unisex designs joined technical ski construction to Oliver’s performance-driven proportions and exposed internal logic.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Colmar A.G.E. by Shayne Oliver', 'Advanced Garment Exploration II', 'Spring/Summer Capsule', 2019, 'archived', NULL, 'Oliver’s second Colmar installment continued to recode the Italian company’s sporting archive, combining highly technical materials with casual urban forms, reversible construction, exaggerated volume, and a progressive unisex approach to performance clothing.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Colmar A.G.E. by Shayne Oliver', 'Advanced Garment Exploration III', 'Fall/Winter Capsule', 2019, 'archived', 14, 'The final Colmar chapter reimagined skiwear through reflective 3M panels, rubber patches, exposed seams, technical hoods, drawstrings, inflated trousers, utility attachments, and a cowboy-inflected campaign. Fourteen genderless pieces completed Oliver’s three-season study of the archive.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Hood By Air', 'Prologue: Mother, Veteran, Merch', 'Ready-to-Wear', 2021, 'archived', NULL, 'HBA’s return after hiatus was organized as a prologue of character studies: Mother honored powerful Black women through a Naomi Campbell campaign; Veteran revisited the label’s streetwear history in sequential drops; and Merch connected product to the wider relaunch structure developed with Anonymous Club.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Shayne Oliver', 'Mall of Anonymous', 'Fall/Winter Presentation', 2022, 'archived', NULL, 'Oliver returned to New York Fashion Week at The Shed with an eponymous clothing presentation embedded in sculpture, live music with Arca, smoke, dripping garments, and performance. The project deliberately blurred fashion, sound, art, and the community structures of Wench, Leech, HBA, and Anonymous Club.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Anonymous Club', 'Collection 01: We Bleed Green', 'Club Couture', 2022, 'archived', NULL, 'Anonymous Club’s first collection emerged through Club Couture, a public extension of Oliver’s private community gatherings. The work positioned fashion alongside nightlife, music, performance, mentorship, and collective experimentation, using the studio as a platform for a new generation of collaborators.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Anonymous Club', 'Collection 02', 'Berlin Spring/Summer', 2024, 'archived', NULL, 'Oliver returned to the hoodie as the origin point of his fashion language. Black, white, and gray sportswear expanded into disproportionate cuts, rubber clothing, muscular prosthetic leggings, overalls, boots, hidden faces, and horned hair forms, presenting unknown characters through the designer’s own vision.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Shayne Oliver'), 'Anonymous Club', 'Collection 03', 'Berlin Spring/Summer', 2025, 'archived', NULL, 'A club-charged Berlin runway developed Oliver’s upward-morphing cowl hoods, concentrated shoulder volume, sculptural puffers, flared proportions, soft draped dresses, and discreet Shayne Oliver signatures. The collection continued Anonymous Club’s fusion of character, nightlife, and mentorship.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', NULL, 'Fall/Winter 2014', 2014, 'archived', NULL, 'Presented at New York''s New Museum, this collection reframed mass-market American familiarity through Telfar''s unisex vocabulary, with the presentation drawing on the visual language of Kmart and everyday retail.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', NULL, 'Spring/Summer 2015', 2015, 'archived', NULL, 'A continuation of Clemens''s project of making ordinary American clothes strange again: gender-neutral basics, altered proportions, and garments intended to circulate freely between bodies and identities.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', NULL, 'Fall/Winter 2015', 2015, 'archived', NULL, 'Telfar''s democratic unisex wardrobe pushed familiar sportswear and everyday staples through subtle structural changes, maintaining the label''s focus on clothing before prescribed identity.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', NULL, 'Fall/Winter 2016', 2016, 'archived', NULL, 'An exploration of recognizable American basics transformed through cut, proportion, and multipurpose construction—part of Clemens''s sustained effort to design clothes that are for everyone.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', 'It''s Clothing', 'Spring/Summer 2017', 2017, 'archived', NULL, 'An ''everyman'' proposition built from polos, tank tops, bodysuits, and workwear colors. Familiar garments were reversed, cut away, or fused together, underscoring Clemens''s insistence that the work was simply—and expansively—clothing.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar x White Castle', 'LeFrak City Capsule', 'Summer 2017', 2017, 'archived', 8, 'An eight-piece public capsule connected to Telfar''s redesign of the uniforms for White Castle''s LeFrak City location. The project joined workwear, neighborhood memory, and an unusually democratic model of designer collaboration.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', NULL, 'Spring/Summer 2018', 2018, 'archived', NULL, 'A self-archival collection of ''decoy clothing'' presented over a White Castle dinner. Tank dresses, backward collars, detachable denim sleeves, backless shirts, and punched logos revisited and recombined the label''s own vocabulary.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', NULL, 'Fall/Winter 2018', 2018, 'archived', NULL, 'Everyday American sportswear was loosened, layered, and reconfigured with Telfar''s characteristic refusal of fixed gender, continuing the label''s study of how ordinary clothes acquire social meaning.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', NULL, 'Spring/Summer 2019', 2019, 'archived', NULL, 'A communal New York presentation that expanded Telfar''s language of transformed basics and fluid dressing, treating the runway as a gathering rather than an exclusive fashion spectacle.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', 'Country', 'Fall/Winter 2019', 2019, 'archived', NULL, 'Presented at Irving Plaza as a concert-like collective event, ''Country'' examined Black authorship of American identity. Models crowd-surfed through the audience in deconstructed denim, sportswear, and Western-coded forms.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', NULL, 'Fall/Winter 2020 Menswear', 2020, 'archived', NULL, 'Telfar''s guest-designer presentation at Pitti Uomo occupied Florence''s Palazzo Corsini with a cast and creative community brought from New York. Familiar American basics were staged as a declaration of self-definition: the label would not change to suit its host.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar x UGG', 'UGG x TELFAR', 'Spring/Summer 2021', 2021, 'archived', NULL, 'A meeting of two immediately recognizable design languages, applying UGG''s shearling and chestnut palette to Telfar''s inclusive accessories and casual wardrobe, including the Shopping Bag collaboration first previewed in 2020.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar x Converse', 'Converse x TELFAR', 'Spring/Summer 2021', 2021, 'archived', NULL, 'A unisex activewear collaboration spanning performance garments and footwear, translating Telfar''s cutouts, asymmetry, and body-conscious approach into Converse sportswear.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', 'Liberia Olympic Uniforms', 'Tokyo 2020 Olympics', 2021, 'archived', NULL, 'Competition and ceremonial uniforms designed for Liberia''s Olympic delegation. The project connected Clemens''s Liberian heritage to athletic apparel and extended his design practice onto an international sporting stage.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar x White Castle', '100th Anniversary Uniforms', 'Fall/Winter 2021', 2021, 'archived', NULL, 'Four new uniform designs created for roughly 10,000 White Castle team members for the company''s centenary, accompanied by a public capsule whose proceeds supported bail assistance for incarcerated minors.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar x Moose Knuckles', 'Moose Knuckles x TELFAR', 'Fall/Winter 2021', 2021, 'archived', 17, 'A 17-piece outerwear capsule combining Moose Knuckles''s cold-weather construction with Telfar''s puffers, quilted separates, denim, and shearling-lined Shopping Bags.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', 'Lookbook', 'Fall/Winter 2008', 2008, 'archived', NULL, 'An early TELFAR lookbook from the label''s formative period, documenting Clemens''s already-established commitment to unisex dressing and the transformation of ordinary wardrobe staples.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', 'Lookbook', 'Spring/Summer 2009', 2009, 'archived', NULL, 'A formative seasonal lookbook from Telfar''s first years, when the label was developing its independent New York language of democratic, gender-neutral everyday clothing.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', 'Lookbook', 'Fall/Winter 2009', 2009, 'archived', NULL, 'An early archival lookbook that records the continuity of Telfar''s unisex project well before gender-fluid casting and co-ed collections became widespread industry practice.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar', 'Lookbook', 'Spring/Summer 2010', 2010, 'archived', NULL, 'A surviving early lookbook centered on wearable, adaptable clothing rather than conventional luxury codes, part of the visual record of TELFAR between 2008 and 2010.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Telfar Clemens'), 'Telfar for Solange', 'An Ode To', 'Spring 2017', 2017, 'archived', NULL, 'Custom costumes for Solange Knowles and her ensemble of dancers and musicians in ''An Ode To,'' the interdisciplinary performance staged in the Guggenheim Museum''s rotunda. The project placed Telfar''s fluid clothing inside a collective work of movement, music, and Black cultural expression.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raul Lopez'), 'Luar', NULL, 'Spring/Summer 2019', 2019, 'archived', NULL, 'An early chapter in Luar''s documented runway archive, bringing Lopez''s subversive treatment of proportion, gender, and New York street language into a sharply personal ready-to-wear proposition.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raul Lopez'), 'Luar', NULL, 'Fall/Winter 2019', 2019, 'archived', NULL, 'The last documented Luar runway season before an extended pause, continuing Lopez''s collision of downtown experimentation, dramatic silhouette, and the social codes of dressing up.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raul Lopez'), 'Luar', NULL, 'Spring/Summer 2022', 2022, 'archived', NULL, 'Luar''s emphatic return to New York Fashion Week introduced the sculptural, circular-handled Ana bag. Named for Lopez''s mother and grandmother, the accessory distilled family memory, aspiration, and downtown glamour into the object that helped transform the label''s reach.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raul Lopez'), 'Luar', 'La Alta Gama', 'Spring/Summer 2023', 2023, 'archived', NULL, 'A study of ''high class'' aspiration filtered through the resourcefulness and presentation rituals of Lopez''s Dominican-American upbringing, combining exaggerated tailoring, evening drama, and the cultivated swagger of neighborhood elegance.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raul Lopez'), 'Luar', 'Calle Pero Elegante', 'Fall/Winter 2023', 2023, 'archived', NULL, 'Streetwise but elegant, the collection sharpened Luar''s tailoring and accessories while treating glamour as a language built in community rather than granted by conventional luxury institutions.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raul Lopez'), 'Luar', 'Socorro', 'Spring/Summer 2024', 2024, 'archived', NULL, 'Named in homage to Lopez''s mother, ''Socorro'' drew on a scene in El Hoyo in the Dominican Republic where street revelry and outdoor worship faced one another. Streamlined tailoring, convertible garments, church references, and hedonistic tension shaped the collection.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raul Lopez'), 'Luar', 'Deceptionista', 'Fall/Winter 2024', 2024, 'archived', NULL, 'An autobiographical meditation on metrosexuality and the strategies queer men used to navigate masculinity. Elizabethan volume, animal textures, narrow silhouettes, and ornamental beauty marked the runway, which also introduced Luar Basics and a partnership with Moose Knuckles.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raul Lopez'), 'Luar', 'En Boca Quedó', 'Spring/Summer 2025', 2025, 'archived', NULL, 'Staged in Rockefeller Plaza, the collection brought Luar''s downtown community into one of New York''s most visible civic stages. Lopez answered the pressure of mainstream attention with corsetry, high-impact tailoring, theatrical accessories, and the energy of a public spectacle.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raul Lopez'), 'Luar', 'El Pato', 'Fall/Winter 2025', 2025, 'archived', NULL, 'Lopez reclaimed ''pato''—both Spanish for duck and a homophobic slur in parts of Latin America—as a defiant queer emblem. Feathers, sculpted gestures, asymmetric tailoring, and 1980s maximalism paid homage to the flamboyant designers and queer figures he admired.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Raul Lopez'), 'Luar', NULL, 'Spring/Summer 2026', 2026, 'archived', NULL, 'A love letter to Dominican carnival and the resilience carried through its craft traditions. Working with artisans and references including Los Pintaos, Lopez paired severe elongated tailoring with vivid painted surfaces, amber, larimar, and contemporary interpretations of ancestral celebration.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Tom Ford'), 'Gucci', NULL, 'Fall/Winter 1995', 1995, 'archived', NULL, 'Ford''s breakthrough Gucci collection established the velvet hip-hugger, silk shirt, and hard-edged sensuality that redirected the house and the decade.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Tom Ford'), 'Gucci', NULL, 'Spring/Summer 1996', 1996, 'archived', NULL, 'A white, body-conscious sequel to Ford''s breakthrough: jersey, cutouts, chain hardware, and sleek tailoring turned Gucci into a global image of sexual confidence.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Tom Ford'), 'Gucci', NULL, 'Fall/Winter 1996', 1996, 'archived', NULL, 'Ford pushed Gucci''s erotic minimalism into darker glamour through sharp suiting, jersey dresses, patent surfaces, and an exactingly controlled image.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Tom Ford'), 'Yves Saint Laurent Rive Gauche', NULL, 'Spring/Summer 2001', 2001, 'archived', NULL, 'Ford''s first ready-to-wear proposition for Yves Saint Laurent translated house codes through his own polished, provocative lens while negotiating the legacy of its living founder.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Tom Ford'), 'Gucci', NULL, 'Fall/Winter 2004', 2004, 'archived', NULL, 'Ford''s farewell to Gucci condensed his signatures—velvet, satin, fur, severe tailoring, and unapologetic sexuality—into an emotionally charged final collection.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Tom Ford'), 'Tom Ford', NULL, 'Spring/Summer 2011', 2011, 'archived', NULL, 'Ford returned to womenswear with an intimate, photography-restricted presentation led by women chosen for personality rather than a conventional runway ideal.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Tom Ford'), 'Tom Ford', NULL, 'Spring/Summer 2018', 2018, 'archived', NULL, 'A high-gloss New York collection combining razor tailoring, athletic references, crystal surfaces, and abbreviated eveningwear in Ford''s language of controlled seduction.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Tom Ford'), 'Tom Ford', NULL, 'Spring/Summer 2023', 2023, 'archived', NULL, 'Ford''s final womenswear runway collection under his own creative direction revisited disco glamour through sequins, lace, lingerie forms, denim, and liquid metallic color.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jun Takahashi'), 'Undercover', 'SCAB', 'Spring/Summer 2003', 2003, 'archived', NULL, 'A landmark Paris debut built from patched, distressed, and hand-worked garments that translated crust-punk codes into an obsessive couture-like system.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jun Takahashi'), 'Undercover', 'Paper Doll', 'Fall/Winter 2003', 2003, 'archived', NULL, 'Flat, cut-paper ideas became garments through trompe-l''oeil construction and displaced details, balancing childhood craft with unsettling precision.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jun Takahashi'), 'Undercover', 'But Beautiful II', 'Fall/Winter 2004', 2004, 'archived', NULL, 'Handmade-looking plush forms, Patti Smith references, and fragile decoration turned damage and imperfection into one of Takahashi''s defining expressions of beauty.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jun Takahashi'), 'Undercover', 'Arts & Crafts', 'Fall/Winter 2005', 2005, 'archived', NULL, 'Felt, embroidery, raw edges, and handcrafted assemblage proposed an intimate alternative to polished luxury while preserving Undercover''s punk tension.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jun Takahashi'), 'Undercover', 'The Greatest', 'Spring/Summer 2016', 2016, 'archived', NULL, 'A title drawn from the label''s own archive framed a collection of layered references, graphic interventions, and familiar Undercover ideas reactivated rather than nostalgically repeated.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jun Takahashi'), 'Undercover', 'We Are Infinite', 'Spring/Summer 2018', 2018, 'archived', NULL, 'A dual presentation with Takahiro Miyashita used adolescent archetypes, literary atmosphere, and intricate layering to imagine parallel tribes and identities.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jun Takahashi'), 'Undercover', 'The New Warriors', 'Spring/Summer 2019 Menswear', 2019, 'archived', NULL, 'Inspired by The Warriors, Takahashi organized menswear into optimistic fictional gangs, each with distinct styling, graphics, and subcultural codes.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jun Takahashi'), 'Undercover', NULL, 'Fall/Winter 2024', 2024, 'archived', NULL, 'Inspired by Wim Wenders''s Perfect Days, the collection honored routine and ordinary life through domestic gestures, layered tailoring, and garments carrying scenes of daily existence.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Thom Browne'), 'Thom Browne', NULL, 'Fall/Winter 2009 Menswear', 2009, 'archived', NULL, 'Presented at Pitti Uomo, this European milestone expanded Browne''s shrunken grey uniform into a disciplined theatrical world of repeated tailoring and ritual.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Thom Browne'), 'Thom Browne', NULL, 'Fall/Winter 2012', 2012, 'archived', NULL, 'An early womenswear statement that translated Browne''s menswear uniform into sculpted proportions and meticulously staged American archetypes.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Thom Browne'), 'Thom Browne', NULL, 'Spring/Summer 2014 Menswear', 2014, 'archived', NULL, 'Military ceremony and uniformity became an exacting study of sameness and difference, with regimented casting and increasingly surreal tailoring.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Thom Browne'), 'Thom Browne', NULL, 'Spring/Summer 2017 Menswear', 2017, 'archived', NULL, 'A beach fantasy rendered through suits, trompe-l''oeil surf imagery, and Browne''s precise tailoring treated vacation clothing as another kind of uniform.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Thom Browne'), 'Thom Browne', NULL, 'Fall/Winter 2017', 2017, 'archived', NULL, 'Penguin-like black-and-white forms and icy staging transformed familiar tailoring into a surreal procession of elongated, sculptural silhouettes.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Thom Browne'), 'Thom Browne', NULL, 'Spring/Summer 2018', 2018, 'archived', NULL, 'Mermaids, sea creatures, and fantasy tailoring turned the runway into an underwater dream while displaying the atelier''s intensive construction.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Thom Browne'), 'Thom Browne', NULL, 'Fall/Winter 2022', 2022, 'archived', NULL, 'A toy-shop narrative populated by teddy bears and exaggerated New York characters used spectacle to reveal the craft and modular logic beneath Browne''s clothes.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Thom Browne'), 'Thom Browne', 'The Little Prince', 'Fall/Winter 2023', 2023, 'archived', NULL, 'Antoine de Saint-Exupéry''s tale became a lunar theatrical production about adulthood, imagination, and loneliness, all articulated through variations on Browne''s uniform.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Thom Browne'), 'Thom Browne', 'The Raven', 'Fall/Winter 2024', 2024, 'archived', NULL, 'Edgar Allan Poe''s poem shaped a dark, snowbound narrative of ravens, school uniforms, and sculpted black tailoring staged as American gothic theater.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Yohji Yamamoto'), 'Yohji Yamamoto', NULL, 'Spring/Summer 1982', 1982, 'archived', NULL, 'Yamamoto''s early Paris work helped overturn dominant Western ideas of glamour through black, asymmetry, distressed surfaces, and generous space around the body.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Yohji Yamamoto'), 'Yohji Yamamoto', NULL, 'Fall/Winter 1986', 1986, 'archived', NULL, 'A defining study in black tailoring and dramatic volume, remembered for a coat that opened onto an unexpected red bustle—severity disrupted by theatrical color.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Yohji Yamamoto'), 'Yohji Yamamoto', NULL, 'Spring/Summer 1999', 1999, 'archived', NULL, 'The celebrated bridal finale unfolded as performance: garments were progressively removed and transformed, revealing construction, ritual, and shifting identities beneath the white dress.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Yohji Yamamoto'), 'Yohji Yamamoto', NULL, 'Fall/Winter 2000', 2000, 'archived', NULL, 'An Arctic-inspired collection brought poetry and warmth to layered dark silhouettes, protective volume, and clothing that suggested lives weathered by landscape.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Yohji Yamamoto'), 'Y-3', NULL, 'Spring/Summer 2003', 2003, 'archived', NULL, 'The inaugural Y-3 collection formalized Yamamoto''s partnership with Adidas, establishing luxury sportswear as a sustained design practice rather than a one-off collaboration.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Yohji Yamamoto'), 'Yohji Yamamoto', NULL, 'Fall/Winter 2011', 2011, 'archived', NULL, 'Deconstructed tailoring, layered black volume, and visible handwork continued Yamamoto''s resistance to fixed gender and polished completion.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Yohji Yamamoto'), 'Yohji Yamamoto', NULL, 'Spring/Summer 2015', 2015, 'archived', NULL, 'Draped black cloth, exposed structure, and flashes of graphic color placed vulnerability and defiance in close conversation.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Yohji Yamamoto'), 'Yohji Yamamoto', NULL, 'Fall/Winter 2023', 2023, 'archived', NULL, 'A slow meditation on clothing and time, using distressed tailoring, hand intervention, and silhouettes that appeared to accumulate personal histories.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Yohji Yamamoto'), 'Yohji Yamamoto', NULL, 'Spring/Summer 2026', 2026, 'archived', NULL, 'Minimal shrouds and elaborate pleating, knotting, draping, fringe, and beadwork formed a journey between Japanese gesture and Parisian couture, concluding with a return to the 1986 red-bustle coat.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Willy Chavarria'), 'Willy Chavarria', NULL, 'Spring/Summer 2022 Menswear', 2022, 'archived', NULL, 'Monumental proportions, workwear, and emotionally direct casting centered Chicano identity and queer masculinity within an expanding vision of American luxury.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Willy Chavarria'), 'Willy Chavarria', NULL, 'Spring/Summer 2023 Menswear', 2023, 'archived', NULL, 'Broad shoulders, sweeping trousers, religious atmosphere, and intimate casting made dignity and collective emotion as important as the clothes themselves.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Willy Chavarria'), 'Willy Chavarria', NULL, 'Fall/Winter 2023 Menswear', 2023, 'archived', NULL, 'Tailoring and sportswear moved between tenderness and authority, using cinematic scale to dignify bodies and identities often excluded from traditional luxury imagery.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Willy Chavarria'), 'Willy Chavarria', NULL, 'Spring/Summer 2024 Menswear', 2024, 'archived', NULL, 'A forceful New York statement combining voluminous suiting, workwear, sensual styling, and the designer''s recurring language of ceremony and community.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Willy Chavarria'), 'Willy Chavarria', 'Safe From Harm', 'Fall/Winter 2024 Menswear', 2024, 'archived', NULL, 'Protection, migration, and human worth animated imposing tailoring and sportswear presented with Chavarria''s characteristic emotional and political clarity.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Willy Chavarria'), 'Willy Chavarria', 'América', 'Spring/Summer 2025 Menswear', 2025, 'archived', NULL, 'Chavarria examined who is allowed to embody America through glamorous tailoring, labor references, Chicano visual language, and a cast asserting collective presence.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Willy Chavarria'), 'Willy Chavarria', 'Tarantula', 'Fall/Winter 2025 Menswear', 2025, 'archived', NULL, 'The designer''s Paris debut scaled his message globally through immense shoulders, elegant sportswear, religious drama, and casting grounded in cultural pride.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Willy Chavarria'), 'Willy Chavarria', 'HURON', 'Spring/Summer 2026 Menswear', 2026, 'archived', NULL, 'Named for Chavarria''s California hometown, the collection connected agricultural labor, queer and Chicano identity, family memory, and global fashion through refined tailoring and sportswear.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Olivier Rousteing'), 'Balmain', NULL, 'Spring/Summer 2012', 2012, 'archived', NULL, 'Rousteing''s Balmain debut translated the house''s military structure into opulent, hyper-fitted leather, gold embroidery, and Fabergé-like surface work.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Olivier Rousteing'), 'Balmain', NULL, 'Fall/Winter 2014', 2014, 'archived', NULL, 'Safari and utility references met graphic weaving, rope, and commanding shoulders as Rousteing broadened the public image of his Balmain Army.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Olivier Rousteing'), 'Balmain x H&M', 'Balmain x H&M', 'Fall/Winter 2015', 2015, 'archived', NULL, 'A mass-market capsule translated Rousteing''s embellished jackets, body-conscious silhouettes, and military glamour for a dramatically wider audience.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Olivier Rousteing'), 'Balmain', NULL, 'Spring/Summer 2017', 2017, 'archived', NULL, 'Fluid draping, cutaway knitwear, safari palettes, and intricate evening surfaces loosened the armor of Rousteing''s earlier Balmain vocabulary.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Olivier Rousteing'), 'Balmain', NULL, 'Spring/Summer 2020', 2020, 'archived', NULL, 'A celebration of confidence and pop-cultural scale combined saturated color, graphic tailoring, and the designer''s increasingly personal public narrative.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Olivier Rousteing'), 'Balmain', NULL, 'Spring/Summer 2022', 2022, 'archived', NULL, 'Presented after Rousteing revealed his recovery from severe burns, the collection treated bandaging, protection, exposure, and healing through wrapped and armored silhouettes.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Olivier Rousteing'), 'Balmain', NULL, 'Fall/Winter 2024', 2024, 'archived', NULL, 'A love letter to Bordeaux and Rousteing''s adoptive mother Lydia transformed vineyard grapes, gingham picnics, trench coats, and childhood memories into Balmain spectacle.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Olivier Rousteing'), 'Balmain', NULL, 'Spring/Summer 2026', 2026, 'archived', NULL, 'Rousteing''s final runway chapter returned to the ballroom of his 2011 debut, replacing early rigidity with shells, wood, draped silk, and a softer idea of opulence.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Issey Miyake'), 'Issey Miyake', NULL, 'Spring/Summer 1976', 1976, 'archived', NULL, 'Miyake''s early presentations proposed clothing as mobile architecture, joining Japanese textile knowledge to an experimental international wardrobe.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Issey Miyake'), 'Issey Miyake', 'A-POC Prototype', 'Spring/Summer 1980', 1980, 'archived', NULL, 'Miyake''s continuing ''A Piece of Cloth'' research explored how flat material could generate adaptable volume around many different bodies.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Issey Miyake'), 'Issey Miyake', NULL, 'Spring/Summer 1989', 1989, 'archived', NULL, 'Heat-set pleating experiments placed permanent movement into finished garments, laying the technical foundation for Pleats Please.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Issey Miyake'), 'Pleats Please Issey Miyake', 'Pleats Please', 'Spring/Summer 1993', 1993, 'archived', NULL, 'The Pleats Please line made Miyake''s garment-pleating innovation an accessible system: light, washable clothing engineered to move, fold, and travel.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Issey Miyake'), 'Issey Miyake', NULL, 'Spring/Summer 1995', 1995, 'archived', NULL, 'Sculptural pleats and elastic geometries demonstrated how industrial process could produce both visual transformation and practical freedom.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Issey Miyake'), 'Issey Miyake', 'Guest Artist: Cai Guo-Qiang', 'Spring/Summer 1998', 1998, 'archived', NULL, 'Gunpowder drawings by Cai Guo-Qiang marked garments as part of Miyake''s Guest Artist series, making collaboration and controlled accident integral to the clothes.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Issey Miyake'), 'Issey Miyake', 'A-POC', 'Spring/Summer 1999', 1999, 'archived', NULL, 'A-POC—A Piece of Cloth—used computer-guided industrial knitting to produce continuous tubes from which wearers could cut finished garments, rethinking production and authorship.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Issey Miyake'), 'Issey Miyake', NULL, 'Fall/Winter 1999', 1999, 'archived', NULL, 'One of Miyake''s final seasonal collections before handing womenswear to Naoki Takizawa consolidated decades of research into pleating, geometric volume, and bodily movement.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jil Sander'), 'Jil Sander', NULL, 'Spring/Summer 1992', 1992, 'archived', NULL, 'Pure lines, immaculate fabric, and restrained tailoring expressed Sander''s proposition that professional authority and sensuality could coexist without ornament.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jil Sander'), 'Jil Sander', NULL, 'Fall/Winter 1993', 1993, 'archived', NULL, 'Long coats, lean suits, and quiet material richness positioned minimalism as a technically demanding form of luxury rather than absence.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jil Sander'), 'Jil Sander', NULL, 'Spring/Summer 1996', 1996, 'archived', NULL, 'Sander refined the modern wardrobe through pale color, controlled transparency, and tailoring whose apparent simplicity depended on exceptional cut and cloth.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jil Sander'), 'Jil Sander', NULL, 'Fall/Winter 1997', 1997, 'archived', NULL, 'Austere silhouettes and sumptuous surfaces balanced discipline with tactility at the height of Sander''s influence on 1990s dress.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jil Sander'), 'Jil Sander', NULL, 'Spring/Summer 2000', 2000, 'archived', NULL, 'The designer''s final collection before her first departure distilled the house into precise suiting, advanced textiles, and calm, lucid color.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jil Sander'), 'Jil Sander', NULL, 'Spring/Summer 2004', 2004, 'archived', NULL, 'Sander''s first return to her house restored subtle proportion, fabric innovation, and the emotional force of restraint.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jil Sander'), 'Jil Sander', NULL, 'Spring/Summer 2013', 2013, 'archived', NULL, 'Her second return revisited the disciplined wardrobe with crisp volume and vivid blocks of color, proving minimalism could be emphatic rather than neutral.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Jil Sander'), 'Jil Sander', NULL, 'Spring/Summer 2014', 2014, 'archived', NULL, 'Sander''s final collection for her namesake house used monastic shapes, controlled geometry, and concentrated color as a quiet farewell.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Craig Green'), 'Craig Green', NULL, 'Spring/Summer 2013 Menswear', 2013, 'archived', NULL, 'Green''s solo debut sent barefoot figures carrying rough wooden structures and flags, establishing uniform, pilgrimage, and collective emotion as core concerns.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Craig Green'), 'Craig Green', NULL, 'Fall/Winter 2015 Menswear', 2015, 'archived', NULL, 'Quilted protection, ties, straps, and modular workwear balanced emotional exposure with the fantasy of clothing as shelter.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Craig Green'), 'Craig Green', NULL, 'Fall/Winter 2016 Menswear', 2016, 'archived', NULL, 'Layered uniforms and defensive structures explored protection without sacrificing the practical worker jackets beneath the spectacle.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Craig Green'), 'Craig Green', NULL, 'Spring/Summer 2017 Menswear', 2017, 'archived', NULL, 'Billowing cloth, trailing cords, and repeated procession turned simple garments into a moving meditation on freedom, restraint, and belonging.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Craig Green'), 'Craig Green', NULL, 'Spring/Summer 2019 Menswear', 2019, 'archived', NULL, 'Shown in Florence''s Boboli Gardens for Pitti Uomo, translucent structures, flags, and saturated color transformed the historic landscape into a ritual procession.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Craig Green'), 'Craig Green', NULL, 'Fall/Winter 2020 Menswear', 2020, 'archived', NULL, 'Green''s first Paris show packaged bodies in tubing, mesh, printed membranes, and protective constructions while grounding them with clear, wearable trousers and outerwear.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Craig Green'), 'Craig Green', NULL, 'Spring/Summer 2025 Menswear', 2025, 'archived', NULL, 'Hand-pieced leather, biker archetypes, and childlike deconstruction treated clothing like a machine taken apart to discover how its emotion works.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='Craig Green'), 'Craig Green', NULL, 'Spring/Summer 2026 Menswear', 2026, 'archived', NULL, 'Beatles-era psychedelia, gardening, fringed textile forms, transformed parkas, and floral prints created a wistful meditation on youthful creative intensity.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='John Elliott'), 'John Elliott', NULL, 'Fall/Winter 2015 Menswear', 2015, 'archived', NULL, 'Elliott''s debut runway translated layered hoodies, engineered knits, distressed denim, and elongated basics into a focused Los Angeles luxury system.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='John Elliott'), 'John Elliott', NULL, 'Fall/Winter 2016 Menswear', 2016, 'archived', NULL, 'Fabric development and military references expanded the label beyond foundational sportswear while preserving its precise, wearable layering.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='John Elliott'), 'John Elliott', NULL, 'Spring/Summer 2017 Menswear', 2017, 'archived', NULL, 'Sun-washed color, athletic pieces, and lightweight layers refined Elliott''s intersection of California ease and globally sourced material research.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='John Elliott'), 'John Elliott', 'Field Manual', 'Spring/Summer 2018 Menswear', 2018, 'archived', NULL, 'Travel and military utility informed modular outerwear, washed fabrics, tactical details, and the season''s expanded approach to complete dressing.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='John Elliott'), 'John Elliott', 'Delirium', 'Fall/Winter 2018 Menswear', 2018, 'archived', NULL, 'A darker, psychologically charged collection placed distressed surfaces, enveloping layers, and technical outerwear against the label''s athletic foundation.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='John Elliott'), 'John Elliott', NULL, 'Fall/Winter 2019 Menswear', 2019, 'archived', NULL, 'Runway-scale layering brought Italian fabrication, American sportswear, and travel research together in the label''s increasingly expansive wardrobe.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='John Elliott'), 'John Elliott', 'Leap of Faith', 'Spring/Summer 2023 Menswear', 2023, 'archived', NULL, 'A return to the runway framed risk and renewal through relaxed tailoring, technical layers, basketball-informed proportions, and sun-faded California color.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collections (designer_id, label, name, season, release_year, status, piece_count, description)
VALUES ((SELECT id FROM designers WHERE full_name='John Elliott'), 'John Elliott', NULL, 'Fall/Winter 2024 Menswear', 2024, 'archived', NULL, 'The label''s mature vocabulary of engineered basics, denim, performance fabrics, and layered outerwear was presented as an adaptable contemporary uniform.')
ON CONFLICT(designer_id, label, season, release_year) DO UPDATE SET
    name=excluded.name,
    status=excluded.status,
    piece_count=excluded.piece_count,
    description=excluded.description;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Sarah Burton' AND c.label='Givenchy' AND c.season='Fall/Winter' AND c.release_year=2025), 'youtube', '6K37zIVNpJI')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Sarah Burton' AND c.label='Alexander McQueen' AND c.season='Spring/Summer' AND c.release_year=2024), 'youtube', 'EASTZ800WHA')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Lee Alexander McQueen' AND c.label='Alexander McQueen' AND c.season='Spring/Summer' AND c.release_year=1999), 'youtube', 'Qv8Hx3cWB74')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Grace Wales Bonner' AND c.label='Wales Bonner' AND c.season='Spring/Summer' AND c.release_year=2024), 'youtube', 'akJxFSRW03U')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jonathan Anderson' AND c.label='JW Anderson' AND c.season='Spring/Summer' AND c.release_year=2024), 'youtube', 'oYtZVDZWCes')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Junya Watanabe' AND c.label='Junya Watanabe MAN' AND c.season='Spring/Summer' AND c.release_year=2025), 'youtube', 'vQCKQaweG3M')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Miuccia Prada' AND c.label='Prada' AND c.season='Spring/Summer' AND c.release_year=2012), 'youtube', 'JgaGXv1XnrA')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Demna Gvasalia' AND c.label='Balenciaga' AND c.season='Spring/Summer' AND c.release_year=2023), 'youtube', 'Yh_1K9s6UV0')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Virgil Abloh' AND c.label='Louis Vuitton' AND c.season='Spring/Summer' AND c.release_year=2019), 'youtube', 'I1AqjvdiubA')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Chitose Abe' AND c.label='Sacai' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2019), 'youtube', 'WFKlbKp5KX0')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Rick Owens' AND c.label='Rick Owens' AND c.season='Spring/Summer' AND c.release_year=2014), 'youtube', 'TirA415R7o4')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Rei Kawakubo' AND c.label='Comme des Garçons' AND c.season='Fall/Winter' AND c.release_year=2024), 'youtube', 'A8appJ3QQhU')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Demna Gvasalia' AND c.label='Balenciaga' AND c.season='Fall/Winter' AND c.release_year=2024), 'youtube', 'Us5MCN-jDpo')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raf Simons' AND c.label='Prada' AND c.season='Spring/Summer' AND c.release_year=2024), 'youtube', 'z0IYqovHDJY')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raf Simons' AND c.label='Raf Simons' AND c.season='Fall/Winter' AND c.release_year=2001), 'source', 'https://www.vogue.com/fashion-shows/fall-2001-menswear/raf-simons')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raf Simons' AND c.label='Raf Simons' AND c.season='Fall/Winter' AND c.release_year=2001), 'youtube', 'oXsQ4NMQ6B8')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raf Simons' AND c.label='Raf Simons' AND c.season='Fall/Winter' AND c.release_year=2016), 'source', 'https://www.vogue.com/fashion-shows/fall-2016-menswear/raf-simons')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raf Simons' AND c.label='Raf Simons' AND c.season='Fall/Winter' AND c.release_year=2016), 'youtube', 'SO3w8LNeenk')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raf Simons' AND c.label='Raf Simons' AND c.season='Fall/Winter' AND c.release_year=2017), 'source', 'https://www.vogue.com/fashion-shows/fall-2017-menswear/raf-simons')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raf Simons' AND c.label='Raf Simons' AND c.season='Fall/Winter' AND c.release_year=2017), 'youtube', '7PWuASfvjeU')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raf Simons' AND c.label='Raf Simons' AND c.season='Spring/Summer' AND c.release_year=2019), 'source', 'https://www.vogue.com/fashion-shows/spring-2019-menswear/raf-simons')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raf Simons' AND c.label='Raf Simons' AND c.season='Spring/Summer' AND c.release_year=2019), 'youtube', '15v60PqOT_Y')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Spring/Summer' AND c.release_year=2016), 'source', 'https://dismagazine.com/discussion/79659/telfar-ss-2016/')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Spring/Summer' AND c.release_year=2016), 'youtube', 'iDXTtd6TKHk')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Fall/Winter' AND c.release_year=2017), 'source', 'https://www.vogue.com/fashion-shows/fall-2017-ready-to-wear/telfar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Fall/Winter' AND c.release_year=2017), 'youtube', 'NjogrrcLUzs')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Fall/Winter' AND c.release_year=2022), 'source', 'https://www.vogue.com/fashion-shows/fall-2022-ready-to-wear/telfar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Fall/Winter' AND c.release_year=2022), 'youtube', '2qo76POnvVE')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Ye (Kanye West)' AND c.label='Yeezy' AND c.season='Fall/Winter' AND c.release_year=2015), 'source', 'https://pausemag.co.uk/2015/02/adidas-originals-x-kanye-west-yeezy-season-1-video/')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Ye (Kanye West)' AND c.label='Yeezy' AND c.season='Fall/Winter' AND c.release_year=2015), 'youtube', 'TEYaLzRDyIA')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Ye (Kanye West)' AND c.label='Yeezy' AND c.season='Fall/Winter' AND c.release_year=2016), 'source', 'https://www.vogue.com/video/watch/yeezy-season-3-kanye-west-kim-kardashian-west-new-york-fashion-week')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Ye (Kanye West)' AND c.label='Yeezy' AND c.season='Fall/Winter' AND c.release_year=2016), 'youtube', '1Ph6qxV06AA')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Ye (Kanye West)' AND c.label='Yeezy' AND c.season='Spring/Summer' AND c.release_year=2017), 'youtube', 'C0XfvDTao88')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Ye (Kanye West)' AND c.label='Yeezy' AND c.season='Fall/Winter' AND c.release_year=2020), 'source', 'https://www.showstudio.com/collections/fall-winter-2020/yeezy')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Ye (Kanye West)' AND c.label='Yeezy' AND c.season='Fall/Winter' AND c.release_year=2020), 'youtube', 'IyfFqwtzAM0')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Vivienne Westwood' AND c.label='Vivienne Westwood' AND c.season='Spring/Summer' AND c.release_year=2018), 'source', 'https://www.vogue.com/fashion-shows/spring-2018-ready-to-wear/vivienne-westwood')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Vivienne Westwood' AND c.label='Vivienne Westwood' AND c.season='Spring/Summer' AND c.release_year=2018), 'youtube', 'h8FlvedZok8')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Galliano' AND c.label='Maison Margiela' AND c.season='Spring/Summer Couture' AND c.release_year=2024), 'source', 'https://www.showstudio.com/cms/documents/2782/MM_PRESS_RELEASE_ARTISANAL_2024.pdf')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Galliano' AND c.label='Maison Margiela' AND c.season='Spring/Summer Couture' AND c.release_year=2024), 'youtube', 'lmkjYQ1fkEM')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Dries Van Noten' AND c.label='Dries Van Noten' AND c.season='Spring/Summer' AND c.release_year=2024), 'source', 'https://www.driesvannoten.com/en-gb/pages/show-ss-24-women')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Dries Van Noten' AND c.label='Dries Van Noten' AND c.season='Spring/Summer' AND c.release_year=2024), 'youtube', 'q8p59nZJyiE')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Galliano' AND c.label='Givenchy' AND c.season='Fall/Winter Couture' AND c.release_year=1996), 'source', 'https://www.vogue.com/fashion-shows/fall-1996-couture/givenchy')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Galliano' AND c.label='Givenchy' AND c.season='Fall/Winter Couture' AND c.release_year=1996), 'youtube', 'zrXLlpu4YKU')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Galliano' AND c.label='Christian Dior' AND c.season='Spring/Summer Couture' AND c.release_year=2004), 'source', 'https://www.vogue.com/fashion-shows/spring-2004-couture/christian-dior')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Galliano' AND c.label='Christian Dior' AND c.season='Spring/Summer Couture' AND c.release_year=2004), 'youtube', 'Yqs-igIvtsg')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Galliano' AND c.label='Christian Dior' AND c.season='Fall/Winter Couture' AND c.release_year=2007), 'source', 'https://www.vogue.com/fashion-shows/fall-2007-couture/christian-dior')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Galliano' AND c.label='Christian Dior' AND c.season='Fall/Winter Couture' AND c.release_year=2007), 'youtube', 'F9yiI1MojKQ')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Chitose Abe' AND c.label='Sacai' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2017), 'source', 'https://www.vogue.com/article/sacai-fall-2017-collection-inspirations')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Chitose Abe' AND c.label='Sacai' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2017), 'youtube', 'OJXQhJjE4qQ')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Chitose Abe' AND c.label='Sacai' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2020), 'source', 'https://www.vogue.com/fashion-shows/fall-2020-ready-to-wear/sacai')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Chitose Abe' AND c.label='Sacai' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2020), 'youtube', 'Obzo4m4ywtw')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Chitose Abe' AND c.label='Sacai' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2022), 'source', 'https://www.vogue.com/fashion-shows/spring-2022-ready-to-wear/sacai')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Chitose Abe' AND c.label='Sacai' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2022), 'youtube', 'clATdmulOSY')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Chitose Abe' AND c.label='Sacai' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2023), 'source', 'https://www.vogue.com/fashion-shows/spring-2023-ready-to-wear/sacai')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Chitose Abe' AND c.label='Sacai' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2023), 'youtube', 'nW2laq9XPdc')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jonathan Anderson' AND c.label='Loewe' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2022), 'source', 'https://www.loewe.com/int/en/stories-collection/ss22-women-runway.html')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jonathan Anderson' AND c.label='Loewe' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2022), 'youtube', 'YPxm91BZbLg')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jonathan Anderson' AND c.label='Loewe' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2023), 'source', 'https://www.vogue.com/fashion-shows/spring-2023-ready-to-wear/loewe')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jonathan Anderson' AND c.label='Loewe' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2023), 'youtube', 'Jdbw1WNkrq8')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jonathan Anderson' AND c.label='Christian Dior' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2026), 'source', 'https://www.vogue.com/fashion-shows/spring-2026-ready-to-wear/christian-dior')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jonathan Anderson' AND c.label='Christian Dior' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2026), 'youtube', 'CwmKr-wkj1M')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jonathan Anderson' AND c.label='Christian Dior' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2026), 'source', 'https://www.vogue.com/fashion-shows/fall-2026-ready-to-wear/christian-dior')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jonathan Anderson' AND c.label='Christian Dior' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2026), 'youtube', '8kfJf8Or5sk')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jonathan Anderson' AND c.label='JW Anderson' AND c.season='Fall/Winter Menswear + Pre-Fall' AND c.release_year=2022), 'source', 'https://www.vogue.com/fashion-shows/fall-2022-ready-to-wear/j-w-anderson')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jonathan Anderson' AND c.label='JW Anderson' AND c.season='Fall/Winter Menswear + Pre-Fall' AND c.release_year=2022), 'youtube', 'G2aZopq138s')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Junya Watanabe' AND c.label='Junya Watanabe Comme des Garçons' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2000), 'source', 'https://www.vogue.com/fashion-shows/spring-2000-ready-to-wear/junya-watanabe')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Junya Watanabe' AND c.label='Junya Watanabe Comme des Garçons' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2000), 'source', 'https://www.vogue.com/fashion-shows/fall-2000-ready-to-wear/junya-watanabe')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Junya Watanabe' AND c.label='Junya Watanabe Comme des Garçons' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2003), 'source', 'https://www.vogue.com/fashion-shows/spring-2003-ready-to-wear/junya-watanabe')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Junya Watanabe' AND c.label='Junya Watanabe Comme des Garçons' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2003), 'source', 'https://www.vogue.com/fashion-shows/fall-2003-ready-to-wear/junya-watanabe')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Junya Watanabe' AND c.label='Junya Watanabe Comme des Garçons' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2003), 'youtube', 'rxLcFhns9VU')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Junya Watanabe' AND c.label='Junya Watanabe Comme des Garçons' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2006), 'source', 'https://www.vogue.com/fashion-shows/fall-2006-ready-to-wear/junya-watanabe')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Junya Watanabe' AND c.label='Junya Watanabe Comme des Garçons' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2006), 'youtube', 'RK_DwhhlHo8')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Junya Watanabe' AND c.label='Junya Watanabe' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2023), 'source', 'https://www.vogue.com/fashion-shows/fall-2023-ready-to-wear/junya-watanabe')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Junya Watanabe' AND c.label='Junya Watanabe' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2023), 'youtube', 'k8Nq622YAMI')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Junya Watanabe' AND c.label='Junya Watanabe' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2024), 'source', 'https://www.vogue.com/fashion-shows/spring-2024-ready-to-wear/junya-watanabe')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Junya Watanabe' AND c.label='Junya Watanabe' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2024), 'youtube', 'Kxpmpk8TLtE')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Vivienne Westwood' AND c.label='World’s End / Vivienne Westwood' AND c.season='Fall/Winter' AND c.release_year=1981), 'source', 'https://www.vam.ac.uk/articles/vivienne-westwood-a-taste-for-the-past')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Vivienne Westwood' AND c.label='World’s End / Vivienne Westwood' AND c.season='Fall/Winter' AND c.release_year=1982), 'source', 'https://nga.gov.au/exhibitions/vivienne-westwood/')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Vivienne Westwood' AND c.label='Vivienne Westwood' AND c.season='Spring/Summer' AND c.release_year=1985), 'source', 'https://www.viviennewestwood.com/en-au/westwood-world/the-story-so-far/')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Vivienne Westwood' AND c.label='Vivienne Westwood' AND c.season='Fall/Winter' AND c.release_year=1987), 'source', 'https://www.viviennewestwood.com/en-gb/westwood-world/heritage/westwood-heritage--a-history-with-harris-tweed%C2%AE/')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Vivienne Westwood' AND c.label='Vivienne Westwood Gold Label' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=1993), 'source', 'https://www.viviennewestwood.com/en-au/westwood-world/the-story-so-far/')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Vivienne Westwood' AND c.label='Vivienne Westwood Gold Label' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=1993), 'youtube', '2qKIP1Bgmq4')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Vivienne Westwood' AND c.label='Vivienne Westwood Gold Label' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=1994), 'source', 'https://www.articlesofclothing.com/p/vivienne-westwood-springsummer-1994')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Vivienne Westwood' AND c.label='Vivienne Westwood Gold Label' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=1994), 'youtube', 'H7l2vAwwX0w')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Vivienne Westwood' AND c.label='Vivienne Westwood' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2019), 'source', 'https://www.vogue.co.uk/article/vivienne-westwood-london-fashion-week-2019-political-talking-points')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Vivienne Westwood' AND c.label='Vivienne Westwood' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2019), 'youtube', 'D_RHOnVM-I0')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2013), 'source', 'https://hypebeast.com/2013/2/hood-by-air-2013-fall-winter-runway-video')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2013), 'youtube', 'di7Nkjrcm_s')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2014), 'source', 'https://www.vogue.com/fashion-shows/fall-2014-ready-to-wear/hood-by-air')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2014), 'youtube', '7GKIKA2bByo')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2015), 'source', 'https://www.vogue.com/fashion-shows/spring-2015-ready-to-wear/hood-by-air')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2015), 'youtube', 'RWTYh4JdafM')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2015), 'source', 'https://www.vogue.com/fashion-shows/fall-2015-ready-to-wear/hood-by-air')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Fall/Winter Ready-to-Wear' AND c.release_year=2015), 'youtube', 'z5OIrlQQXu8')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Spring/Summer Menswear' AND c.release_year=2016), 'source', 'https://www.vogue.com/fashion-shows/spring-2016-menswear/hood-by-air')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Spring/Summer Ready-to-Wear' AND c.release_year=2016), 'source', 'https://www.vogue.com/fashion-shows/spring-2016-ready-to-wear/hood-by-air')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Spring/Summer Menswear' AND c.release_year=2017), 'source', 'https://www.vogue.com/fashion-shows/spring-2017-menswear/hood-by-air')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Longchamp by Shayne Oliver' AND c.season='Spring/Summer Capsule' AND c.release_year=2018), 'source', 'https://www.vogue.com/article/hba-shayne-oliver-longchamp-collaboration-vogue-may-2018-issue')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Colmar A.G.E. by Shayne Oliver' AND c.season='Fall/Winter Capsule' AND c.release_year=2018), 'source', 'https://www.vogue.it/moda/news/2018/09/15/shayne-oliver-e-colmar-vogue-italia-settembre-2018')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Colmar A.G.E. by Shayne Oliver' AND c.season='Spring/Summer Capsule' AND c.release_year=2019), 'source', 'https://viacomit.net/2019/02/14/colmar-age-x-shayne-oliver-printempsete-2019/')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Colmar A.G.E. by Shayne Oliver' AND c.season='Fall/Winter Capsule' AND c.release_year=2019), 'source', 'https://hypebeast.com/2019/7/colmar-a-g-e-shayne-oliver-fall-winter-2019-collection-lookbook')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Ready-to-Wear' AND c.release_year=2021), 'source', 'https://www.lofficielusa.com/fashion/hood-by-air-returns-naomi-campbell-the-prologue-shayne-oliver')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Shayne Oliver' AND c.season='Fall/Winter Presentation' AND c.release_year=2022), 'source', 'https://www.vogue.com/article/shayne-oliver-returns-to-new-york-fashion-week-fall-2022')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Anonymous Club' AND c.season='Club Couture' AND c.release_year=2022), 'source', 'https://www.vogue.com/article/shayne-oliver-anonymous-club-club-couture')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Anonymous Club' AND c.season='Berlin Spring/Summer' AND c.release_year=2024), 'source', 'https://www.vogue.com/fashion-shows/berlin-spring-2024/anonymous-club')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Anonymous Club' AND c.season='Berlin Spring/Summer' AND c.release_year=2025), 'source', 'https://www.vogue.com/fashion-shows/berlin-spring-2025/anonymous-club')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Fall/Winter' AND c.release_year=2016), 'source', 'https://www.vogue.com/fashion-shows/fall-2016-ready-to-wear/hood-by-air')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Fall/Winter' AND c.release_year=2016), 'youtube', '7GUTEL5wgBU')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Hood By Air' AND c.season='Spring/Summer' AND c.release_year=2017), 'source', 'https://www.vogue.com/fashion-shows/spring-2017-ready-to-wear/hood-by-air')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Helmut Lang' AND c.season='Spring/Summer' AND c.release_year=2018), 'source', 'https://www.vogue.com/fashion-shows/spring-2018-ready-to-wear/helmut-lang')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Helmut Lang' AND c.season='Spring/Summer' AND c.release_year=2018), 'youtube', '_OeZdBVsZO0')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Diesel' AND c.season='Fall/Winter' AND c.release_year=2018), 'source', 'https://hypebeast.com/2018/3/diesel-red-tag-project-shayne-oliver-collection')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Shayne Oliver' AND c.label='Anonymous Club' AND c.season='Resort' AND c.release_year=2024), 'source', 'https://www.vogue.com/fashion-shows/resort-2024/anonymous-club')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Fall/Winter 2014' AND c.release_year=2014), 'source', 'https://www.dazeddigital.com/fashion/article/21099/1/telfar-clemens-vs-babak-radboy')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Spring/Summer 2015' AND c.release_year=2015), 'source', 'https://www.vogue.com/fashion-shows/spring-2015-ready-to-wear/telfar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Fall/Winter 2015' AND c.release_year=2015), 'source', 'https://www.vogue.com/fashion-shows/fall-2015-ready-to-wear/telfar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Fall/Winter 2016' AND c.release_year=2016), 'source', 'https://www.vogue.com/fashion-shows/fall-2016-ready-to-wear/telfar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Spring/Summer 2017' AND c.release_year=2017), 'source', 'https://www.vogue.com/fashion-shows/spring-2017-ready-to-wear/telfar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar x White Castle' AND c.season='Summer 2017' AND c.release_year=2017), 'source', 'https://www.vogue.com/article/fashion-runway-telfar-white-castle-camron')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Spring/Summer 2018' AND c.release_year=2018), 'source', 'https://www.vogue.com/fashion-shows/spring-2018-ready-to-wear/telfar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Fall/Winter 2018' AND c.release_year=2018), 'source', 'https://www.vogue.com/fashion-shows/fall-2018-ready-to-wear/telfar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Spring/Summer 2019' AND c.release_year=2019), 'source', 'https://www.vogue.com/fashion-shows/spring-2019-ready-to-wear/telfar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Fall/Winter 2019' AND c.release_year=2019), 'source', 'https://time.com/5525325/telfar-nyfw-2019/')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Fall/Winter 2020 Menswear' AND c.release_year=2020), 'source', 'https://www.vogue.com/article/telfar-pitti-uomo-fall-2020-runway-show')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar x UGG' AND c.season='Spring/Summer 2021' AND c.release_year=2021), 'source', 'https://www.vogue.com/article/young-fashion-designers-boost-uggs-brand-cachet-whats-in-it-for-them')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar x Converse' AND c.season='Spring/Summer 2021' AND c.release_year=2021), 'source', 'https://www.refinery29.com/en-gb/2021/06/10554090/telfar-converse-collaboration-activewear')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Tokyo 2020 Olympics' AND c.release_year=2021), 'source', 'https://www.lsnglobal.com/daily-signals/article/27159/telfar-captures-liberia-s-heritage-in-olympic-collection')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar x White Castle' AND c.season='Fall/Winter 2021' AND c.release_year=2021), 'source', 'https://compute.vogue.com/article/telfar-white-castle-uniforms-collaboration')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar x Moose Knuckles' AND c.season='Fall/Winter 2021' AND c.release_year=2021), 'source', 'https://www.vogue.com/article/telfar-outerwear-moose-knuckles')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Fall/Winter 2008' AND c.release_year=2008), 'source', 'https://www.mariebliss.studio/telfar-ss10-ss09-fw08-fw09')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Spring/Summer 2009' AND c.release_year=2009), 'source', 'https://www.mariebliss.studio/telfar-ss10-ss09-fw08-fw09')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Fall/Winter 2009' AND c.release_year=2009), 'source', 'https://www.mariebliss.studio/telfar-ss10-ss09-fw08-fw09')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Spring/Summer 2010' AND c.release_year=2010), 'source', 'https://www.mariebliss.studio/telfar-ss10-ss09-fw08-fw09')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar for Solange' AND c.season='Spring 2017' AND c.release_year=2017), 'source', 'https://www.guggenheim.org/event/solange-an-ode-to')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Telfar Clemens' AND c.label='Telfar' AND c.season='Spring/Summer' AND c.release_year=2020), 'source', 'https://www.vogue.in/fashion/content/teflar-opens-paris-fashion-week-we-are-migrants-thats-our-philosophy-in-general')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raul Lopez' AND c.label='Luar' AND c.season='Spring/Summer 2019' AND c.release_year=2019), 'source', 'https://www.vogue.com/fashion-shows/spring-2019-ready-to-wear/luar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raul Lopez' AND c.label='Luar' AND c.season='Fall/Winter 2019' AND c.release_year=2019), 'source', 'https://www.vogue.com/fashion-shows/fall-2019-ready-to-wear/luar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raul Lopez' AND c.label='Luar' AND c.season='Spring/Summer 2023' AND c.release_year=2023), 'source', 'https://www.vogue.com/fashion-shows/spring-2023-ready-to-wear/luar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raul Lopez' AND c.label='Luar' AND c.season='Fall/Winter 2023' AND c.release_year=2023), 'source', 'https://www.vogue.com/fashion-shows/fall-2023-ready-to-wear/luar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raul Lopez' AND c.label='Luar' AND c.season='Spring/Summer 2024' AND c.release_year=2024), 'source', 'https://www.vogue.com/fashion-shows/spring-2024-ready-to-wear/luar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raul Lopez' AND c.label='Luar' AND c.season='Fall/Winter 2024' AND c.release_year=2024), 'source', 'https://www.vogue.com/fashion-shows/fall-2024-ready-to-wear/luar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raul Lopez' AND c.label='Luar' AND c.season='Spring/Summer 2025' AND c.release_year=2025), 'source', 'https://www.vogue.com/fashion-shows/spring-2025-ready-to-wear/luar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raul Lopez' AND c.label='Luar' AND c.season='Fall/Winter 2025' AND c.release_year=2025), 'source', 'https://www.vogue.com/fashion-shows/fall-2025-ready-to-wear/luar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raul Lopez' AND c.label='Luar' AND c.season='Spring/Summer 2022' AND c.release_year=2022), 'source', 'https://www.vogue.com/fashion-shows/spring-2022-ready-to-wear/luar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Raul Lopez' AND c.label='Luar' AND c.season='Spring/Summer 2026' AND c.release_year=2026), 'source', 'https://www.vogue.com/fashion-shows/spring-2026-ready-to-wear/luar')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Tom Ford' AND c.label='Gucci' AND c.season='Fall/Winter 1995' AND c.release_year=1995), 'source', 'https://www.vogue.com/fashion-shows/fall-1995-ready-to-wear/gucci')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Tom Ford' AND c.label='Gucci' AND c.season='Spring/Summer 1996' AND c.release_year=1996), 'source', 'https://www.vogue.com/fashion-shows/spring-1996-ready-to-wear/gucci')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Tom Ford' AND c.label='Gucci' AND c.season='Fall/Winter 1996' AND c.release_year=1996), 'source', 'https://www.vogue.com/fashion-shows/fall-1996-ready-to-wear/gucci')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Tom Ford' AND c.label='Yves Saint Laurent Rive Gauche' AND c.season='Spring/Summer 2001' AND c.release_year=2001), 'source', 'https://www.vogue.com/fashion-shows/spring-2001-ready-to-wear/saint-laurent')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Tom Ford' AND c.label='Gucci' AND c.season='Fall/Winter 2004' AND c.release_year=2004), 'source', 'https://www.vogue.com/fashion-shows/fall-2004-ready-to-wear/gucci')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Tom Ford' AND c.label='Tom Ford' AND c.season='Spring/Summer 2011' AND c.release_year=2011), 'source', 'https://www.vogue.com/fashion-shows/spring-2011-ready-to-wear/tom-ford')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Tom Ford' AND c.label='Tom Ford' AND c.season='Spring/Summer 2018' AND c.release_year=2018), 'source', 'https://www.vogue.com/fashion-shows/spring-2018-ready-to-wear/tom-ford')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Tom Ford' AND c.label='Tom Ford' AND c.season='Spring/Summer 2023' AND c.release_year=2023), 'source', 'https://www.vogue.com/fashion-shows/spring-2023-ready-to-wear/tom-ford')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jun Takahashi' AND c.label='Undercover' AND c.season='Spring/Summer 2003' AND c.release_year=2003), 'source', 'https://www.vogue.com/fashion-shows/spring-2003-ready-to-wear/undercover')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jun Takahashi' AND c.label='Undercover' AND c.season='Fall/Winter 2003' AND c.release_year=2003), 'source', 'https://www.vogue.com/fashion-shows/fall-2003-ready-to-wear/undercover')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jun Takahashi' AND c.label='Undercover' AND c.season='Fall/Winter 2004' AND c.release_year=2004), 'source', 'https://www.vogue.com/fashion-shows/fall-2004-ready-to-wear/undercover')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jun Takahashi' AND c.label='Undercover' AND c.season='Fall/Winter 2005' AND c.release_year=2005), 'source', 'https://www.vogue.com/fashion-shows/fall-2005-ready-to-wear/undercover')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jun Takahashi' AND c.label='Undercover' AND c.season='Spring/Summer 2016' AND c.release_year=2016), 'source', 'https://www.vogue.com/fashion-shows/spring-2016-ready-to-wear/undercover')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jun Takahashi' AND c.label='Undercover' AND c.season='Spring/Summer 2018' AND c.release_year=2018), 'source', 'https://www.vogue.com/fashion-shows/spring-2018-ready-to-wear/undercover')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jun Takahashi' AND c.label='Undercover' AND c.season='Spring/Summer 2019 Menswear' AND c.release_year=2019), 'source', 'https://www.vogue.com/fashion-shows/spring-2019-menswear/undercover')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jun Takahashi' AND c.label='Undercover' AND c.season='Fall/Winter 2024' AND c.release_year=2024), 'source', 'https://www.vogue.com/fashion-shows/fall-2024-ready-to-wear/undercover')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Thom Browne' AND c.label='Thom Browne' AND c.season='Fall/Winter 2009 Menswear' AND c.release_year=2009), 'source', 'https://www.vogue.com/fashion-shows/fall-2009-menswear/thom-browne')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Thom Browne' AND c.label='Thom Browne' AND c.season='Fall/Winter 2012' AND c.release_year=2012), 'source', 'https://www.vogue.com/fashion-shows/fall-2012-ready-to-wear/thom-browne')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Thom Browne' AND c.label='Thom Browne' AND c.season='Spring/Summer 2014 Menswear' AND c.release_year=2014), 'source', 'https://www.vogue.com/fashion-shows/spring-2014-menswear/thom-browne')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Thom Browne' AND c.label='Thom Browne' AND c.season='Spring/Summer 2017 Menswear' AND c.release_year=2017), 'source', 'https://www.vogue.com/fashion-shows/spring-2017-menswear/thom-browne')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Thom Browne' AND c.label='Thom Browne' AND c.season='Fall/Winter 2017' AND c.release_year=2017), 'source', 'https://www.vogue.com/fashion-shows/fall-2017-ready-to-wear/thom-browne')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Thom Browne' AND c.label='Thom Browne' AND c.season='Spring/Summer 2018' AND c.release_year=2018), 'source', 'https://www.vogue.com/fashion-shows/spring-2018-ready-to-wear/thom-browne')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Thom Browne' AND c.label='Thom Browne' AND c.season='Fall/Winter 2022' AND c.release_year=2022), 'source', 'https://www.vogue.com/fashion-shows/fall-2022-ready-to-wear/thom-browne')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Thom Browne' AND c.label='Thom Browne' AND c.season='Fall/Winter 2023' AND c.release_year=2023), 'source', 'https://www.vogue.com/fashion-shows/fall-2023-ready-to-wear/thom-browne')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Thom Browne' AND c.label='Thom Browne' AND c.season='Fall/Winter 2024' AND c.release_year=2024), 'source', 'https://www.vogue.com/fashion-shows/fall-2024-ready-to-wear/thom-browne')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Yohji Yamamoto' AND c.label='Yohji Yamamoto' AND c.season='Spring/Summer 1982' AND c.release_year=1982), 'source', 'https://www.vam.ac.uk/articles/yohji-yamamoto-an-exhibition')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Yohji Yamamoto' AND c.label='Yohji Yamamoto' AND c.season='Fall/Winter 1986' AND c.release_year=1986), 'source', 'https://www.vogue.com/article/yohji-yamamoto-spring-2026-ready-to-wear-review')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Yohji Yamamoto' AND c.label='Yohji Yamamoto' AND c.season='Spring/Summer 1999' AND c.release_year=1999), 'source', 'https://www.vogue.com/fashion-shows/spring-1999-ready-to-wear/yohji-yamamoto')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Yohji Yamamoto' AND c.label='Yohji Yamamoto' AND c.season='Fall/Winter 2000' AND c.release_year=2000), 'source', 'https://www.vogue.com/fashion-shows/fall-2000-ready-to-wear/yohji-yamamoto')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Yohji Yamamoto' AND c.label='Y-3' AND c.season='Spring/Summer 2003' AND c.release_year=2003), 'source', 'https://www.adidas-group.com/en/magazine/innovation-stories/y-3-20-years-of-innovation')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Yohji Yamamoto' AND c.label='Yohji Yamamoto' AND c.season='Fall/Winter 2011' AND c.release_year=2011), 'source', 'https://www.vogue.com/fashion-shows/fall-2011-ready-to-wear/yohji-yamamoto')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Yohji Yamamoto' AND c.label='Yohji Yamamoto' AND c.season='Spring/Summer 2015' AND c.release_year=2015), 'source', 'https://www.vogue.com/fashion-shows/spring-2015-ready-to-wear/yohji-yamamoto')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Yohji Yamamoto' AND c.label='Yohji Yamamoto' AND c.season='Fall/Winter 2023' AND c.release_year=2023), 'source', 'https://www.vogue.com/fashion-shows/fall-2023-ready-to-wear/yohji-yamamoto')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Yohji Yamamoto' AND c.label='Yohji Yamamoto' AND c.season='Spring/Summer 2026' AND c.release_year=2026), 'source', 'https://www.vogue.com/fashion-shows/spring-2026-ready-to-wear/yohji-yamamoto')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Willy Chavarria' AND c.label='Willy Chavarria' AND c.season='Spring/Summer 2022 Menswear' AND c.release_year=2022), 'source', 'https://www.vogue.com/fashion-shows/spring-2022-menswear/willy-chavarria')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Willy Chavarria' AND c.label='Willy Chavarria' AND c.season='Spring/Summer 2023 Menswear' AND c.release_year=2023), 'source', 'https://www.vogue.com/fashion-shows/spring-2023-menswear/willy-chavarria')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Willy Chavarria' AND c.label='Willy Chavarria' AND c.season='Fall/Winter 2023 Menswear' AND c.release_year=2023), 'source', 'https://www.vogue.com/fashion-shows/fall-2023-menswear/willy-chavarria')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Willy Chavarria' AND c.label='Willy Chavarria' AND c.season='Spring/Summer 2024 Menswear' AND c.release_year=2024), 'source', 'https://www.vogue.com/fashion-shows/spring-2024-menswear/willy-chavarria')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Willy Chavarria' AND c.label='Willy Chavarria' AND c.season='Fall/Winter 2024 Menswear' AND c.release_year=2024), 'source', 'https://www.vogue.com/fashion-shows/fall-2024-menswear/willy-chavarria')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Willy Chavarria' AND c.label='Willy Chavarria' AND c.season='Spring/Summer 2025 Menswear' AND c.release_year=2025), 'source', 'https://www.vogue.com/fashion-shows/spring-2025-menswear/willy-chavarria')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Willy Chavarria' AND c.label='Willy Chavarria' AND c.season='Fall/Winter 2025 Menswear' AND c.release_year=2025), 'source', 'https://www.vogue.com/fashion-shows/fall-2025-menswear/willy-chavarria')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Willy Chavarria' AND c.label='Willy Chavarria' AND c.season='Spring/Summer 2026 Menswear' AND c.release_year=2026), 'source', 'https://www.vogue.com/fashion-shows/spring-2026-menswear/willy-chavarria')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Olivier Rousteing' AND c.label='Balmain' AND c.season='Spring/Summer 2012' AND c.release_year=2012), 'source', 'https://www.vogue.com/fashion-shows/spring-2012-ready-to-wear/balmain')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Olivier Rousteing' AND c.label='Balmain' AND c.season='Fall/Winter 2014' AND c.release_year=2014), 'source', 'https://www.vogue.com/fashion-shows/fall-2014-ready-to-wear/balmain')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Olivier Rousteing' AND c.label='Balmain x H&M' AND c.season='Fall/Winter 2015' AND c.release_year=2015), 'source', 'https://www.vogue.com/article/balmain-hm-collaboration-olivier-rousteing')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Olivier Rousteing' AND c.label='Balmain' AND c.season='Spring/Summer 2017' AND c.release_year=2017), 'source', 'https://www.vogue.com/fashion-shows/spring-2017-ready-to-wear/balmain')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Olivier Rousteing' AND c.label='Balmain' AND c.season='Spring/Summer 2020' AND c.release_year=2020), 'source', 'https://www.vogue.com/fashion-shows/spring-2020-ready-to-wear/balmain')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Olivier Rousteing' AND c.label='Balmain' AND c.season='Spring/Summer 2022' AND c.release_year=2022), 'source', 'https://www.vogue.com/fashion-shows/spring-2022-ready-to-wear/balmain')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Olivier Rousteing' AND c.label='Balmain' AND c.season='Fall/Winter 2024' AND c.release_year=2024), 'source', 'https://www.vogue.com/fashion-shows/fall-2024-ready-to-wear/balmain')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Olivier Rousteing' AND c.label='Balmain' AND c.season='Spring/Summer 2026' AND c.release_year=2026), 'source', 'https://www.vogue.com/fashion-shows/spring-2026-ready-to-wear/balmain')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Issey Miyake' AND c.label='Issey Miyake' AND c.season='Spring/Summer 1976' AND c.release_year=1976), 'source', 'https://www.metmuseum.org/essays/miyake-kawakubo-and-yamamoto-japanese-fashion-in-the-twentieth-century')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Issey Miyake' AND c.label='Issey Miyake' AND c.season='Spring/Summer 1980' AND c.release_year=1980), 'source', 'https://www.metmuseum.org/essays/miyake-kawakubo-and-yamamoto-japanese-fashion-in-the-twentieth-century')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Issey Miyake' AND c.label='Issey Miyake' AND c.season='Spring/Summer 1989' AND c.release_year=1989), 'source', 'https://www.moma.org/artists/6637')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Issey Miyake' AND c.label='Pleats Please Issey Miyake' AND c.season='Spring/Summer 1993' AND c.release_year=1993), 'source', 'https://www.isseymiyake.com/en/brands/pleatsplease')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Issey Miyake' AND c.label='Issey Miyake' AND c.season='Spring/Summer 1995' AND c.release_year=1995), 'source', 'https://www.vogue.com/fashion-shows/spring-1995-ready-to-wear/issey-miyake')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Issey Miyake' AND c.label='Issey Miyake' AND c.season='Spring/Summer 1998' AND c.release_year=1998), 'source', 'https://www.vogue.com/fashion-shows/spring-1998-ready-to-wear/issey-miyake')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Issey Miyake' AND c.label='Issey Miyake' AND c.season='Spring/Summer 1999' AND c.release_year=1999), 'source', 'https://www.moma.org/collection/works/100300')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Issey Miyake' AND c.label='Issey Miyake' AND c.season='Fall/Winter 1999' AND c.release_year=1999), 'source', 'https://www.vogue.com/fashion-shows/fall-1999-ready-to-wear/issey-miyake')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jil Sander' AND c.label='Jil Sander' AND c.season='Spring/Summer 1992' AND c.release_year=1992), 'source', 'https://www.vogue.com/fashion-shows/spring-1992-ready-to-wear/jil-sander')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jil Sander' AND c.label='Jil Sander' AND c.season='Fall/Winter 1993' AND c.release_year=1993), 'source', 'https://www.vogue.com/fashion-shows/fall-1993-ready-to-wear/jil-sander')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jil Sander' AND c.label='Jil Sander' AND c.season='Spring/Summer 1996' AND c.release_year=1996), 'source', 'https://www.vogue.com/fashion-shows/spring-1996-ready-to-wear/jil-sander')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jil Sander' AND c.label='Jil Sander' AND c.season='Fall/Winter 1997' AND c.release_year=1997), 'source', 'https://www.vogue.com/fashion-shows/fall-1997-ready-to-wear/jil-sander')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jil Sander' AND c.label='Jil Sander' AND c.season='Spring/Summer 2000' AND c.release_year=2000), 'source', 'https://www.vogue.com/fashion-shows/spring-2000-ready-to-wear/jil-sander')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jil Sander' AND c.label='Jil Sander' AND c.season='Spring/Summer 2004' AND c.release_year=2004), 'source', 'https://www.vogue.com/fashion-shows/spring-2004-ready-to-wear/jil-sander')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jil Sander' AND c.label='Jil Sander' AND c.season='Spring/Summer 2013' AND c.release_year=2013), 'source', 'https://www.vogue.com/fashion-shows/spring-2013-ready-to-wear/jil-sander')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Jil Sander' AND c.label='Jil Sander' AND c.season='Spring/Summer 2014' AND c.release_year=2014), 'source', 'https://www.vogue.com/fashion-shows/spring-2014-ready-to-wear/jil-sander')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Craig Green' AND c.label='Craig Green' AND c.season='Spring/Summer 2013 Menswear' AND c.release_year=2013), 'source', 'https://www.vogue.com/fashion-shows/spring-2013-menswear/craig-green')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Craig Green' AND c.label='Craig Green' AND c.season='Fall/Winter 2015 Menswear' AND c.release_year=2015), 'source', 'https://www.vogue.com/fashion-shows/fall-2015-menswear/craig-green')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Craig Green' AND c.label='Craig Green' AND c.season='Fall/Winter 2016 Menswear' AND c.release_year=2016), 'source', 'https://www.vogue.com/fashion-shows/fall-2016-menswear/craig-green')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Craig Green' AND c.label='Craig Green' AND c.season='Spring/Summer 2017 Menswear' AND c.release_year=2017), 'source', 'https://www.vogue.com/fashion-shows/spring-2017-menswear/craig-green')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Craig Green' AND c.label='Craig Green' AND c.season='Spring/Summer 2019 Menswear' AND c.release_year=2019), 'source', 'https://www.vogue.com/fashion-shows/spring-2019-menswear/craig-green')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Craig Green' AND c.label='Craig Green' AND c.season='Fall/Winter 2020 Menswear' AND c.release_year=2020), 'source', 'https://www.vogue.com/fashion-shows/fall-2020-menswear/craig-green')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Craig Green' AND c.label='Craig Green' AND c.season='Spring/Summer 2025 Menswear' AND c.release_year=2025), 'source', 'https://www.vogue.com/fashion-shows/spring-2025-menswear/craig-green')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='Craig Green' AND c.label='Craig Green' AND c.season='Spring/Summer 2026 Menswear' AND c.release_year=2026), 'source', 'https://www.vogue.com/fashion-shows/spring-2026-menswear/craig-green')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Elliott' AND c.label='John Elliott' AND c.season='Fall/Winter 2015 Menswear' AND c.release_year=2015), 'source', 'https://www.vogue.com/fashion-shows/fall-2015-menswear/john-elliot-co')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Elliott' AND c.label='John Elliott' AND c.season='Fall/Winter 2016 Menswear' AND c.release_year=2016), 'source', 'https://www.vogue.com/fashion-shows/fall-2016-menswear/john-elliot-co')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Elliott' AND c.label='John Elliott' AND c.season='Spring/Summer 2017 Menswear' AND c.release_year=2017), 'source', 'https://www.vogue.com/fashion-shows/spring-2017-menswear/john-elliot-co')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Elliott' AND c.label='John Elliott' AND c.season='Spring/Summer 2018 Menswear' AND c.release_year=2018), 'source', 'https://www.vogue.com/fashion-shows/spring-2018-menswear/john-elliot-co')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Elliott' AND c.label='John Elliott' AND c.season='Fall/Winter 2018 Menswear' AND c.release_year=2018), 'source', 'https://www.vogue.com/fashion-shows/fall-2018-menswear/john-elliot-co')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Elliott' AND c.label='John Elliott' AND c.season='Fall/Winter 2019 Menswear' AND c.release_year=2019), 'source', 'https://www.vogue.com/fashion-shows/fall-2019-menswear/john-elliot-co')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Elliott' AND c.label='John Elliott' AND c.season='Spring/Summer 2023 Menswear' AND c.release_year=2023), 'source', 'https://www.vogue.com/fashion-shows/spring-2023-menswear/john-elliot-co')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;

INSERT INTO collection_media (collection_id, media_type, media_value)
VALUES ((SELECT c.id FROM collections c JOIN designers d ON d.id=c.designer_id WHERE d.full_name='John Elliott' AND c.label='John Elliott' AND c.season='Fall/Winter 2024 Menswear' AND c.release_year=2024), 'source', 'https://www.vogue.com/fashion-shows/fall-2024-menswear/john-elliot-co')
ON CONFLICT(collection_id, media_type) DO UPDATE SET media_value=excluded.media_value;
