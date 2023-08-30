User.create(
    name: 'テスト',
    email: 'test@example.com',
    password: 'password'
)

ToiletPlace.create(
    user_id: User.first.id,
    name: '綺麗なトイレ', 
    address: '東京都大田区田園調布'
)