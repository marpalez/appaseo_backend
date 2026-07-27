
INSERT INTO usuarios
    (email, contrasena, nombre, poblacion, descripcion, rutaFotoPerfil, esCuidador, telefono, fechaRegistro, puedeEnviarFotos, admiteAnimalesCuidados, esFumador)
VALUES
    -- ── spain (4) ──
    ('david@gmail.com',     '1234', 'david',     'spain',       '.', '/fotos/david_at_gmail.com.png',  0, '',          '01/01/2026', '',          '',          ''),
    ('maria@gmail.com',     '1234', 'maria',     'spain',       'Experienced with dogs and cats, I live near a big park',                             '', 1, '611223344', '03/02/2026', 'si',        'si',        'no'),
    ('javier@gmail.com',    '1234', 'javier',    'spain',       'Part-time caregiver, I accept small dogs only',                                      '', 1, '622334455', '14/02/2026', 'no',        'no',        'si'),
    ('carmen@gmail.com',    '1234', 'carmen',    'spain',       '',                                                                                   '', 0, '',          '18/02/2026', '',          '',          ''),
    -- ── france (4) ──
    ('noelia@gmail.com',    '1234', 'noelia',    'france',      'Animal lover with 5 years of experience caring for all types of pets', '/fotos/noelia_at_gmail.com.png', 1, '612345678', '15/01/2026', 'si',        'consultar', 'no'),
    ('camille@gmail.com',   '1234', 'camille',   'france',      'Certified dog trainer, daily walks in the countryside',                              '', 1, '633445566', '05/02/2026', 'si',        'consultar', 'no'),
    ('hugo@gmail.com',      '1234', 'hugo',      'france',      '',                                                                                   '', 0, '',          '09/02/2026', '',          '',          ''),
    ('lea@gmail.com',       '1234', 'lea',       'france',      'Cat specialist, calm apartment with balcony',                                        '', 1, '644556677', '20/02/2026', 'si',        'no',        'no'),
    -- ── italy (4) ──
    ('pablo@gmail.com',     '1234', 'pablo',     'italy',       'I take care of dogs with lots of love, twice a day walks guaranteed', '/fotos/pablo_at_gmail.com.png',  1, '623456789', '20/01/2026', 'si',        'no',        'no'),
    ('giulia@gmail.com',    '1234', 'giulia',    'italy',       'I grew up with animals, big terrace and lots of patience',                           '', 1, '655667788', '08/02/2026', 'si',        'si',        'no'),
    ('marco@gmail.com',     '1234', 'marco',     'italy',       '',                                                                                   '', 0, '',          '11/02/2026', '',          '',          ''),
    ('francesca@gmail.com', '1234', 'francesca', 'italy',       'Vet student, I can handle medication and special care',                              '', 1, '666778899', '25/02/2026', 'consultar', 'si',        'no'),
    -- ── germany (4) ──
    ('isabel@gmail.com',    '1234', 'isabel',    'germany',     'Specialist in cats and exotic animals, quiet home without children', '/fotos/isabel_at_gmail.com.png', 1, '634567890', '10/01/2026', 'si',        'si',        'no'),
    ('lukas@gmail.com',     '1234', 'lukas',     'germany',     'Runner, perfect for energetic dogs that need long walks',                            '', 1, '677889900', '06/02/2026', 'si',        'no',        'no'),
    ('hannah@gmail.com',    '1234', 'hannah',    'germany',     '',                                                                                   '', 0, '',          '13/02/2026', '',          '',          ''),
    ('felix@gmail.com',     '1234', 'felix',     'germany',     'I work from home, your pet will never be alone',                                     '', 1, '688990011', '22/02/2026', 'no',        'consultar', 'ocasionalmente'),
    -- ── portugal (3) ──
    ('andres@gmail.com',    '1234', 'andres',    'portugal',    'Experienced caregiver in Portugal, I have a large garden', '/fotos/andres_at_gmail.com.png', 1, '645678901', '05/01/2026', 'consultar', 'consultar', 'ocasionalmente'),
    ('joao@gmail.com',      '1234', 'joao',      'portugal',    'House with garden near the beach, dogs welcome',                                     '', 1, '699001122', '07/02/2026', 'si',        'si',        'no'),
    ('beatriz@gmail.com',   '1234', 'beatriz',   'portugal',    '',                                                                                   '', 0, '',          '16/02/2026', '',          '',          ''),
    -- ── netherlands (4) ──
    ('cintia@gmail.com',    '1234', 'cintia',    'netherlands', 'new caregiver with great enthusiasm and love for animals', '/fotos/cintia_at_gmail.com.png', 1, '656789012', '25/01/2026', 'si',        'no',        'no'),
    ('daan@gmail.com',      '1234', 'daan',      'netherlands', 'Bike rides with your dog along the canals, active care',                             '', 1, '610111213', '04/02/2026', 'si',        'no',        'no'),
    ('sanne@gmail.com',     '1234', 'sanne',     'netherlands', '',                                                                                   '', 0, '',          '12/02/2026', '',          '',          ''),
    ('bram@gmail.com',      '1234', 'bram',      'netherlands', 'New to pet sitting, flexible schedule and good prices',                              '', 1, '621222324', '26/02/2026', 'consultar', 'no',        'no'),
    -- ── belgium (3) ──
    ('carlos@gmail.com',    '1234', 'carlos',    'belgium',     'Veterinarian by profession, I care for all types of animals with medical knowledge', '/fotos/carlos_at_gmail.com.png', 1, '667890123', '12/01/2026', 'si', 'si', 'no'),
    ('emma@gmail.com',      '1234', 'emma',      'belgium',     'Family home with kids, pets get attention all day',                                  '', 1, '632333435', '10/02/2026', 'si',        'si',        'no'),
    ('louis@gmail.com',     '1234', 'louis',     'belgium',     '',                                                                                   '', 0, '',          '19/02/2026', '',          '',          ''),
    -- ── sweden (4) ──
    ('lucia@gmail.com',     '1234', 'lucia',     'sweden',      '', '/fotos/lucia_at_gmail.com.png',  0, '',          '18/01/2026', '',          '',          ''),
    ('erik@gmail.com',      '1234', 'erik',      'sweden',      'Quiet house by the forest, ideal for shy or older pets',                             '', 1, '643444546', '02/02/2026', 'si',        'consultar', 'no'),
    ('astrid@gmail.com',    '1234', 'astrid',    'sweden',      'Experienced with rodents and birds, gentle handling',                                '', 1, '654555657', '15/02/2026', 'si',        'si',        'no'),
    ('oskar@gmail.com',     '1234', 'oskar',     'sweden',      '',                                                                                   '', 0, '',          '21/02/2026', '',          '',          ''),
    -- ── ireland (4) ──
    ('marta@gmail.com',     '1234', 'marta',     'ireland',     'Dog sitter with private yard, specializing in large breed dogs', '/fotos/marta_at_gmail.com.png',  1, '678901234', '08/01/2026', 'si',        'consultar', 'no'),
    ('liam@gmail.com',      '1234', 'liam',      'ireland',     'Farm experience, comfortable with all animal sizes',                                 '', 1, '665666768', '01/02/2026', 'consultar', 'si',        'no'),
    ('aoife@gmail.com',     '1234', 'aoife',     'ireland',     'Pet photography included, daily photo updates guaranteed',                           '', 1, '676777879', '17/02/2026', 'si',        'no',        'no'),
    ('sean@gmail.com',      '1234', 'sean',      'ireland',     '',                                                                                   '', 0, '',          '23/02/2026', '',          '',          '');

