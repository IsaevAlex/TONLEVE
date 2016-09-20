# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  AccountCategory.create([{ name: 'Физическое лицо' }, { name: 'Юридическое лицо' }])
  Currency.create([{ name: 'Евро'},{ name: 'Рубль(ей)'},{ name: 'Доллар(ов)'}])
  Unit.create([{ name: 'Штук'},{ name: 'Килограмм(ов)'},{ name: 'Миллиграмм(ов)'},{ name: 'Тонн'},{ name: 'Сантиметр(ов)'},{ name: 'Метр(ов)'},{ name: 'Миллиметр(ов)'}])
  ProductCategory.create([{ name: "Одежда и аксессуары для женщин"}, 
            						  { name: "Одежда и аксессуары для мужчин"}, 
            						  { name: "Телефоны и телекоммуникации"}, 
            						  { name: "Детские товары"}, 
            						  { name: "Автомобили и мотоциклы"}, 
            						  { name: "Ювелирные изделия"}, 
            						  { name: "Часы"}, 
            						  { name: "Компьютеры и сетевое оборудование"}, 
            						  { name: "Багаж и сумки"}, 
            						  { name: "Для дома и сада"}, 
            						  { name: "Бытовая электроника"}, 
            						  { name: "Красота и здоровье"}, 
            						  { name: "Спорт и развлечения"}, 
            						  { name: "Обувь"}, 
            						  { name: "Лампы и освещение"}, 
            						  { name: "Игрушки и хобби"}, 
            						  { name: "Свадьбы и торжества"}, 
            						  { name: "Промышленность и бизнес"}, 
            						  { name: "Мебель"}, 
            						  { name: "Продукты питания"}, 
            						  { name: "Электрооборудование"}, 
            						  { name: "Офисные и школьные принадлежности"}, 
            						  { name: "Путешествия и отдых"}, 
            						  { name: "Безопасность и защита"}])
  ProductSubCategory.create([{ name: "Платья", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для женщин").id },
                              { name: "Топы и футболки", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для женщин").id },
                              { name: "Нижнее белье", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для женщин").id },
                              { name: "Толстовки и кофты", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для женщин").id },
                              { name: "Блузки и кофты", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для женщин").id },
                              { name: "Комбинизоны", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для женщин").id },
                              { name: "Чулочно-носочные изделия", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для женщин").id },
                              { name: "Куртки и пальто", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для женщин").id },
                              { name: "Низ", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для женщин").id },
                              { name: "Пиджаки и костюмы", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для женщин").id },
                              { name: "Сон и отдых", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для женщин").id },
                              { name: "Топы и футболки", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },
                              { name: "Аксессуары", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },
                              { name: "Костюмы и блейзеры", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },
                              { name: "Сон и отдых", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },
                              { name: "Носки", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },
                              { name: "Рубашки", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },
                              { name: "Низ", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },
                              { name: "Толстовки и кофты", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },
                              { name: "Джинсы", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },
                              { name: "Куртки и пальто", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },
                              { name: "Нижнее белье", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },
                              { name: "Свитера", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },
                              { name: "Шорты", product_category_id: ProductCategory.find_by(name: "Одежда и аксессуары для мужчин").id },

                              { name: "Мобильные телефоны", product_category_id: ProductCategory.find_by(name: "Телефоны и телекоммуникации").id },
                              { name: "Дисплеи мобильных телефонов", product_category_id: ProductCategory.find_by(name: "Телефоны и телекоммуникации").id },
                              { name: "Запчасти для мобильных телефонов", product_category_id: ProductCategory.find_by(name: "Телефоны и телекоммуникации").id },
                              { name: "Сумки и чехлы", product_category_id: ProductCategory.find_by(name: "Телефоны и телекоммуникации").id },
                              { name: "Сенсорные панели", product_category_id: ProductCategory.find_by(name: "Телефоны и телекоммуникации").id },
                              { name: "Оборудование связи", product_category_id: ProductCategory.find_by(name: "Телефоны и телекоммуникации").id },
                              { name: "Резервное питание", product_category_id: ProductCategory.find_by(name: "Телефоны и телекоммуникации").id },
                              { name: "Аксессуары", product_category_id: ProductCategory.find_by(name: "Телефоны и телекоммуникации").id },
                              { name: "Прочие телефоны и телекоммуникационные товары", product_category_id: ProductCategory.find_by(name: "Телефоны и телекоммуникации").id },

                              { name: "Одежда для девочек", product_category_id: ProductCategory.find_by(name: "Детские товары").id },
                              { name: "Одежда для мальчиков", product_category_id: ProductCategory.find_by(name: "Детские товары").id },
                              { name: "Уход за младенцем", product_category_id: ProductCategory.find_by(name: "Детские товары").id },
                              { name: "Постельные принадлежности", product_category_id: ProductCategory.find_by(name: "Детские товары").id},
                              { name: "Обувь детская", product_category_id: ProductCategory.find_by(name: "Детские товары").id },
                              { name: "Физическая активность", product_category_id: ProductCategory.find_by(name: "Детские товары").id },
                              { name: "Кормление", product_category_id: ProductCategory.find_by(name: "Детские товары").id },
                              { name: "Материнство", product_category_id: ProductCategory.find_by(name: "Детские товары").id },
                              { name: "Безопасность", product_category_id: ProductCategory.find_by(name: "Детские товары").id },

                              { name: "Запчасти для автомобиля", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id },
                              { name: "Запчасти для мотоциклов", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id },
                              { name: "Салонные аксессуары", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id },
                              { name: "GPS-приборы и аксессуары", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id },
                              { name: "Запчасти и аксессуары для автофургонов", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id  },
                              { name: "Другие транспортные средства и аксессуары", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id  },
                              { name: "Автомобильная электроника", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id },
                              { name: "Инструменты и принадлежности", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id  },
                              { name: "Фары и индикаторы", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id },
                              { name: "Дорожная безопасность", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id },
                              { name: "Запчасти и аксессуары для мотовездеходов", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id  },
                              { name: "Другие транспортные средства и аксессуары", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id  },
                              { name: "Средства диагностики", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id  },
                              { name: "Внешние аксессуары", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id  },
                              { name: "Средства ухода для автомобиля", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id  },
                              { name: "Транспортировка и хранение", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id  },
                              { name: "Трансформируемые аксессуары", product_category_id: ProductCategory.find_by(name: "Автомобили и мотоциклы").id },

                              { name: "Ожерелья и подвески", product_category_id: ProductCategory.find_by(name: "Ювелирные изделия").id },
                              { name: "Серьги", product_category_id: ProductCategory.find_by(name: "Ювелирные изделия").id } ,
                              { name: "Кольца", product_category_id: ProductCategory.find_by(name: "Ювелирные изделия").id },
                              { name: "Браслеты и запонки", product_category_id: ProductCategory.find_by(name: "Ювелирные изделия").id } ,
                              { name: "Ювелирные наборы и прочее", product_category_id: ProductCategory.find_by(name: "Ювелирные изделия").id } ,
                              { name: "Изготовление украшений", product_category_id: ProductCategory.find_by(name: "Ювелирные изделия").id } ,
                              { name: "Свадебные и обручальные ювелирные изделия", product_category_id: ProductCategory.find_by(name: "Ювелирные изделия").id },

                              { name: "Мужские часы", product_category_id: ProductCategory.find_by(name: "Часы").id },
                              { name: "Детские часы", product_category_id: ProductCategory.find_by(name: "Часы").id } ,
                              { name: "Часы-браслеты", product_category_id: ProductCategory.find_by(name: "Часы").id },
                              { name: "Женские часы", product_category_id: ProductCategory.find_by(name: "Часы").id } ,
                              { name: "Карманные часы и брелоки", product_category_id: ProductCategory.find_by(name: "Часы").id } ,
                              { name: "Парные часы", product_category_id: ProductCategory.find_by(name: "Часы").id } ,
                              { name: "Аксессуары для часов", product_category_id: ProductCategory.find_by(name: "Часы").id },

                              { name: "Планшетные компьютеры", product_category_id: ProductCategory.find_by(name: "Компьютеры и сетевое оборудование").id },
                              { name: "Сетевое оборудование", product_category_id: ProductCategory.find_by(name: "Компьютеры и сетевое оборудование").id } ,
                              { name: "Ноутбуки", product_category_id: ProductCategory.find_by(name: "Компьютеры и сетевое оборудование").id },
                              { name: "Нетбуки и ультрамобильные ПК", product_category_id: ProductCategory.find_by(name: "Компьютеры и сетевое оборудование").id } ,
                              { name: "Аксессуары для планшетов", product_category_id: ProductCategory.find_by(name: "Компьютеры и сетевое оборудование").id } ,
                              { name: "Внешние накопители", product_category_id: ProductCategory.find_by(name: "Компьютеры и сетевое оборудование").id } ,
                              { name: "Аксессуары для ноутбуков", product_category_id: ProductCategory.find_by(name: "Компьютеры и сетевое оборудование").id },
                              { name: "Настольные компьютеры и серверы", product_category_id: ProductCategory.find_by(name: "Компьютеры и сетевое оборудование").id },
                              { name: "Карты памяти", product_category_id: ProductCategory.find_by(name: "Компьютеры и сетевое оборудование").id } ,
                              { name: "Программное обеспечение", product_category_id: ProductCategory.find_by(name: "Компьютеры и сетевое оборудование").id },

                              { name: "Женские сумки", product_category_id: ProductCategory.find_by(name: "Багаж и сумки").id },
                              { name: "Кошельки", product_category_id: ProductCategory.find_by(name: "Багаж и сумки").id } ,
                              { name: "Функциональные сумки", product_category_id: ProductCategory.find_by(name: "Багаж и сумки").id },
                              { name: "Мужские сумки", product_category_id: ProductCategory.find_by(name: "Багаж и сумки").id } ,
                              { name: "Сумки для детей", product_category_id: ProductCategory.find_by(name: "Багаж и сумки").id } ,
                              { name: "Кошельки и визитницы", product_category_id: ProductCategory.find_by(name: "Багаж и сумки").id } ,

                              { name: "Кухня,столовая и бар", product_category_id: ProductCategory.find_by(name: "Для дома и сада").id },
                              { name: "Искусство,ремесло и шитье", product_category_id: ProductCategory.find_by(name: "Для дома и сада").id } ,
                              { name: "Садовые принадлежности", product_category_id: ProductCategory.find_by(name: "Для дома и сада").id },
                              { name: "Домашний декор", product_category_id: ProductCategory.find_by(name: "Для дома и сада").id } ,
                              { name: "Бытовые товары", product_category_id: ProductCategory.find_by(name: "Для дома и сада").id } ,
                              { name: "Текстиль для дома", product_category_id: ProductCategory.find_by(name: "Для дома и сада").id } ,
                              { name: "Товары для ванной", product_category_id: ProductCategory.find_by(name: "Для дома и сада").id },
                              { name: "Прочие товары", product_category_id: ProductCategory.find_by(name: "Для дома и сада").id },

                              { name: "Камеры и фото", product_category_id: ProductCategory.find_by(name: "Бытовая электроника").id },
                              { name: "Портативное аудио и видео", product_category_id: ProductCategory.find_by(name: "Бытовая электроника").id } ,
                              { name: "Внешние накопители", product_category_id: ProductCategory.find_by(name: "Бытовая электроника").id },
                              { name: "Умная электроника", product_category_id: ProductCategory.find_by(name: "Бытовая электроника").id } ,
                              { name: "Аксессуары и запчасти", product_category_id: ProductCategory.find_by(name: "Бытовая электроника").id } ,

                              { name: "Наращивание волос и парики", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id },
                              { name: "Здоровье и гигиена", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id } ,
                              { name: "Бритье и эпиляция", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id },
                              { name: "Татуировки и боди-арт", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id } ,
                              { name: "Гигиена полости рта", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id } ,
                              { name: "Маникюр и инструменты", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id } ,
                              { name: "Уход за кожей", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id },
                              { name: "Эротические товары", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id },
                              { name: "Ванна и душ", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id } ,
                              { name: "Макияж", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id } ,
                              { name: "Уход за волосами и укладка", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id } ,
                              { name: "Духи и дезодоранты", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id },
                              { name: "Инструменты и аксессуары", product_category_id: ProductCategory.find_by(name: "Красота и здоровье").id },

                              { name: "Спортивная одежда", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id },
                              { name: "Велоспорт", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id } ,
                              { name: "Фитнес и бодибилдинг", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id },
                              { name: "Водные виды спорта", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id } ,
                              { name: "Гольф", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id } ,
                              { name: "Катаине на лыжах и коньках", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id } ,
                              { name: "Скейтбординг,ролики и скутеры", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id },
                              { name: "Рыбалка", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id } ,
                              { name: "Охота", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id } ,
                              { name: "Командные виды спорта", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id } ,
                              { name: "Бег", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id },
                              { name: "Спортивные сумки", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id },
                              { name: "Скачки", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id } ,
                              { name: "Кеды и кроссовки", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id } ,
                              { name: "Кемпинг и туризм", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id },
                              { name: "Музыкальные инструменты", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id },
                              { name: "Стрельба", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id } ,
                              { name: "Спортивные аксессуары", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id },
                              { name: "Боулинг", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id },
                              { name: "Развлечения", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id },
                              { name: "Товары для спорта/развлечения", product_category_id: ProductCategory.find_by(name: "Спорт и развлечения").id },

                              { name: "Мужская обувь", product_category_id: ProductCategory.find_by(name: "Обувь").id },
                              { name: "Женская обувь", product_category_id: ProductCategory.find_by(name: "Обувь").id } ,
                              { name: "Аксессуары для обуви", product_category_id: ProductCategory.find_by(name: "Обувь").id },

                              { name: "Внутреннее освещение", product_category_id: ProductCategory.find_by(name: "Лампы и освещение").id },
                              { name: "Наружное освещение", product_category_id: ProductCategory.find_by(name: "Лампы и освещение").id } ,
                              { name: "Переносное освещение", product_category_id: ProductCategory.find_by(name: "Лампы и освещение").id },
                              { name: "Профессиональное освещение", product_category_id: ProductCategory.find_by(name: "Лампы и освещение").id } ,
                              { name: "Ночные светильники", product_category_id: ProductCategory.find_by(name: "Лампы и освещение").id } ,
                              { name: "Светодиодное освещение", product_category_id: ProductCategory.find_by(name: "Лампы и освещение").id } ,
                              { name: "Аксессуары к осветительным приборам", product_category_id: ProductCategory.find_by(name: "Лампы и освещение").id },
                              { name: "Праздничное освещение", product_category_id: ProductCategory.find_by(name: "Лампы и освещение").id },
                              { name: "Оригинальные светильники", product_category_id: ProductCategory.find_by(name: "Лампы и освещение").id },
                              { name: "Лампочки", product_category_id: ProductCategory.find_by(name: "Лампы и освещение").id } ,
                              { name: "Светодиодные лампы", product_category_id: ProductCategory.find_by(name: "Лампы и освещение").id },
                              



                              





                              



                              


                              


 

 
      
       
              
  ])