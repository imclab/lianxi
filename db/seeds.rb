# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

laoshi = User.create({
  :username => "laoshi",
  :email => "laoshi@example.com",
  :password => "laoshi",
  :password_confirmation => "laoshi"
})

Drill.create({
  :title => "Food and Cooking",
  :description => "Chinese cuisine foods",
  :user => laoshi,
  :flash_cards_attributes => [
    { :simplified => "烧", :traditional => "燒",
      :pinyin => "shāo", :jyutping => "siu1",
      :meaning => "roast", :part_of_speech => "verb",
      :examples_attributes => [
        {
          :simplified => "我燒了鴨",
          :traditional => "我燒了鴨",
          :pinyin => "wǒ shāo le yā",
          :jyutping => "ngo5 siu1 le5 aap3",
          :translation => "I roasted the duck",
          :notes => "'Roast Duck' is a verb-object and in this case is separated by a modifier. In this usage, the original meaning 'to roast a duck' is modified by the past participle 'le' to create the new meaning 'I roasted (the) duck.'"
        },
        {
          :simplified => "半隻燒鴨",
          :traditional => "半隻燒鴨",
          :pinyin => "bàn zhī shāo yā",
          :jyutping => "bun3 zek3 siu1 aap3",
          :translation => "half roast duck"
        }
      ]
    },
    { :simplified => "炒", :traditional => "炒",
      :pinyin => "chǎo", :jyutping => "caau2",
      :meaning => "to fry", :part_of_speech => "verb",
      :examples_attributes => [
        {
          :simplified => "我嗌咗碟炒飯好耐,重未嚟呀",
          :traditional => "我嗌咗碟炒飯好耐,重未嚟呀",
          :pinyin => "wǒ ài zuo dié chǎo fàn hǎo nài, zhòng wèi lí ya",
          :jyutping => "ngo5 ai3 zuo2 dip6 caau2 fan6 hou2 noi6, zung2 mei6 lai4 aa5",
          :translation => "I've ordered a dish of fried rice a long time ago, but it still hasn't come yet"
        }
      ]
    }
  ]
})

Drill.create({
  :title => "Sports and Activities",
  :description => "American sports",
  :user => laoshi,
  :flash_cards_attributes => [
    { :simplified => "网球", :traditional => "網球",
      :pinyin => "wǎng qiú", :jyutping => "mong5 kau4",
      :meaning => "tennis", :part_of_speech => "noun" },
    { :simplified => "踢", :traditional => "踢",
      :pinyin => "tī", :jyutping => "tek3",
      :meaning => "to kick", :part_of_speech => "verb" }
  ]
})