INSERT INTO anuncios
    (id, emailCuidador, nombreCuidador, poblacion, tiposMascota, cantidadAnimales, precioPorDia, descripcion, fechaInicio, fechaFin, fechaPublicacion, activo)
VALUES
    ('anuncio-001', 'noelia@gmail.com',    'noelia',    'france',      'perro,gato,aves,rohedor,exotico,otro', 4, 25, 'I have a large garden, and I welcome all kinds of pets with lots of love', '01/06/2026', '30/06/2026', '01/04/2026', 1),
    ('anuncio-002', 'pablo@gmail.com',     'pablo',     'italy',       'perro',                                2, 15, 'I take care of dogs in my apartment, twice a day outings guaranteed',      '01/06/2026', '15/06/2026', '01/04/2026', 1),
    ('anuncio-003', 'isabel@gmail.com',    'isabel',    'germany',     'gato,exotico',                         3, 20, 'Specialist in cats and exotic animals, quiet environment without noise',   '01/06/2026', '30/06/2026', '02/04/2026', 1),
    ('anuncio-004', 'andres@gmail.com',    'andres',    'portugal',    'perro,gato,rohedor',                   5, 20, 'Large garden, ideal for active dogs',                                      '01/06/2026', '30/06/2026', '02/04/2026', 1),
    ('anuncio-005', 'cintia@gmail.com',    'cintia',    'netherlands', 'perro,gato',                           2, 10, 'First experience, lots of excitement and guaranteed affection',            '10/06/2026', '20/06/2026', '03/04/2026', 1),
    ('anuncio-006', 'carlos@gmail.com',    'carlos',    'belgium',     'perro,gato,aves,rohedor,exotico,otro', 6, 35, 'Professional veterinarian, medical follow-up included if necessary',       '01/06/2026', '31/07/2026', '03/04/2026', 1),
    ('anuncio-007', 'marta@gmail.com',     'marta',     'ireland',     'perro',                                3, 22, 'Specializing in large breeds, private yard and daily walks',               '15/06/2026', '15/07/2026', '04/04/2026', 1),
    ('anuncio-008', 'noelia@gmail.com',    'noelia',    'france',      'perro,gato',                           3, 20, 'Summer availability, I accept dogs and cats',                              '01/07/2026', '31/08/2026', '04/04/2026', 1),
    ('anuncio-009', 'maria@gmail.com',     'maria',     'spain',       'perro,gato',                           3, 18, 'Long walks in the park every morning and evening',                         '01/06/2026', '31/07/2026', '05/04/2026', 1),
    ('anuncio-010', 'javier@gmail.com',    'javier',    'spain',       'perro',                                1,  8, 'Cheap care for one small dog, short stays only',                           '15/06/2026', '30/06/2026', '05/04/2026', 1),
    ('anuncio-011', 'camille@gmail.com',   'camille',   'france',      'perro',                                2, 28, 'Professional training included during the stay',                           '01/06/2026', '31/08/2026', '06/04/2026', 1),
    ('anuncio-012', 'lea@gmail.com',       'lea',       'france',      'gato',                                 4, 15, 'Cats only, quiet home with plenty of sunny spots',                         '10/06/2026', '10/08/2026', '06/04/2026', 1),
    ('anuncio-013', 'giulia@gmail.com',    'giulia',    'italy',       'perro,gato,aves',                      3, 17, 'Big terrace, homemade food and lots of cuddles',                           '01/06/2026', '15/07/2026', '07/04/2026', 1),
    ('anuncio-014', 'francesca@gmail.com', 'francesca', 'italy',       'perro,gato,exotico',                   2, 30, 'Special care for pets with medical needs',                                 '01/07/2026', '31/08/2026', '07/04/2026', 1),
    ('anuncio-015', 'lukas@gmail.com',     'lukas',     'germany',     'perro',                                2, 24, 'Daily runs for active dogs, minimum 5 km per day',                         '01/06/2026', '30/06/2026', '08/04/2026', 1),
    ('anuncio-016', 'felix@gmail.com',     'felix',     'germany',     'perro,gato,rohedor',                   3, 19, 'Home office all day, constant company for your pet',                       '15/06/2026', '31/07/2026', '08/04/2026', 1),
    ('anuncio-017', 'joao@gmail.com',      'joao',      'portugal',    'perro',                                4, 12, 'Beach walks at sunrise, big fenced garden',                                '01/06/2026', '31/08/2026', '09/04/2026', 1),
    ('anuncio-018', 'daan@gmail.com',      'daan',      'netherlands', 'perro',                                2, 26, 'Active care with bike rides and park visits',                              '01/06/2026', '15/07/2026', '09/04/2026', 1),
    ('anuncio-019', 'bram@gmail.com',      'bram',      'netherlands', 'perro,gato',                           2,  9, 'Starting out as a pet sitter, low price to build reviews',                 '01/07/2026', '31/07/2026', '10/04/2026', 1),
    ('anuncio-020', 'emma@gmail.com',      'emma',      'belgium',     'perro,gato,aves',                      3, 21, 'Lively family home, your pet joins all our activities',                    '01/06/2026', '31/07/2026', '10/04/2026', 1),
    ('anuncio-021', 'erik@gmail.com',      'erik',      'sweden',      'perro,gato',                           2, 23, 'Peaceful forest house, perfect for nervous animals',                       '01/06/2026', '31/08/2026', '11/04/2026', 1),
    ('anuncio-022', 'astrid@gmail.com',    'astrid',    'sweden',      'aves,rohedor,exotico',                 5, 16, 'Small animals are my specialty, custom cages available',                   '01/06/2026', '30/06/2026', '11/04/2026', 1),
    ('anuncio-023', 'liam@gmail.com',      'liam',      'ireland',     'perro,gato,otro',                      6, 14, 'Farm setting with open fields, animals of any size',                       '01/06/2026', '31/08/2026', '12/04/2026', 1),
    ('anuncio-024', 'aoife@gmail.com',     'aoife',     'ireland',     'perro,gato',                           2, 27, 'Premium care with daily photo album of your pet',                          '15/06/2026', '15/08/2026', '12/04/2026', 1);

