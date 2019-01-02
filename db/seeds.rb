# frozen_string_literal: true

user = User.new(email: 'admin@test.com', password: 'admin_test', username: 'Admin', password_confirmation: 'admin_test', admin: true)
user.save!
user = User.new(email: 'user@test.com', password: 'user_test', username: 'User', password_confirmation: 'user_test', admin: false)
user.save!

Interest.create(name: 'Music')
Interest.create(name: 'Dancing')
Interest.create(name: 'Sport')
Interest.create(name: 'Auto & Moto')
Interest.create(name: 'Art')
Interest.create(name: 'History')
Interest.create(name: 'Science')

Interest.first.tours.create(name: 'Viva Braslav', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.first.tours.create(name: 'Рок за Бобров', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.first.tours.create(name: 'A-fest', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.first.tours.create(name: 'Движ', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.first.tours.create(name: 'Freaky Summer Party', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)

Interest.second.tours.create(name: 'Танцевальное событие 1', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.second.tours.create(name: 'Dance Summer Party', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.second.tours.create(name: 'Dance-fest', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.second.tours.create(name: 'Танцевальное событие 2', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.second.tours.create(name: 'Танцевальное событие 777', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)

Interest.third.tours.create(name: 'Чемпионат мира в России 2018', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.third.tours.create(name: 'Чемпионат Беларуси по футболу', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.third.tours.create(name: 'Чемпионат мира в фут-залу', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.third.tours.create(name: 'Лига Чемпионов', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.third.tours.create(name: 'Лига Европы', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)

Interest.fourth.tours.create(name: 'Чемпионат Мира по автослалому', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.fourth.tours.create(name: 'Мотосезон 2018', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.fourth.tours.create(name: 'Формула 1', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.fourth.tours.create(name: 'Ле-Манс 2018', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.fourth.tours.create(name: 'Мотогонки в Беларуси', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)

Interest.fifth.tours.create(name: 'Райский сад импрессионизма', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.fifth.tours.create(name: 'Ретроспектива Брендреолизма', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.fifth.tours.create(name: 'Выставка картин Ван-Гога', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.fifth.tours.create(name: 'Выставка картин Густава Климпта', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.fifth.tours.create(name: 'Фото-выставка в Беларуси', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)

Interest.where(id: 6).first.tours.create(name: 'Лекция по истории', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.where(id: 6).first.tours.create(name: 'История Беларуси', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.where(id: 6).first.tours.create(name: 'История', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)

Interest.where(id: 7).first.tours.create(name: 'Наука наше всё', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)
Interest.where(id: 7).first.tours.create(name: 'Поступайте на мехмат!', description: 'Description / Описание всего тура', starts_at: Date.today.end_of_month)

Tour.find_each do |tour|
  1.upto(4).each do |n|
    Event.create(name: "Event#{n}", tour_id: tour.id, description: 'Description / Описание всего мероприятия')
  end
end

Event.find_each do |event|
  1.upto(4).each do |n|
    Dish.create(name: "Dish#{n}", event_id: event.id, description: 'Description / Описание всего мероприятия')
  end
end