Song.create({
  :title => "Windy Season 風的季節",
  :artist => "Paula Tsui 甄妮",
  :url => "http://www.youtube.com/embed/KQ2W1RbwsRw",
  :user => laoshi,
  :flash_cards_attributes => [
    { :simplified => "涼", :traditional => "涼",
      :pinyin => "liáng", :jyutping => "loeng4",
      :meaning => "cold", :part_of_speech => "adjective" },
    { :simplified => "轻", :traditional => "輕",
      :pinyin => "qīng", :jyutping => "hing1",
      :meaning => "lightly", :part_of_speech => "adjective" },
    { :simplified => "衣襟", :traditional => "衣襟",
      :pinyin => "yī jīn", :jyutping => "yi1 kam1",
      :meaning => "skirt", :part_of_speech => "noun" },
    { :simplified => "俏然", :traditional => "俏然",
      :pinyin => "qiào rán", :jyutping => "chiu3 yin4",
      :meaning => "pretty natural", :part_of_speech => "adjective" },
    { :simplified => "偷", :traditional => "偷",
      :pinyin => "tōu", :jyutping => "tau1",
      :meaning => "steal", :part_of_speech => "verb" },
    { :simplified => "声音", :traditional => "聲音",
      :pinyin => "shēng yīn", :jyutping => "seng1 yam1",
      :meaning => "sound", :part_of_speech => "noun" }
  ],
  :lyric_attributes => {
    :dialect => "cantonese",
    :traditional => <<TRADITIONAL,
[涼]風輕[輕]吹到[俏然]進了我[衣襟]
夏天[偷]去聽不見[聲音]
[日子]匆匆走過倍令我有百感生
記掛那一片景象繽紛
隨風輕輕吹到你步進了我的心
在一息間改變我一生
付出多少熱誠也沒法去計得真
卻也不需再驚懼風雨侵
吹啊吹讓這風吹
抹乾眼眸裡亮晶的眼淚
吹啊吹讓這風吹
哀傷通通帶走管風裡是誰
從風沙初起想到是季節變更
夢中醒卻歲月如飛奔
是否早訂下來你或我也會變心
慨嘆怎麼會久合終要分
狂風吹得起勁朗月也要被敝隱
泛起一片迷濛塵埃滾
掠走心裡一切美夢帶去那歡欣
帶去我的愛只是獨留恨
TRADITIONAL

    :simplified => <<SIMPLIFIED,
[凉]风轻[轻]吹到俏然进了我衣襟
夏天偷去听不见声音
日子匆匆走过倍令我有百感生
记挂那一片景象缤纷
随风轻轻吹到你步进了我的心
在一息间改变我一生
付出多少热诚也没法去计得真
却也不需再惊惧风雨侵
吹啊吹让这风吹
抹干眼眸里亮晶的眼泪
吹啊吹让这风吹
哀伤通通带走管风里是谁
从风沙初起想到是季节变更
梦中醒却岁月如飞奔
是否早订下来你或我也会变心
慨叹怎么会久合终要分
狂风吹得起劲朗月也要被敝隐
泛起一片迷蒙尘埃滚
掠走心里一切美梦带去那欢欣
带去我的爱只是独留恨
SIMPLIFIED

    :pronunciation => <<PRONUNCIATION,
Liángfēng qīng qīng chuī dào qiào rán jìnle wǒ yījīn
Xiàtiān tōu qù tīng bùjiàn shēngyīn
Rìzi cōngcōng zǒuguò bèi lìng wǒ yǒu bǎigǎn shēng
Jìguà nà yīpiàn jǐngxiàng bīnfēn
Suí fēng qīng qīng chuī dào nǐ bù jìnle wǒ de xīn
Zài yīxī jiān gǎibiàn wǒ yīshēng
Fùchū duōshǎo rèchéng yě méi fǎ qù jì de zhēn
Què yě bù xū zài jīng jù fēngyǔ qīn
Chuī a chuī ràng zhè fēngchuī
Mǒ gān yǎn móu li liàng jīng de yǎnlèi
Chuī a chuī ràng zhè fēngchuī
Āishāng tōngtōng dài zǒu guǎn fēng li shì shuí
Cóng fēngshā chū qǐ xiǎngdào shì jìjié biàngēng
Mèngzhōng xǐng què suìyuè rú fēi bēn
Shìfǒu zǎo dìng xiàlái nǐ huò wǒ yě huì biànxīn
Kǎitàn zěnme huì jiǔ hé zhōng yào fēn
Kuáng fēngchuī de qǐjìng lǎng yuè yě yào bèi bì yǐn
Fàn qǐ yīpiàn míméng chén'āi gǔn
È zǒu xīnlǐ yīqiè měimèng dài qù nà huānxīn
Dài qù wǒ de ài zhǐshì dú liú hèn
PRONUNCIATION

    :timing => <<TIMING,
00:21.41
00:26.29
00:31.26
00:36.13
00:45.81
00:50.55
00:55.39
01:00.25
01:09.94
01:14.48
01:19.66
01:24.51
01:39.42
01:43.89
01:48.80
01:53.55
02:03.22
02:08.15
02:12.87
02:17.84
TIMING

    :translation => <<TRANSLATION,
Pretty natural cool breeze gently blowing into my skirt
Summer stolen hear voices
Hurried times of the day so I have many emotions raw
Miss it a colorful scene
Wind gently blowing you stepping up my heart
Interest in an inter-changed my life
We are unable to pay as much enthusiasm was really count
But also do not need to frighten the storm invasion
Let this wind blowing blowing ah
Dry eyes in bright crystal tears
Let this wind blowing blowing ah
Sadly all who take the wind pipe
From the beginning of thought is sandstorm season change
Dreams of flying but as the years
Whether early or I will set down your change of heart
A long lament how will eventually be divided
Stormy wind enthusiastically Brightness should be spacious hidden
Misty dust thrown up a roll
Made off with all my heart that dreams bring joy
Bring my love just hate being left unattended
TRANSLATION
  }
})

