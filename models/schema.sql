DROP DATABASE IF EXISTS posts_db;
CREATE DATABASE posts_db;

\c posts_db;

CREATE TABLE posts (
    ID SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    nickname VARCHAR NOT NULL,
    birthday VARCHAR NOT NULL,
    game VARCHAR NOT NULL,
    image VARCHAR NOT NULL,
    talent VARCHAR NOT NULL,
    quote VARCHAR NOT NULL,
    likes VARCHAR NOT NULL,
    dislikes VARCHAR NOT NULL
);

INSERT INTO posts (name, nickname, birthday, game, image, talent, quote, likes, dislikes)
VALUES
('Kyoko Kirigiri','Kuudere','October 6th','Danganronpa Trigger Happy Havoc','http://i.imgur.com/FN7P6wq.png','Ultimate Detective','Fear is proof that your imagination is functioning. Frankly, I feel bad for anyone who can''t feel fear. Without imagination, you can never deduce which action to take next','Her hair braids', 'Goya and Coriander'),
('Byakuya Togami','Douche','May 5th','Danganronpa Trigger Happy Havoc','http://i.imgur.com/AoBcZU1.png','Ultimate Affluent Progeny','Hello there. Listen... who are you again? I apologize for my poor memory. But it’s just so hard to remember things I don''t care about.','Coffee and French Cuisine','Commoners and Instant Food'),
('Chihiro Fujisaki','Trap','March 14th','Danganronpa Trigger Happy Havoc','http://i.imgur.com/QiFmwuy.png','Ultimate Programmer','I''m completely useless without a computer in front of me...','Computers and Flowers','Masculinity'),
('Celestia Ludenberg','Poser','November 23rd','Danganronpa Trigger Happy Havoc','http://i.imgur.com/3JUkXNw.png','Ultimate Gambler','I''m rather proud of my ability to tell lies. I can trick not only others, but even my own heart.','Winning and Exotic Things','Fire'),
('Monokuma','Annoying','Unknown','Danganronpa Trigger Happy Havoc', 'http://i.imgur.com/WSMQtU0.png','Unknown','As long as there''s despair in people''s hearts, Monokuma will always come back!','Killing Games','Usami'),
('Makoto Naegi','Boring','February 5th','Danganronpa Trigger Happy Havoc','http://i.imgur.com/unsPH8K.png','Ultimate Lucky Student','After all, my only redeeming quality is my optimism.','Curry and Trendy Things','Dried Tofu and Dried Pickled Horse Mackerel'),
('Aoi Asahina','Glutton','April 24th','Danganronpa Trigger Happy Havoc','http://i.imgur.com/k4FIaA5.png','Ultimate Swimming Pro','People talk behind my back sometimes-say all my energy goes to my legs and none of it to my head.','Donuts','Calculating'),
('Yasuhiro Hagakure','Chump','July 25th','Danganronpa Trigger Happy Havoc','http://i.imgur.com/ipVm5Qw.png','Ultimate Clairvoyant','The guardian spirit with a perm head chasing a Bigfoot who was cursed by sky fish. That’s your very own guardian spirit!','seless and Expensive Things','Debt'),
('Sakura Ogami','Brolic','September 13th','Danganronpa Trigger Happy Havoc','http://i.imgur.com/JfKLOc5.png','Ultimate Martial Artist','I don''t want to just be the best in competitions. I want to be the strongest human on Earth','Training','Femininity'),
('Hifumi Yamada','Pervert','December 31st','Danganronpa Trigger Happy Havoc','http://i.imgur.com/TGqEWbm.png','Ultimate Fanfic Creator','Listen to me! Outward appearances are meaningless! What you see before your eyes is nothing but the skin that wraps my true self! My meaning and worth can be judged only by the contents of my work!','Anime and Manga','Working Out'),
('Junko Enoshima','Psycho','December 24th','Danganronpa Trigger Happy Havoc','http://i.imgur.com/UDtSoMq.png','Ultimate Fashionista','The heart-racing excitement of messy despair has a taste like you''ve never known!','Despair','Her Sister'),
('Kiyotaka Ishimaru','Perfect Prefect','August 31st','Danganronpa Trigger Happy Havoc','http://i.imgur.com/rIN9Lyz.png','Ultimate Moral Compass','Also, I have ten sets of my uniform, so I always have a clean one. There''s nothing strange about that.','Order and Rules','Chaos'),
('Leon Kuwata ','Souless','January 3rd','Danganronpa Trigger Happy Havoc','http://i.imgur.com/hMoHVt4.png','Ultimate Baseball Star','My plan is to conquer the world with punk! Cause I mean... when it comes to punk, it doesn''t really matter if you can actually play or not','Being Cool','Baseball'),
('Mondo Owada','Baddy','June 9th','Danganronpa Trigger Happy Havoc','http://i.imgur.com/6FkxgpM.png','Ultimate Biker Gang Leader','A real man rides Kawasaki, okay? That''s what I ride. You oughta see it, man. The v-twin’s got that monster power, it''s like you''re dancin''. Course, it ain''t for just anyone. You gotta have the skill to handle it.','Hair Gel','Police'),
('Sayaka Maizono','Hime','July 7th','Danganronpa Trigger Happy Havoc','http://i.imgur.com/BQsAti5.png','Ultimate Pop Sensation','I can read minds... Relax, it''s a joke. I just have good intuition. Cause I''m psychic! ...Kidding!','Fame','Being Alone'),
('Toko Fukawa','Bipolar','March 3rd','Danganronpa Trigger Happy Havoc','http://i.imgur.com/cZTOwT7.png','Ultimate Writing Prodigy','Nng... I''m blind! Your s-straightforward nature blinded me!','Byakuya Togami and Belles-lettres novels','Light Novels and Manga'),
('Mukuro Ikusaba', 'Unknown','December 24th','Danganronpa Trigger Happy Havoc','http://i.imgur.com/63Bow5B.png','Ultimate Soldier','Junko, you''re all I have. So don''t worry, little sis. I''m always looking at you, so... I swear I''m going to make you despair. I swear I''ll make Makoto and everyone else happy. So when you find joy in that despair, I''ll trust in Makoto''s hope and bring my eyes back to you','Her Sister and Army Knives','Make-up'),
('Usami','Energizer','Unknown','Danganronpa Goodbye Despair', 'http://i.imgur.com/qY5InlK.png','Unknown','I''m Usami! Magical Miracle Girl ★ Usami! I''m an itty bitty girl who''s sweet like milk!','Happiness','Monokuma'),
('Hajime Hinata','Rebel','January 1st','Danganronpa Goodbye Despair','http://i.imgur.com/ubp9072.png','Ultimate Hope','Nagito Komaeda... You''re definitely someone I shouldn''t underestimate.','Kusamochi','Sakuramochi'),
('Nagito Komaeda','Crazy','April 28th','Danganronpa Goodbye Despair','http://i.imgur.com/t8j3kDx.png','Ultimate Lucky Student','Despair is... like what I am compared to all of you, something minuscule, trivial and worthless!','Beautiful things and People','Noisy Places and Ugly People'),
('Chiaki Nanami','Shauna','March 14th','Danganronpa Goodbye Despair','http://i.imgur.com/nqOHMBw.png','Ultimate Gamer','It doesn''t make a difference whether or not you have talent. I mean, that isn''t the end goal. You have greater freedom than we do. All I have are games, but you can go anywhere and become anything.','Games','Alarm Clocks'),
('Fuyuhiko Kuzuryu','Overcompensater','August 16th','Danganronpa Goodbye Despair','http://i.imgur.com/tqEdKXO.png','Ultimate Yakuza','I never needed... a sword...or a shield... I never needed... a tool... S-So... You didn''t...need to become a tool... You just...you just needed to be yourself...','Karinto and Fried Dough Cookies','Milk'),
('Ibuki Mioda','Rockstar','November 27th','Danganronpa Goodbye Despair','http://i.imgur.com/qjmiaYs.png','Ultimate Musician','I believe finding yourself means accepting that you''re someone who is constantly changing','Walking, Napping, Gaming','Boredom'),
('Sonia Nevermind','Blonde','October 13th','Danganronpa Goodbye Despair','http://i.imgur.com/TfQlzLF.png','Ultimate Princess','You wear a white shirt just like the legend says, and your hair looks like an antenna! And your face...is completely unremarkable!','Occult and Japanese Culture','Sour Plums'),
('Gundham Tanaka','Chuunibyou','December 14th','Danganronpa Goodbye Despair','http://i.imgur.com/o1y2vdY.png','Ultimate Breeder','There are no second chances in life... We cannot return to what has already transpired...','Four Dark Devas of Destruction','Earthly Life'),
('Hiyoko Saionji','Bratty','March 9th','Danganronpa Goodbye Despair','http://i.imgur.com/9eou4ay.png','Ultimate Traditional Dancer','Hey, isn''t it stressful when someone you''re not interested in at all tries to talk to you?','Sour Food and Stuff','Lectures'),
('Akane Owari','Beast','July 15th','Danganronpa Goodbye Despair','http://i.imgur.com/DcVGu3s.png','Ultimate Gymnast','When things don''t make sense, the only thing I can do is stuff my face!','Fighting and Meat','Working Hard'),
('Unknown', 'Chameleon','Unknown','Danganronpa Goodbye Despair','http://i.imgur.com/5ClbcdN.png','Ultimate Imposter','Throw away your past self... It''s meaningless','Eating','Being Himself'),
('Nekomaru Nidai','Metal Lee','February 22nd','Danganronpa Goodbye Despair','http://i.imgur.com/1rYQd5U.png','Ultimate Team Manager','Countless records in this world would not exist without managers!','Freshly Washed Towels','Lazy People'),
('Kazuichi Soda','Chompy','June 29th','Danganronpa Goodbye Despair','http://i.imgur.com/g91lX3b.png','Ultimate Mechanic','You''d be surprised how much changes when you change your appearance.','Cola','Anything That Is Sugar Free'),
('Mahiru Koizumi','Plain Jane','April 29th','Danganronpa Goodbye Despair','http://i.imgur.com/u9dkLuF.png','Ultimate Photographer','Well, I regret to inform that you are hereby branded ''Hajime the unreliable.'' I expect you to work hard to shake that title off. Act more like a man!','Traveling Alone','Bad Mannered People'),
('Mikan Tsumiki','Submissive','May 12th','Danganronpa Goodbye Despair','http://i.imgur.com/FqyhTyx.png','Ultimate Nurse','U-Um... Other than dying, I can pretty much do anything! Please order me around whenever you want!','Bathroom Smells and The Smell of Isopropanol','Oversized Things'),
('Peko Pekoyama','Power Ranger','June 30th','Danganronpa Goodbye Despair','http://i.imgur.com/nWAFwim.png','Ultimate Swordswoman','All animals can sense my menacing presence and run away from me. I just...want to touch their soft fur and fluffy feathers to my heart''s content...','The Color Black','Candy'),
('Teruteru Hanamura','Ecchi','September 2nd','Danganronpa Goodbye Despair','http://i.imgur.com/jVDa8kt.png','Ultimate Cook','A dirty tale of hardship like that doesn''t suit an attractive urbanite like me!','His Mom','Junk Food'),
('Komaru Naegi','Ahoge','May 31st','Danganronpa Another Episode','http://i.imgur.com/m0Tiw38.png','Unknown','I''m a high school girl and I have a hacking gun, so does this situation seem like an otaku''s doing?','Girl''s Manga and Whatever''s Trending','Lightning and Rain'),
('Servant','Best Character','April 28th','Danganronpa Another Episode','http://i.imgur.com/TkoYa4M.png','Unknown','The deeper and darker the despair... the brighter and powerful the hope born from it','Beautiful Things and People','Noisy Places and Ugly Poeple'),
('Nagisa Shingetsu','Suspenders','October 23rd','Danganronpa Another Episode','http://i.imgur.com/bzLnBzn.png','Li''l Ultimate Social Studies','You''re repeating ''leader'' too much. A real leader would be more composed.','Printed Dictionaries and Monaca','Earthworms, Needles and Injections'),
('Masaru Daimon','Runt','May 7th','Danganronpa Another Episode','http://i.imgur.com/3zDsboe.png','Li''l Ultimate P.E.','I''m not like those adults who call themselves leaders but hide like cowards!','Soccer and Vaulting Horses','Arithmetic and Cigarettes'),
('Kotoko Utsugi','Girly','June 13th','Danganronpa Another Episode','http://i.imgur.com/zJkpNCo.png','Li''l Ultimate Drama','Being adorbs isn''t always a good thing. Cute girls go through terrible things...','Peeled Chestnuts and Adorbs Things','Unpeeled Chestnuts and Regular Cute Things'),
('Jataro Kemuri','Ugly','February 29th','Danganronpa Another Episode','http://i.imgur.com/1n9Xh4u.png','Li''l Ultimate Art','Games aren''t the same as real life. In that case... even someone as hated me as me could win.','People Who Hate Him and The Drum Type of Washing Machines','Himself and Peoplw Who Don''t Hate Him'),
('Monaca Towa','Fake Boss','April 1st','Danganronpa Another Episode','http://i.imgur.com/hS3J6JV.png','Li''l Ultimate Homeroom','Nnn... like— I— said—! Why— don''t— you— get— it—! That''s— how— it— is—! If Monaca— says— so—! Then— it''s— so—!','Free Period during School and Warm Futons','Spending Time Alone and Cold Meals'),
('Izuru Kamukura','Unkempt','January 1st','Danganronpa Another Episode','http://i.imgur.com/7NxnPrU.png','Ultimate Hope','I want to test something. Hope and Despair... Which will be harder for me to predict?','Unknown','Unknown'),
('Haiji Towa','Pedo','August 9th','Danganronpa Another Episode','http://i.imgur.com/ugaY6hB.png','Unknown','As if I would. And also... If I were to do it with anyone, it would be Komaru Naegi. I''m a lolicon, so the younger, the better.','Young and Quiet Girls','Older and Noisy Girls'),
('Hiroko Hagakure','Cougar','July 5th','Danganronpa Another Episode','http://i.imgur.com/nwhTLXY.png','Unknown','All boys really want to do is act cool in front of girls.','Cigarettes and Alcohol','Her Mother in Law and Men With no Balls'),
('Shirokuma','Fake','Unknown','Danganronpa Another Episode','http://i.imgur.com/GvAoTj7.png','Unknown','I''m a nice bear! The kind of bear who would give my opponent the corner in Othello...','World Peace and Flower Meadows','Fighting and Verbal Abuse'),
('Kurokuma','Idiot Savant','Unknown','Danganronpa Another Episode','http://i.imgur.com/Zv7wNfG.png','Unknown','Oh, what!? Is this it!? You''re finally gonna come out of the closet!?','Good Vibes and Dope Things','Wack Things and Shit Rhymes');

CREATE TABLE notes (
ID SERIAL PRIMARY KEY,
name VARCHAR NOT NULL,
game VARCHAR NOT NULL,
post VARCHAR NOT NULL
);

INSERT INTO notes (name, game, post)
VALUES ('Boss Shauna', 'Danganronpa Goodbye Despair','Nagito is love. Nagito is life');