INSERT INTO valoraciones
    (emailCuidador, emailValorador, nombreValorador, puntuacion, descripcion, fecha)
VALUES
    -- noelia (france) — media alta
    ('noelia@gmail.com',    'david@gmail.com',   'david',   5, 'Excellent caregiver, very attentive and affectionate with my dog', '10/02/2026'),
    ('noelia@gmail.com',    'carlos@gmail.com',  'carlos',  5, 'My cat came back happy and well cared for',                        '15/02/2026'),
    ('noelia@gmail.com',    'lucia@gmail.com',   'lucia',   4, 'Very good experience, I sent photos every day',                    '20/02/2026'),
    -- pablo (italy)
    ('pablo@gmail.com',     'david@gmail.com',   'david',   4, 'Very responsible and punctual',                                    '05/02/2026'),
    ('pablo@gmail.com',     'noelia@gmail.com',  'noelia',  4, 'Highly recommended, excellent treatment of animals',               '12/02/2026'),
    -- isabel (germany) — media alta
    ('isabel@gmail.com',    'david@gmail.com',   'david',   5, 'Amazing with cats, my Persian cat adored her',                     '01/02/2026'),
    ('isabel@gmail.com',    'pablo@gmail.com',   'pablo',   5, '100% recommended, professional and caring',                        '08/02/2026'),
    ('isabel@gmail.com',    'noelia@gmail.com',  'noelia',  5, 'the best caregiver I''ve ever found',                              '14/02/2026'),
    -- andres (portugal) — media discreta
    ('andres@gmail.com',    'david@gmail.com',   'david',   3, 'That''s right, he fulfilled what was agreed',                      '03/02/2026'),
    ('andres@gmail.com',    'pablo@gmail.com',   'pablo',   4, 'Good experience, the garden is great for dogs',                    '10/02/2026'),
    -- cintia (netherlands) — poca experiencia
    ('cintia@gmail.com',    'david@gmail.com',   'david',   3, 'Good girl, somewhat inexperienced but very dedicated',             '07/02/2026'),
    -- carlos (belgium) — media alta
    ('carlos@gmail.com',    'noelia@gmail.com',  'noelia',  5, 'Being a veterinarian, I felt very calm leaving my pet',            '09/02/2026'),
    ('carlos@gmail.com',    'pablo@gmail.com',   'pablo',   5, 'Professional and friendly, highly recommended',                    '16/02/2026'),
    ('carlos@gmail.com',    'cintia@gmail.com',  'cintia',  5, 'The best caregiver in Belgium, without a doubt',                   '22/02/2026'),
    -- maria (spain) — buena
    ('maria@gmail.com',     'hugo@gmail.com',    'hugo',    5, 'Wonderful with my labrador, sent updates twice a day',             '01/03/2026'),
    ('maria@gmail.com',     'carmen@gmail.com',  'carmen',  4, 'Reliable and kind, the park nearby is a big plus',                 '08/03/2026'),
    -- javier (spain) — floja
    ('javier@gmail.com',    'carmen@gmail.com',  'carmen',  2, 'He cancelled at the last minute and I had to find someone else',   '05/03/2026'),
    ('javier@gmail.com',    'david@gmail.com',   'david',   3, 'The dog was fine but communication was poor',                      '12/03/2026'),
    -- camille (france) — muy buena
    ('camille@gmail.com',   'sanne@gmail.com',   'sanne',   5, 'My dog came back better trained than when I left him',             '02/03/2026'),
    ('camille@gmail.com',   'hugo@gmail.com',    'hugo',    5, 'True professional, worth every euro',                              '09/03/2026'),
    ('camille@gmail.com',   'marco@gmail.com',   'marco',   4, 'Great with dogs, a bit strict with the schedule',                  '16/03/2026'),
    -- lea (france) — correcta
    ('lea@gmail.com',       'hugo@gmail.com',    'hugo',    4, 'My cat was relaxed and happy when I picked her up',                '04/03/2026'),
    ('lea@gmail.com',       'beatriz@gmail.com', 'beatriz', 3, 'Decent care but my cat seemed a little stressed at first',         '11/03/2026'),
    -- giulia (italy) — buena
    ('giulia@gmail.com',    'marco@gmail.com',   'marco',   5, 'The terrace is amazing and she really loves animals',              '03/03/2026'),
    ('giulia@gmail.com',    'louis@gmail.com',   'louis',   4, 'Very patient with my old dog, good communication',                 '10/03/2026'),
    -- francesca (italy) — irregular
    ('francesca@gmail.com', 'marco@gmail.com',   'marco',   4, 'Handled my cats medication perfectly',                             '06/03/2026'),
    ('francesca@gmail.com', 'oskar@gmail.com',   'oskar',   2, 'Did not send photos as promised and replied late',                 '13/03/2026'),
    -- lukas (germany) — buena
    ('lukas@gmail.com',     'hannah@gmail.com',  'hannah',  5, 'My border collie finally got the exercise he needs',               '05/03/2026'),
    ('lukas@gmail.com',     'sean@gmail.com',    'sean',    4, 'Great for active dogs, maybe too intense for lazy ones',           '14/03/2026'),
    -- felix (germany) — mediocre
    ('felix@gmail.com',     'hannah@gmail.com',  'hannah',  3, 'The pet was never alone but walks were quite short',               '07/03/2026'),
    ('felix@gmail.com',     'sanne@gmail.com',   'sanne',   3, 'Correct service, nothing special',                                 '15/03/2026'),
    -- joao (portugal) — buena
    ('joao@gmail.com',      'beatriz@gmail.com', 'beatriz', 4, 'The beach walks were a hit, my dog slept for two days after',      '08/03/2026'),
    ('joao@gmail.com',      'david@gmail.com',   'david',   5, 'Fantastic garden and very friendly person',                        '17/03/2026'),
    -- daan (netherlands) — buena
    ('daan@gmail.com',      'sanne@gmail.com',   'sanne',   5, 'The bike rides are real, my dog loved every minute',               '09/03/2026'),
    ('daan@gmail.com',      'louis@gmail.com',   'louis',   4, 'Energetic and fun, my dog came back exhausted and happy',          '18/03/2026'),
    -- bram (netherlands) — floja (empezando)
    ('bram@gmail.com',      'sanne@gmail.com',   'sanne',   2, 'Inexperienced, my dog escaped the yard although he found him fast','10/03/2026'),
    ('bram@gmail.com',      'oskar@gmail.com',   'oskar',   3, 'Cheap and willing, but still has a lot to learn',                  '19/03/2026'),
    -- emma (belgium) — buena
    ('emma@gmail.com',      'louis@gmail.com',   'louis',   4, 'The kids played with my dog all day, he loved it',                 '11/03/2026'),
    ('emma@gmail.com',      'lucia@gmail.com',   'lucia',   5, 'Warm family, my cat was treated like a queen',                     '20/03/2026'),
    -- erik (sweden) — muy buena
    ('erik@gmail.com',      'oskar@gmail.com',   'oskar',   5, 'Perfect for my shy rescue dog, very calm environment',             '12/03/2026'),
    ('erik@gmail.com',      'lucia@gmail.com',   'lucia',   4, 'Quiet and professional, the forest walks are beautiful',           '21/03/2026'),
    -- astrid (sweden) — correcta
    ('astrid@gmail.com',    'oskar@gmail.com',   'oskar',   4, 'Took great care of my parrot, knows a lot about birds',            '13/03/2026'),
    ('astrid@gmail.com',    'sean@gmail.com',    'sean',    3, 'Good with my hamster but hard to reach by phone',                  '22/03/2026'),
    -- liam (ireland) — buena
    ('liam@gmail.com',      'sean@gmail.com',    'sean',    5, 'The farm is a paradise for dogs, mine did not want to leave',      '14/03/2026'),
    ('liam@gmail.com',      'carmen@gmail.com',  'carmen',  4, 'Plenty of space and genuine love for animals',                     '23/03/2026'),
    -- aoife (ireland) — buena
    ('aoife@gmail.com',     'sean@gmail.com',    'sean',    5, 'The daily photo album is a beautiful touch, top quality care',     '15/03/2026'),
    ('aoife@gmail.com',     'hannah@gmail.com',  'hannah',  4, 'Lovely photos and a very happy dog, slightly pricey',              '24/03/2026'),
    ('aoife@gmail.com',     'marco@gmail.com',   'marco',   3, 'Nice photos but the walks were shorter than advertised',           '25/03/2026');