Song.create({
  :title => "Love You Ten Thousand Years 愛你一萬年",
  :artist => "Jenny Tseng 徐小鳳",
  :url => "http://www.youtube.com/embed/pwzZ5em0Erg",
  :user => laoshi,
  :flash_cards_attributes => [
    { :simplified => "一万", :traditional => "一萬",
      :pinyin => "yī wàn", :jyutping => "jat1 maan6",
      :meaning => "ten thousand", :part_of_speech => "noun" },
    { :simplified => "忘记", :traditional => "忘記",
      :pinyin => "wàng jì", :jyutping => "mong4 gei3",
      :meaning => "to forget", :part_of_speech => "verb" }
  ],
  :lyric_attributes => {
    :dialect => "mandarin",
    :traditional => <<TRADITIONAL,
寒風吹起細雨迷離
風雨揭開我的記憶
我像小船尋找港灣
不能把你[忘記]
愛的希望愛的回味
愛的往事難以追憶
風中花蕊深怕枯萎
我願為你祝福
我愛你我心已屬於你
今生今世不移
在我心中再沒有誰
代替你的地位
我愛你對你付出真意
不會飄浮不移
你要為我再想一想
我決定愛你[一萬]年
寒風吹起細雨迷離
風雨揭開我的記憶
我像小船尋找港灣
不能把你忘記
愛的希望愛的回味
愛的往事難以追憶
風中花蕊深怕枯萎
我願為你祝福
我愛你我心已屬於你
今生今世不移
在我心中再沒有誰
代替你的地位
我愛你對你付出真意
不會飄浮不移
你要為我再想一想
我決定愛你一萬年
我愛你我心已屬於你
今生今世不移
在我心中再沒有誰
代替你的地位
我愛你對你付出真意
不會飄浮不移
你要為我再想一想
我決定愛你一萬年
TRADITIONAL
    :simplified => <<SIMPLIFIED,
寒风吹起细雨迷离
风雨揭开我的记忆
我像小船寻找港湾
不能把你[忘记]
爱的希望爱的回味
爱的往事难以追忆
风中花蕊深怕枯萎
我愿为你祝福
我爱你我心已属于你
今生今世不移
在我心中再没有谁
代替你的地位
我爱你对你付出真意
不会飘浮不移
你要为我再想一想
我决定爱你[一万]年
寒风吹起细雨迷离
风雨揭开我的记忆
我像小船寻找港湾
不能把你忘记
爱的希望爱的回味
爱的往事难以追忆
风中花蕊深怕枯萎
我愿为你祝福
我爱你我心已属于你
今生今世不移
在我心中再没有谁
代替你的地位
我爱你对你付出真意
不会飘浮不移
你要为我再想一想
我决定爱你一万年
我爱你我心已属于你
今生今世不移
在我心中再没有谁
代替你的地位
我爱你对你付出真意
不会飘浮不移
你要为我再想一想
我决定爱你一万年
SIMPLIFIED
    :pronunciation => <<PRONUNCIATION,
hán fēngchuī qǐ xì yǔ mílí
fēngyǔ jiē kāi wǒ de jìyì
wǒ xiàng xiǎochuán xúnzhǎo gǎngwān
bùnéng bǎ nǐ wàngjì
ài de xīwàng ài de huíwèi
ài de wǎngshì nányǐ zhuīyì
fēng zhōng huāruǐ shēn pà kūwěi
wǒ yuàn wéi nǐ zhùfú
wǒ ài nǐ wǒ xīn yǐ shǔyú nǐ
jīnshēng jīnshì bù yí
zài wǒ xīnzhōng zài méiyǒu shuí
dàitì nǐ dì dìwèi
wǒ ài nǐ duì nǐ fùchū zhēnyì
bù huì piāofú bù yí
nǐ yào wèi wǒ zài xiǎng yī xiǎng
wǒ juédìng ài nǐ yī wàn nián
hán fēngchuī qǐ xì yǔ mílí
fēngyǔ jiē kāi wǒ de jìyì
wǒ xiàng xiǎochuán xúnzhǎo gǎngwān
bùnéng bǎ nǐ wàngjì
ài de xīwàng ài de huíwèi
ài de wǎngshì nányǐ zhuīyì
fēng zhōng huāruǐ shēn pà kūwěi
wǒ yuàn wéi nǐ zhùfú
wǒ ài nǐ wǒ xīn yǐ shǔyú nǐ
jīnshēng jīnshì bù yí
zài wǒ xīnzhōng zài méiyǒu shuí
dàitì nǐ dì dìwèi
wǒ ài nǐ duì nǐ fùchū zhēnyì
bù huì piāofú bù yí
nǐ yào wèi wǒ zài xiǎng yī xiǎng
wǒ juédìng ài nǐ yī wàn nián
wǒ ài nǐ wǒ xīn yǐ shǔyú nǐ
jīnshēng jīnshì bù yí
zài wǒ xīnzhōng zài méiyǒu shuí
dàitì nǐ dì dìwèi
wǒ ài nǐ duì nǐ fùchū zhēnyì
bù huì piāofú bù yí
nǐ yào wèi wǒ zài xiǎng yī xiǎng
wǒ juédìng ài nǐ yī wàn nián
PRONUNCIATION
    :timing => <<TIMING,
00:19.96
00:23.30
00:26.32
00:29.76
00:32.61
00:36.23
00:39.47
00:42.85
00:45.36
00:49.32
00:52.28
00:55.85
00:58.32
01:02.35
01:05.16
01:09.43
01:24.41
01:28.21
01:31.20
01:34.81
01:37.49
01:41.22
01:44.14
01:47.65
01:50.18
01:54.97
01:57.20
02:00.66
02:03.19
02:07.20
02:10.77
02:14.18
02:22.96
02:26.64
02:29.58
02:33.19
02:35.74
02:39.43
02:42.44
02:46.11
TIMING
    :translation => <<TRANSLATION
The cold wind blows, rain blurred
The storm brings back my meories
Like a boat searching for a harbor
Just couldn't forget you
Love's wish, love's aftertaste
It's hard to recollect past love
The flower in the wind fears withering
I am willing to bless you
I love you, my heart alreay belongs to you
This life is unwavering
In my heart, there is no one
who can take your place
I love you, you've paid the true meaning
undrifting, not uncertain
For me, you want to think again
I decided to love you a thousand years
The cold wind blows, rain blurred
The storm brings back my meories
Like a boat searching for a harbor
Just couldn't forget you
Love's wish, love's aftertaste
It's hard to recollect past love
The flower in the wind fears withering
I am willing to bless you
I love you, my heart alreay belongs to you
This life is unwavering
In my heart, there is no one
who can take your place
I love you, you've paid the true meaning
undrifting, not uncertain
For me, you want to think again
I decided to love you a thousand years
I love you, my heart alreay belongs to you
This life is unwavering
In my heart, there is no one
who can take your place
I love you, you've paid the true meaning
undrifting, not uncertain
For me, you want to think again
I decided to love you a thousand years
TRANSLATION
  }
})
