dtmc
module chess
s : [0..782] init 0;
beta : [-10000..10001] init 10001;
x : [-10001..10000] init -10001;
[]s=0->1/27:(s'=1)&(beta'=10000)&(x'=-35)+1/27:(s'=2)&(beta'=10000)&(x'=-35)+1/27:(s'=3)&(beta'=10000)&(x'=-35)+1/27:(s'=4)&(beta'=10000)&(x'=-35)+1/27:(s'=5)&(beta'=10000)&(x'=-35)+1/27:(s'=6)&(beta'=10000)&(x'=-35)+1/27:(s'=7)&(beta'=10000)&(x'=-35)+1/27:(s'=8)&(beta'=10000)&(x'=-35)+1/27:(s'=9)&(beta'=10000)&(x'=-35)+1/27:(s'=10)&(beta'=10000)&(x'=-35)+1/27:(s'=11)&(beta'=10000)&(x'=-35)+1/27:(s'=12)&(beta'=10000)&(x'=-35)+1/27:(s'=13)&(beta'=10000)&(x'=-35)+1/27:(s'=14)&(beta'=10000)&(x'=-35)+1/27:(s'=15)&(beta'=10000)&(x'=-35)+1/27:(s'=16)&(beta'=10000)&(x'=-35)+1/27:(s'=17)&(beta'=10000)&(x'=-35)+1/27:(s'=18)&(beta'=10000)&(x'=-35)+1/27:(s'=19)&(beta'=10000)&(x'=-35)+1/27:(s'=20)&(beta'=10000)&(x'=-35)+1/27:(s'=21)&(beta'=10000)&(x'=-35)+1/27:(s'=22)&(beta'=10000)&(x'=-35)+1/27:(s'=23)&(beta'=10000)&(x'=-35)+1/27:(s'=24)&(beta'=10000)&(x'=-35)+1/27:(s'=25)&(beta'=10000)&(x'=-35)+1/27:(s'=26)&(beta'=10000)&(x'=-35)+1/27:(s'=27)&(beta'=10000)&(x'=-35);
[]s=1->1/28:(s'=28)&(beta'=10000)&(x'=-197)+1/28:(s'=29)&(beta'=10000)&(x'=-197)+1/28:(s'=30)&(beta'=10000)&(x'=-35)+1/28:(s'=31)&(beta'=10000)&(x'=1)+1/28:(s'=32)&(beta'=10000)&(x'=2)+1/28:(s'=33)&(beta'=10000)&(x'=2)+1/28:(s'=34)&(beta'=10000)&(x'=2)+1/28:(s'=35)&(beta'=10000)&(x'=30)+1/28:(s'=36)&(beta'=10000)&(x'=30)+1/28:(s'=37)&(beta'=10000)&(x'=30)+1/28:(s'=38)&(beta'=10000)&(x'=30)+1/28:(s'=39)&(beta'=10000)&(x'=30)+1/28:(s'=40)&(beta'=10000)&(x'=30)+1/28:(s'=41)&(beta'=10000)&(x'=30)+1/28:(s'=42)&(beta'=10000)&(x'=30)+1/28:(s'=43)&(beta'=10000)&(x'=30)+1/28:(s'=44)&(beta'=10000)&(x'=30)+1/28:(s'=45)&(beta'=10000)&(x'=30)+1/28:(s'=46)&(beta'=10000)&(x'=30)+1/28:(s'=47)&(beta'=10000)&(x'=30)+1/28:(s'=48)&(beta'=10000)&(x'=30)+1/28:(s'=49)&(beta'=10000)&(x'=30)+1/28:(s'=50)&(beta'=10000)&(x'=30)+1/28:(s'=51)&(beta'=10000)&(x'=30)+1/28:(s'=52)&(beta'=10000)&(x'=35)+1/28:(s'=53)&(beta'=10000)&(x'=35)+1/28:(s'=54)&(beta'=10000)&(x'=35)+1/28:(s'=55)&(beta'=10000)&(x'=35);
[]s=2->1/28:(s'=56)&(beta'=35)&(x'=35)+1/28:(s'=57)&(beta'=35)&(x'=-20)+1/28:(s'=58)&(beta'=35)&(x'=16)+1/28:(s'=59)&(beta'=35)&(x'=17)+1/28:(s'=60)&(beta'=35)&(x'=35)+1/28:(s'=61)&(beta'=35)&(x'=35)+1/28:(s'=62)&(beta'=35)&(x'=17)+1/28:(s'=63)&(beta'=35)&(x'=17)+1/28:(s'=64)&(beta'=35)&(x'=35)+1/28:(s'=65)&(beta'=35)&(x'=17)+1/28:(s'=66)&(beta'=35)&(x'=17)+1/28:(s'=67)&(beta'=35)&(x'=17)+1/28:(s'=68)&(beta'=35)&(x'=17)+1/28:(s'=69)&(beta'=35)&(x'=17)+1/28:(s'=70)&(beta'=35)&(x'=17)+1/28:(s'=71)&(beta'=35)&(x'=17)+1/28:(s'=72)&(beta'=35)&(x'=35)+1/28:(s'=73)&(beta'=35)&(x'=35)+1/28:(s'=74)&(beta'=35)&(x'=35)+1/28:(s'=75)&(beta'=35)&(x'=35)+1/28:(s'=76)&(beta'=35)&(x'=17)+1/28:(s'=77)&(beta'=35)&(x'=17)+1/28:(s'=78)&(beta'=35)&(x'=17)+1/28:(s'=79)&(beta'=35)&(x'=17)+1/28:(s'=80)&(beta'=35)&(x'=17)+1/28:(s'=81)&(beta'=35)&(x'=17)+1/28:(s'=82)&(beta'=35)&(x'=17)+1/28:(s'=83)&(beta'=35)&(x'=17);
[]s=3->1/28:(s'=84)&(beta'=35)&(x'=-192)+1/28:(s'=85)&(beta'=35)&(x'=-25)+1/28:(s'=86)&(beta'=35)&(x'=11)+1/28:(s'=87)&(beta'=35)&(x'=12)+1/28:(s'=88)&(beta'=35)&(x'=35)+1/28:(s'=89)&(beta'=35)&(x'=35)+1/28:(s'=90)&(beta'=35)&(x'=35)+1/28:(s'=91)&(beta'=35)&(x'=30)+1/28:(s'=92)&(beta'=35)&(x'=35)+1/28:(s'=93)&(beta'=35)&(x'=35)+1/28:(s'=94)&(beta'=35)&(x'=30)+1/28:(s'=95)&(beta'=35)&(x'=30)+1/28:(s'=96)&(beta'=35)&(x'=30)+1/28:(s'=97)&(beta'=35)&(x'=30)+1/28:(s'=98)&(beta'=35)&(x'=30)+1/28:(s'=99)&(beta'=35)&(x'=30)+1/28:(s'=100)&(beta'=35)&(x'=30)+1/28:(s'=101)&(beta'=35)&(x'=30)+1/28:(s'=102)&(beta'=35)&(x'=30)+1/28:(s'=103)&(beta'=35)&(x'=30)+1/28:(s'=104)&(beta'=35)&(x'=30)+1/28:(s'=105)&(beta'=35)&(x'=30)+1/28:(s'=106)&(beta'=35)&(x'=30)+1/28:(s'=107)&(beta'=35)&(x'=30)+1/28:(s'=108)&(beta'=35)&(x'=30)+1/28:(s'=109)&(beta'=35)&(x'=30)+1/28:(s'=110)&(beta'=35)&(x'=30)+1/28:(s'=111)&(beta'=35)&(x'=30);
[]s=4->1/28:(s'=112)&(beta'=35)&(x'=-187)+1/28:(s'=113)&(beta'=35)&(x'=-25)+1/28:(s'=114)&(beta'=35)&(x'=11)+1/28:(s'=115)&(beta'=35)&(x'=12)+1/28:(s'=116)&(beta'=35)&(x'=35)+1/28:(s'=117)&(beta'=35)&(x'=35)+1/28:(s'=118)&(beta'=35)&(x'=12)+1/28:(s'=119)&(beta'=35)&(x'=30)+1/28:(s'=120)&(beta'=35)&(x'=35)+1/28:(s'=121)&(beta'=35)&(x'=35)+1/28:(s'=122)&(beta'=35)&(x'=30)+1/28:(s'=123)&(beta'=35)&(x'=30)+1/28:(s'=124)&(beta'=35)&(x'=30)+1/28:(s'=125)&(beta'=35)&(x'=30)+1/28:(s'=126)&(beta'=35)&(x'=30)+1/28:(s'=127)&(beta'=35)&(x'=30)+1/28:(s'=128)&(beta'=35)&(x'=30)+1/28:(s'=129)&(beta'=35)&(x'=30)+1/28:(s'=130)&(beta'=35)&(x'=30)+1/28:(s'=131)&(beta'=35)&(x'=30)+1/28:(s'=132)&(beta'=35)&(x'=30)+1/28:(s'=133)&(beta'=35)&(x'=30)+1/28:(s'=134)&(beta'=35)&(x'=30)+1/28:(s'=135)&(beta'=35)&(x'=30)+1/28:(s'=136)&(beta'=35)&(x'=30)+1/28:(s'=137)&(beta'=35)&(x'=30)+1/28:(s'=138)&(beta'=35)&(x'=30)+1/28:(s'=139)&(beta'=35)&(x'=30);
[]s=5->1/27:(s'=140)&(beta'=35)&(x'=-182)+1/27:(s'=141)&(beta'=35)&(x'=-20)+1/27:(s'=142)&(beta'=35)&(x'=16)+1/27:(s'=143)&(beta'=35)&(x'=17)+1/27:(s'=144)&(beta'=35)&(x'=17)+1/27:(s'=145)&(beta'=35)&(x'=35)+1/27:(s'=146)&(beta'=35)&(x'=35)+1/27:(s'=147)&(beta'=35)&(x'=35)+1/27:(s'=148)&(beta'=35)&(x'=35)+1/27:(s'=149)&(beta'=35)&(x'=17)+1/27:(s'=150)&(beta'=35)&(x'=35)+1/27:(s'=151)&(beta'=35)&(x'=17)+1/27:(s'=152)&(beta'=35)&(x'=17)+1/27:(s'=153)&(beta'=35)&(x'=17)+1/27:(s'=154)&(beta'=35)&(x'=17)+1/27:(s'=155)&(beta'=35)&(x'=17)+1/27:(s'=156)&(beta'=35)&(x'=17)+1/27:(s'=157)&(beta'=35)&(x'=17)+1/27:(s'=158)&(beta'=35)&(x'=17)+1/27:(s'=159)&(beta'=35)&(x'=17)+1/27:(s'=160)&(beta'=35)&(x'=17)+1/27:(s'=161)&(beta'=35)&(x'=17)+1/27:(s'=162)&(beta'=35)&(x'=17)+1/27:(s'=163)&(beta'=35)&(x'=17)+1/27:(s'=164)&(beta'=35)&(x'=17)+1/27:(s'=165)&(beta'=35)&(x'=17)+1/27:(s'=166)&(beta'=35)&(x'=17);
[]s=6->1/27:(s'=167)&(beta'=35)&(x'=35)+1/27:(s'=168)&(beta'=35)&(x'=35)+1/27:(s'=169)&(beta'=35)&(x'=35)+1/27:(s'=170)&(beta'=35)&(x'=26)+1/27:(s'=171)&(beta'=35)&(x'=27)+1/27:(s'=172)&(beta'=35)&(x'=35)+1/27:(s'=173)&(beta'=35)&(x'=27)+1/27:(s'=174)&(beta'=35)&(x'=35)+1/27:(s'=175)&(beta'=35)&(x'=35)+1/27:(s'=176)&(beta'=35)&(x'=35)+1/27:(s'=177)&(beta'=35)&(x'=35)+1/27:(s'=178)&(beta'=35)&(x'=35)+1/27:(s'=179)&(beta'=35)&(x'=35)+1/27:(s'=180)&(beta'=35)&(x'=27)+1/27:(s'=181)&(beta'=35)&(x'=27)+1/27:(s'=182)&(beta'=35)&(x'=27)+1/27:(s'=183)&(beta'=35)&(x'=27)+1/27:(s'=184)&(beta'=35)&(x'=27)+1/27:(s'=185)&(beta'=35)&(x'=27)+1/27:(s'=186)&(beta'=35)&(x'=35)+1/27:(s'=187)&(beta'=35)&(x'=27)+1/27:(s'=188)&(beta'=35)&(x'=27)+1/27:(s'=189)&(beta'=35)&(x'=27)+1/27:(s'=190)&(beta'=35)&(x'=27)+1/27:(s'=191)&(beta'=35)&(x'=27)+1/27:(s'=192)&(beta'=35)&(x'=28)+1/27:(s'=193)&(beta'=35)&(x'=28);
[]s=7->1/28:(s'=194)&(beta'=35)&(x'=-162)+1/28:(s'=195)&(beta'=35)&(x'=35)+1/28:(s'=196)&(beta'=35)&(x'=35)+1/28:(s'=197)&(beta'=35)&(x'=35)+1/28:(s'=198)&(beta'=35)&(x'=0)+1/28:(s'=199)&(beta'=35)&(x'=35)+1/28:(s'=200)&(beta'=35)&(x'=35)+1/28:(s'=201)&(beta'=35)&(x'=35)+1/28:(s'=202)&(beta'=35)&(x'=35)+1/28:(s'=203)&(beta'=35)&(x'=35)+1/28:(s'=204)&(beta'=35)&(x'=35)+1/28:(s'=205)&(beta'=35)&(x'=0)+1/28:(s'=206)&(beta'=35)&(x'=0)+1/28:(s'=207)&(beta'=35)&(x'=35)+1/28:(s'=208)&(beta'=35)&(x'=35)+1/28:(s'=209)&(beta'=35)&(x'=35)+1/28:(s'=210)&(beta'=35)&(x'=23)+1/28:(s'=211)&(beta'=35)&(x'=23)+1/28:(s'=212)&(beta'=35)&(x'=30)+1/28:(s'=213)&(beta'=35)&(x'=33)+1/28:(s'=214)&(beta'=35)&(x'=33)+1/28:(s'=215)&(beta'=35)&(x'=35)+1/28:(s'=216)&(beta'=35)&(x'=35)+1/28:(s'=217)&(beta'=35)&(x'=33)+1/28:(s'=218)&(beta'=35)&(x'=33)+1/28:(s'=219)&(beta'=35)&(x'=35)+1/28:(s'=220)&(beta'=35)&(x'=33)+1/28:(s'=221)&(beta'=35)&(x'=33);
[]s=8->1/28:(s'=222)&(beta'=35)&(x'=-162)+1/28:(s'=223)&(beta'=35)&(x'=35)+1/28:(s'=224)&(beta'=35)&(x'=35)+1/28:(s'=225)&(beta'=35)&(x'=35)+1/28:(s'=226)&(beta'=35)&(x'=0)+1/28:(s'=227)&(beta'=35)&(x'=35)+1/28:(s'=228)&(beta'=35)&(x'=35)+1/28:(s'=229)&(beta'=35)&(x'=35)+1/28:(s'=230)&(beta'=35)&(x'=0)+1/28:(s'=231)&(beta'=35)&(x'=35)+1/28:(s'=232)&(beta'=35)&(x'=35)+1/28:(s'=233)&(beta'=35)&(x'=0)+1/28:(s'=234)&(beta'=35)&(x'=35)+1/28:(s'=235)&(beta'=35)&(x'=35)+1/28:(s'=236)&(beta'=35)&(x'=35)+1/28:(s'=237)&(beta'=35)&(x'=0)+1/28:(s'=238)&(beta'=35)&(x'=30)+1/28:(s'=239)&(beta'=35)&(x'=33)+1/28:(s'=240)&(beta'=35)&(x'=33)+1/28:(s'=241)&(beta'=35)&(x'=35)+1/28:(s'=242)&(beta'=35)&(x'=35)+1/28:(s'=243)&(beta'=35)&(x'=33)+1/28:(s'=244)&(beta'=35)&(x'=33)+1/28:(s'=245)&(beta'=35)&(x'=33)+1/28:(s'=246)&(beta'=35)&(x'=33)+1/28:(s'=247)&(beta'=35)&(x'=33)+1/28:(s'=248)&(beta'=35)&(x'=33)+1/28:(s'=249)&(beta'=35)&(x'=33);
[]s=9->1/28:(s'=250)&(beta'=35)&(x'=35)+1/28:(s'=251)&(beta'=35)&(x'=35)+1/28:(s'=252)&(beta'=35)&(x'=35)+1/28:(s'=253)&(beta'=35)&(x'=35)+1/28:(s'=254)&(beta'=35)&(x'=20)+1/28:(s'=255)&(beta'=35)&(x'=35)+1/28:(s'=256)&(beta'=35)&(x'=35)+1/28:(s'=257)&(beta'=35)&(x'=35)+1/28:(s'=258)&(beta'=35)&(x'=35)+1/28:(s'=259)&(beta'=35)&(x'=35)+1/28:(s'=260)&(beta'=35)&(x'=35)+1/28:(s'=261)&(beta'=35)&(x'=35)+1/28:(s'=262)&(beta'=35)&(x'=35)+1/28:(s'=263)&(beta'=35)&(x'=35)+1/28:(s'=264)&(beta'=35)&(x'=35)+1/28:(s'=265)&(beta'=35)&(x'=35)+1/28:(s'=266)&(beta'=35)&(x'=35)+1/28:(s'=267)&(beta'=35)&(x'=35)+1/28:(s'=268)&(beta'=35)&(x'=35)+1/28:(s'=269)&(beta'=35)&(x'=20)+1/28:(s'=270)&(beta'=35)&(x'=35)+1/28:(s'=271)&(beta'=35)&(x'=20)+1/28:(s'=272)&(beta'=35)&(x'=35)+1/28:(s'=273)&(beta'=35)&(x'=35)+1/28:(s'=274)&(beta'=35)&(x'=35)+1/28:(s'=275)&(beta'=35)&(x'=35)+1/28:(s'=276)&(beta'=35)&(x'=35)+1/28:(s'=277)&(beta'=35)&(x'=35);
[]s=10->1/28:(s'=278)&(beta'=35)&(x'=-202)+1/28:(s'=279)&(beta'=35)&(x'=1)+1/28:(s'=280)&(beta'=35)&(x'=2)+1/28:(s'=281)&(beta'=35)&(x'=35)+1/28:(s'=282)&(beta'=35)&(x'=2)+1/28:(s'=283)&(beta'=35)&(x'=30)+1/28:(s'=284)&(beta'=35)&(x'=30)+1/28:(s'=285)&(beta'=35)&(x'=30)+1/28:(s'=286)&(beta'=35)&(x'=30)+1/28:(s'=287)&(beta'=35)&(x'=30)+1/28:(s'=288)&(beta'=35)&(x'=30)+1/28:(s'=289)&(beta'=35)&(x'=30)+1/28:(s'=290)&(beta'=35)&(x'=30)+1/28:(s'=291)&(beta'=35)&(x'=30)+1/28:(s'=292)&(beta'=35)&(x'=30)+1/28:(s'=293)&(beta'=35)&(x'=30)+1/28:(s'=294)&(beta'=35)&(x'=30)+1/28:(s'=295)&(beta'=35)&(x'=30)+1/28:(s'=296)&(beta'=35)&(x'=30)+1/28:(s'=297)&(beta'=35)&(x'=30)+1/28:(s'=298)&(beta'=35)&(x'=30)+1/28:(s'=299)&(beta'=35)&(x'=30)+1/28:(s'=300)&(beta'=35)&(x'=30)+1/28:(s'=301)&(beta'=35)&(x'=30)+1/28:(s'=302)&(beta'=35)&(x'=30)+1/28:(s'=303)&(beta'=35)&(x'=30)+1/28:(s'=304)&(beta'=35)&(x'=30)+1/28:(s'=305)&(beta'=35)&(x'=30);
[]s=11->1/28:(s'=306)&(beta'=35)&(x'=35)+1/28:(s'=307)&(beta'=35)&(x'=-123)+1/28:(s'=308)&(beta'=35)&(x'=16)+1/28:(s'=309)&(beta'=35)&(x'=17)+1/28:(s'=310)&(beta'=35)&(x'=35)+1/28:(s'=311)&(beta'=35)&(x'=35)+1/28:(s'=312)&(beta'=35)&(x'=35)+1/28:(s'=313)&(beta'=35)&(x'=35)+1/28:(s'=314)&(beta'=35)&(x'=17)+1/28:(s'=315)&(beta'=35)&(x'=35)+1/28:(s'=316)&(beta'=35)&(x'=35)+1/28:(s'=317)&(beta'=35)&(x'=35)+1/28:(s'=318)&(beta'=35)&(x'=17)+1/28:(s'=319)&(beta'=35)&(x'=17)+1/28:(s'=320)&(beta'=35)&(x'=17)+1/28:(s'=321)&(beta'=35)&(x'=17)+1/28:(s'=322)&(beta'=35)&(x'=17)+1/28:(s'=323)&(beta'=35)&(x'=17)+1/28:(s'=324)&(beta'=35)&(x'=17)+1/28:(s'=325)&(beta'=35)&(x'=35)+1/28:(s'=326)&(beta'=35)&(x'=17)+1/28:(s'=327)&(beta'=35)&(x'=17)+1/28:(s'=328)&(beta'=35)&(x'=17)+1/28:(s'=329)&(beta'=35)&(x'=17)+1/28:(s'=330)&(beta'=35)&(x'=17)+1/28:(s'=331)&(beta'=35)&(x'=17)+1/28:(s'=332)&(beta'=35)&(x'=17)+1/28:(s'=333)&(beta'=35)&(x'=17);
[]s=12->1/28:(s'=334)&(beta'=35)&(x'=-163)+1/28:(s'=335)&(beta'=35)&(x'=35)+1/28:(s'=336)&(beta'=35)&(x'=35)+1/28:(s'=337)&(beta'=35)&(x'=35)+1/28:(s'=338)&(beta'=35)&(x'=35)+1/28:(s'=339)&(beta'=35)&(x'=35)+1/28:(s'=340)&(beta'=35)&(x'=35)+1/28:(s'=341)&(beta'=35)&(x'=-1)+1/28:(s'=342)&(beta'=35)&(x'=35)+1/28:(s'=343)&(beta'=35)&(x'=35)+1/28:(s'=344)&(beta'=35)&(x'=35)+1/28:(s'=345)&(beta'=35)&(x'=-1)+1/28:(s'=346)&(beta'=35)&(x'=35)+1/28:(s'=347)&(beta'=35)&(x'=35)+1/28:(s'=348)&(beta'=35)&(x'=34)+1/28:(s'=349)&(beta'=35)&(x'=34)+1/28:(s'=350)&(beta'=35)&(x'=34)+1/28:(s'=351)&(beta'=35)&(x'=34)+1/28:(s'=352)&(beta'=35)&(x'=34)+1/28:(s'=353)&(beta'=35)&(x'=34)+1/28:(s'=354)&(beta'=35)&(x'=34)+1/28:(s'=355)&(beta'=35)&(x'=34)+1/28:(s'=356)&(beta'=35)&(x'=34)+1/28:(s'=357)&(beta'=35)&(x'=34)+1/28:(s'=358)&(beta'=35)&(x'=34)+1/28:(s'=359)&(beta'=35)&(x'=34)+1/28:(s'=360)&(beta'=35)&(x'=34)+1/28:(s'=361)&(beta'=35)&(x'=34);
[]s=13->1/28:(s'=362)&(beta'=35)&(x'=-164)+1/28:(s'=363)&(beta'=35)&(x'=34)+1/28:(s'=364)&(beta'=35)&(x'=35)+1/28:(s'=365)&(beta'=35)&(x'=35)+1/28:(s'=366)&(beta'=35)&(x'=35)+1/28:(s'=367)&(beta'=35)&(x'=35)+1/28:(s'=368)&(beta'=35)&(x'=35)+1/28:(s'=369)&(beta'=35)&(x'=34)+1/28:(s'=370)&(beta'=35)&(x'=35)+1/28:(s'=371)&(beta'=35)&(x'=35)+1/28:(s'=372)&(beta'=35)&(x'=35)+1/28:(s'=373)&(beta'=35)&(x'=34)+1/28:(s'=374)&(beta'=35)&(x'=35)+1/28:(s'=375)&(beta'=35)&(x'=34)+1/28:(s'=376)&(beta'=35)&(x'=34)+1/28:(s'=377)&(beta'=35)&(x'=34)+1/28:(s'=378)&(beta'=35)&(x'=34)+1/28:(s'=379)&(beta'=35)&(x'=34)+1/28:(s'=380)&(beta'=35)&(x'=34)+1/28:(s'=381)&(beta'=35)&(x'=34)+1/28:(s'=382)&(beta'=35)&(x'=34)+1/28:(s'=383)&(beta'=35)&(x'=34)+1/28:(s'=384)&(beta'=35)&(x'=34)+1/28:(s'=385)&(beta'=35)&(x'=34)+1/28:(s'=386)&(beta'=35)&(x'=34)+1/28:(s'=387)&(beta'=35)&(x'=34)+1/28:(s'=388)&(beta'=35)&(x'=34)+1/28:(s'=389)&(beta'=35)&(x'=34);
[]s=14->1/28:(s'=390)&(beta'=35)&(x'=-148)+1/28:(s'=391)&(beta'=35)&(x'=35)+1/28:(s'=392)&(beta'=35)&(x'=35)+1/28:(s'=393)&(beta'=35)&(x'=35)+1/28:(s'=394)&(beta'=35)&(x'=35)+1/28:(s'=395)&(beta'=35)&(x'=35)+1/28:(s'=396)&(beta'=35)&(x'=35)+1/28:(s'=397)&(beta'=35)&(x'=35)+1/28:(s'=398)&(beta'=35)&(x'=35)+1/28:(s'=399)&(beta'=35)&(x'=14)+1/28:(s'=400)&(beta'=35)&(x'=35)+1/28:(s'=401)&(beta'=35)&(x'=35)+1/28:(s'=402)&(beta'=35)&(x'=35)+1/28:(s'=403)&(beta'=35)&(x'=35)+1/28:(s'=404)&(beta'=35)&(x'=14)+1/28:(s'=405)&(beta'=35)&(x'=35)+1/28:(s'=406)&(beta'=35)&(x'=35)+1/28:(s'=407)&(beta'=35)&(x'=35)+1/28:(s'=408)&(beta'=35)&(x'=35)+1/28:(s'=409)&(beta'=35)&(x'=14)+1/28:(s'=410)&(beta'=35)&(x'=35)+1/28:(s'=411)&(beta'=35)&(x'=35)+1/28:(s'=412)&(beta'=35)&(x'=14)+1/28:(s'=413)&(beta'=35)&(x'=29)+1/28:(s'=414)&(beta'=35)&(x'=29)+1/28:(s'=415)&(beta'=35)&(x'=35)+1/28:(s'=416)&(beta'=35)&(x'=34)+1/28:(s'=417)&(beta'=35)&(x'=35);
[]s=15->1/28:(s'=418)&(beta'=35)&(x'=-150)+1/28:(s'=419)&(beta'=35)&(x'=35)+1/28:(s'=420)&(beta'=35)&(x'=35)+1/28:(s'=421)&(beta'=35)&(x'=35)+1/28:(s'=422)&(beta'=35)&(x'=35)+1/28:(s'=423)&(beta'=35)&(x'=35)+1/28:(s'=424)&(beta'=35)&(x'=35)+1/28:(s'=425)&(beta'=35)&(x'=35)+1/28:(s'=426)&(beta'=35)&(x'=35)+1/28:(s'=427)&(beta'=35)&(x'=35)+1/28:(s'=428)&(beta'=35)&(x'=35)+1/28:(s'=429)&(beta'=35)&(x'=12)+1/28:(s'=430)&(beta'=35)&(x'=35)+1/28:(s'=431)&(beta'=35)&(x'=35)+1/28:(s'=432)&(beta'=35)&(x'=35)+1/28:(s'=433)&(beta'=35)&(x'=35)+1/28:(s'=434)&(beta'=35)&(x'=35)+1/28:(s'=435)&(beta'=35)&(x'=35)+1/28:(s'=436)&(beta'=35)&(x'=35)+1/28:(s'=437)&(beta'=35)&(x'=12)+1/28:(s'=438)&(beta'=35)&(x'=35)+1/28:(s'=439)&(beta'=35)&(x'=33)+1/28:(s'=440)&(beta'=35)&(x'=33)+1/28:(s'=441)&(beta'=35)&(x'=35)+1/28:(s'=442)&(beta'=35)&(x'=33)+1/28:(s'=443)&(beta'=35)&(x'=33)+1/28:(s'=444)&(beta'=35)&(x'=33)+1/28:(s'=445)&(beta'=35)&(x'=33);
[]s=16->1/28:(s'=446)&(beta'=35)&(x'=-170)+1/28:(s'=447)&(beta'=35)&(x'=33)+1/28:(s'=448)&(beta'=35)&(x'=34)+1/28:(s'=449)&(beta'=35)&(x'=35)+1/28:(s'=450)&(beta'=35)&(x'=35)+1/28:(s'=451)&(beta'=35)&(x'=35)+1/28:(s'=452)&(beta'=35)&(x'=35)+1/28:(s'=453)&(beta'=35)&(x'=35)+1/28:(s'=454)&(beta'=35)&(x'=35)+1/28:(s'=455)&(beta'=35)&(x'=34)+1/28:(s'=456)&(beta'=35)&(x'=35)+1/28:(s'=457)&(beta'=35)&(x'=34)+1/28:(s'=458)&(beta'=35)&(x'=34)+1/28:(s'=459)&(beta'=35)&(x'=34)+1/28:(s'=460)&(beta'=35)&(x'=34)+1/28:(s'=461)&(beta'=35)&(x'=34)+1/28:(s'=462)&(beta'=35)&(x'=34)+1/28:(s'=463)&(beta'=35)&(x'=34)+1/28:(s'=464)&(beta'=35)&(x'=34)+1/28:(s'=465)&(beta'=35)&(x'=34)+1/28:(s'=466)&(beta'=35)&(x'=34)+1/28:(s'=467)&(beta'=35)&(x'=34)+1/28:(s'=468)&(beta'=35)&(x'=34)+1/28:(s'=469)&(beta'=35)&(x'=34)+1/28:(s'=470)&(beta'=35)&(x'=34)+1/28:(s'=471)&(beta'=35)&(x'=34)+1/28:(s'=472)&(beta'=35)&(x'=34)+1/28:(s'=473)&(beta'=35)&(x'=34);
[]s=17->1/29:(s'=474)&(beta'=35)&(x'=35)+1/29:(s'=475)&(beta'=35)&(x'=-168)+1/29:(s'=476)&(beta'=35)&(x'=28)+1/29:(s'=477)&(beta'=35)&(x'=29)+1/29:(s'=478)&(beta'=35)&(x'=35)+1/29:(s'=479)&(beta'=35)&(x'=35)+1/29:(s'=480)&(beta'=35)&(x'=29)+1/29:(s'=481)&(beta'=35)&(x'=35)+1/29:(s'=482)&(beta'=35)&(x'=35)+1/29:(s'=483)&(beta'=35)&(x'=35)+1/29:(s'=484)&(beta'=35)&(x'=35)+1/29:(s'=485)&(beta'=35)&(x'=29)+1/29:(s'=486)&(beta'=35)&(x'=29)+1/29:(s'=487)&(beta'=35)&(x'=29)+1/29:(s'=488)&(beta'=35)&(x'=29)+1/29:(s'=489)&(beta'=35)&(x'=29)+1/29:(s'=490)&(beta'=35)&(x'=29)+1/29:(s'=491)&(beta'=35)&(x'=29)+1/29:(s'=492)&(beta'=35)&(x'=29)+1/29:(s'=493)&(beta'=35)&(x'=29)+1/29:(s'=494)&(beta'=35)&(x'=29)+1/29:(s'=495)&(beta'=35)&(x'=29)+1/29:(s'=496)&(beta'=35)&(x'=29)+1/29:(s'=497)&(beta'=35)&(x'=29)+1/29:(s'=498)&(beta'=35)&(x'=29)+1/29:(s'=499)&(beta'=35)&(x'=29)+1/29:(s'=500)&(beta'=35)&(x'=29)+1/29:(s'=501)&(beta'=35)&(x'=29)+1/29:(s'=502)&(beta'=35)&(x'=29);
[]s=18->1/28:(s'=503)&(beta'=35)&(x'=-210)+1/28:(s'=504)&(beta'=35)&(x'=6)+1/28:(s'=505)&(beta'=35)&(x'=7)+1/28:(s'=506)&(beta'=35)&(x'=35)+1/28:(s'=507)&(beta'=35)&(x'=35)+1/28:(s'=508)&(beta'=35)&(x'=30)+1/28:(s'=509)&(beta'=35)&(x'=30)+1/28:(s'=510)&(beta'=35)&(x'=30)+1/28:(s'=511)&(beta'=35)&(x'=35)+1/28:(s'=512)&(beta'=35)&(x'=30)+1/28:(s'=513)&(beta'=35)&(x'=30)+1/28:(s'=514)&(beta'=35)&(x'=30)+1/28:(s'=515)&(beta'=35)&(x'=30)+1/28:(s'=516)&(beta'=35)&(x'=30)+1/28:(s'=517)&(beta'=35)&(x'=30)+1/28:(s'=518)&(beta'=35)&(x'=30)+1/28:(s'=519)&(beta'=35)&(x'=30)+1/28:(s'=520)&(beta'=35)&(x'=30)+1/28:(s'=521)&(beta'=35)&(x'=30)+1/28:(s'=522)&(beta'=35)&(x'=30)+1/28:(s'=523)&(beta'=35)&(x'=30)+1/28:(s'=524)&(beta'=35)&(x'=30)+1/28:(s'=525)&(beta'=35)&(x'=30)+1/28:(s'=526)&(beta'=35)&(x'=30)+1/28:(s'=527)&(beta'=35)&(x'=30)+1/28:(s'=528)&(beta'=35)&(x'=30)+1/28:(s'=529)&(beta'=35)&(x'=30)+1/28:(s'=530)&(beta'=35)&(x'=30);
[]s=19->1/29:(s'=531)&(beta'=35)&(x'=35)+1/29:(s'=532)&(beta'=35)&(x'=-210)+1/29:(s'=533)&(beta'=35)&(x'=-12)+1/29:(s'=534)&(beta'=35)&(x'=-11)+1/29:(s'=535)&(beta'=35)&(x'=22)+1/29:(s'=536)&(beta'=35)&(x'=22)+1/29:(s'=537)&(beta'=35)&(x'=22)+1/29:(s'=538)&(beta'=35)&(x'=22)+1/29:(s'=539)&(beta'=35)&(x'=22)+1/29:(s'=540)&(beta'=35)&(x'=22)+1/29:(s'=541)&(beta'=35)&(x'=22)+1/29:(s'=542)&(beta'=35)&(x'=22)+1/29:(s'=543)&(beta'=35)&(x'=22)+1/29:(s'=544)&(beta'=35)&(x'=22)+1/29:(s'=545)&(beta'=35)&(x'=22)+1/29:(s'=546)&(beta'=35)&(x'=22)+1/29:(s'=547)&(beta'=35)&(x'=22)+1/29:(s'=548)&(beta'=35)&(x'=22)+1/29:(s'=549)&(beta'=35)&(x'=22)+1/29:(s'=550)&(beta'=35)&(x'=22)+1/29:(s'=551)&(beta'=35)&(x'=22)+1/29:(s'=552)&(beta'=35)&(x'=22)+1/29:(s'=553)&(beta'=35)&(x'=22)+1/29:(s'=554)&(beta'=35)&(x'=22)+1/29:(s'=555)&(beta'=35)&(x'=22)+1/29:(s'=556)&(beta'=35)&(x'=22)+1/29:(s'=557)&(beta'=35)&(x'=22)+1/29:(s'=558)&(beta'=35)&(x'=22)+1/29:(s'=559)&(beta'=35)&(x'=22);
[]s=20->1/28:(s'=560)&(beta'=35)&(x'=-157)+1/28:(s'=561)&(beta'=35)&(x'=35)+1/28:(s'=562)&(beta'=35)&(x'=35)+1/28:(s'=563)&(beta'=35)&(x'=35)+1/28:(s'=564)&(beta'=35)&(x'=35)+1/28:(s'=565)&(beta'=35)&(x'=35)+1/28:(s'=566)&(beta'=35)&(x'=35)+1/28:(s'=567)&(beta'=35)&(x'=35)+1/28:(s'=568)&(beta'=35)&(x'=35)+1/28:(s'=569)&(beta'=35)&(x'=-157)+1/28:(s'=570)&(beta'=35)&(x'=5)+1/28:(s'=571)&(beta'=35)&(x'=35)+1/28:(s'=572)&(beta'=35)&(x'=35)+1/28:(s'=573)&(beta'=35)&(x'=35)+1/28:(s'=574)&(beta'=35)&(x'=35)+1/28:(s'=575)&(beta'=35)&(x'=35)+1/28:(s'=576)&(beta'=35)&(x'=35)+1/28:(s'=577)&(beta'=35)&(x'=35)+1/28:(s'=578)&(beta'=35)&(x'=28)+1/28:(s'=579)&(beta'=35)&(x'=28)+1/28:(s'=580)&(beta'=35)&(x'=34)+1/28:(s'=581)&(beta'=35)&(x'=34)+1/28:(s'=582)&(beta'=35)&(x'=35)+1/28:(s'=583)&(beta'=35)&(x'=34)+1/28:(s'=584)&(beta'=35)&(x'=34)+1/28:(s'=585)&(beta'=35)&(x'=34)+1/28:(s'=586)&(beta'=35)&(x'=34)+1/28:(s'=587)&(beta'=35)&(x'=34);
[]s=21->1/28:(s'=588)&(beta'=35)&(x'=-160)+1/28:(s'=589)&(beta'=35)&(x'=35)+1/28:(s'=590)&(beta'=35)&(x'=35)+1/28:(s'=591)&(beta'=35)&(x'=35)+1/28:(s'=592)&(beta'=35)&(x'=35)+1/28:(s'=593)&(beta'=35)&(x'=35)+1/28:(s'=594)&(beta'=35)&(x'=-19)+1/28:(s'=595)&(beta'=35)&(x'=35)+1/28:(s'=596)&(beta'=35)&(x'=35)+1/28:(s'=597)&(beta'=35)&(x'=35)+1/28:(s'=598)&(beta'=35)&(x'=2)+1/28:(s'=599)&(beta'=35)&(x'=35)+1/28:(s'=600)&(beta'=35)&(x'=35)+1/28:(s'=601)&(beta'=35)&(x'=35)+1/28:(s'=602)&(beta'=35)&(x'=35)+1/28:(s'=603)&(beta'=35)&(x'=32)+1/28:(s'=604)&(beta'=35)&(x'=35)+1/28:(s'=605)&(beta'=35)&(x'=35)+1/28:(s'=606)&(beta'=35)&(x'=32)+1/28:(s'=607)&(beta'=35)&(x'=32)+1/28:(s'=608)&(beta'=35)&(x'=35)+1/28:(s'=609)&(beta'=35)&(x'=32)+1/28:(s'=610)&(beta'=35)&(x'=32)+1/28:(s'=611)&(beta'=35)&(x'=32)+1/28:(s'=612)&(beta'=35)&(x'=32)+1/28:(s'=613)&(beta'=35)&(x'=32)+1/28:(s'=614)&(beta'=35)&(x'=32)+1/28:(s'=615)&(beta'=35)&(x'=32);
[]s=22->1/28:(s'=616)&(beta'=35)&(x'=-156)+1/28:(s'=617)&(beta'=35)&(x'=35)+1/28:(s'=618)&(beta'=35)&(x'=35)+1/28:(s'=619)&(beta'=35)&(x'=35)+1/28:(s'=620)&(beta'=35)&(x'=35)+1/28:(s'=621)&(beta'=35)&(x'=35)+1/28:(s'=622)&(beta'=35)&(x'=35)+1/28:(s'=623)&(beta'=35)&(x'=35)+1/28:(s'=624)&(beta'=35)&(x'=35)+1/28:(s'=625)&(beta'=35)&(x'=35)+1/28:(s'=626)&(beta'=35)&(x'=6)+1/28:(s'=627)&(beta'=35)&(x'=35)+1/28:(s'=628)&(beta'=35)&(x'=35)+1/28:(s'=629)&(beta'=35)&(x'=35)+1/28:(s'=630)&(beta'=35)&(x'=35)+1/28:(s'=631)&(beta'=35)&(x'=35)+1/28:(s'=632)&(beta'=35)&(x'=35)+1/28:(s'=633)&(beta'=35)&(x'=35)+1/28:(s'=634)&(beta'=35)&(x'=29)+1/28:(s'=635)&(beta'=35)&(x'=29)+1/28:(s'=636)&(beta'=35)&(x'=35)+1/28:(s'=637)&(beta'=35)&(x'=35)+1/28:(s'=638)&(beta'=35)&(x'=29)+1/28:(s'=639)&(beta'=35)&(x'=29)+1/28:(s'=640)&(beta'=35)&(x'=29)+1/28:(s'=641)&(beta'=35)&(x'=29)+1/28:(s'=642)&(beta'=35)&(x'=29)+1/28:(s'=643)&(beta'=35)&(x'=29);
[]s=23->1/27:(s'=644)&(beta'=35)&(x'=-158)+1/27:(s'=645)&(beta'=35)&(x'=35)+1/27:(s'=646)&(beta'=35)&(x'=35)+1/27:(s'=647)&(beta'=35)&(x'=35)+1/27:(s'=648)&(beta'=35)&(x'=35)+1/27:(s'=649)&(beta'=35)&(x'=35)+1/27:(s'=650)&(beta'=35)&(x'=35)+1/27:(s'=651)&(beta'=35)&(x'=35)+1/27:(s'=652)&(beta'=35)&(x'=35)+1/27:(s'=653)&(beta'=35)&(x'=-158)+1/27:(s'=654)&(beta'=35)&(x'=4)+1/27:(s'=655)&(beta'=35)&(x'=35)+1/27:(s'=656)&(beta'=35)&(x'=35)+1/27:(s'=657)&(beta'=35)&(x'=35)+1/27:(s'=658)&(beta'=35)&(x'=34)+1/27:(s'=659)&(beta'=35)&(x'=35)+1/27:(s'=660)&(beta'=35)&(x'=35)+1/27:(s'=661)&(beta'=35)&(x'=35)+1/27:(s'=662)&(beta'=35)&(x'=34)+1/27:(s'=663)&(beta'=35)&(x'=34)+1/27:(s'=664)&(beta'=35)&(x'=34)+1/27:(s'=665)&(beta'=35)&(x'=34)+1/27:(s'=666)&(beta'=35)&(x'=34)+1/27:(s'=667)&(beta'=35)&(x'=34)+1/27:(s'=668)&(beta'=35)&(x'=34)+1/27:(s'=669)&(beta'=35)&(x'=34)+1/27:(s'=670)&(beta'=35)&(x'=35);
[]s=24->1/28:(s'=671)&(beta'=35)&(x'=-163)+1/28:(s'=672)&(beta'=35)&(x'=-163)+1/28:(s'=673)&(beta'=35)&(x'=35)+1/28:(s'=674)&(beta'=35)&(x'=35)+1/28:(s'=675)&(beta'=35)&(x'=35)+1/28:(s'=676)&(beta'=35)&(x'=35)+1/28:(s'=677)&(beta'=35)&(x'=35)+1/28:(s'=678)&(beta'=35)&(x'=35)+1/28:(s'=679)&(beta'=35)&(x'=35)+1/28:(s'=680)&(beta'=35)&(x'=35)+1/28:(s'=681)&(beta'=35)&(x'=-163)+1/28:(s'=682)&(beta'=35)&(x'=-1)+1/28:(s'=683)&(beta'=35)&(x'=35)+1/28:(s'=684)&(beta'=35)&(x'=35)+1/28:(s'=685)&(beta'=35)&(x'=34)+1/28:(s'=686)&(beta'=35)&(x'=34)+1/28:(s'=687)&(beta'=35)&(x'=34)+1/28:(s'=688)&(beta'=35)&(x'=34)+1/28:(s'=689)&(beta'=35)&(x'=34)+1/28:(s'=690)&(beta'=35)&(x'=34)+1/28:(s'=691)&(beta'=35)&(x'=34)+1/28:(s'=692)&(beta'=35)&(x'=34)+1/28:(s'=693)&(beta'=35)&(x'=34)+1/28:(s'=694)&(beta'=35)&(x'=34)+1/28:(s'=695)&(beta'=35)&(x'=34)+1/28:(s'=696)&(beta'=35)&(x'=34)+1/28:(s'=697)&(beta'=35)&(x'=34)+1/28:(s'=698)&(beta'=35)&(x'=34);
[]s=25->1/28:(s'=699)&(beta'=35)&(x'=-164)+1/28:(s'=700)&(beta'=35)&(x'=34)+1/28:(s'=701)&(beta'=35)&(x'=35)+1/28:(s'=702)&(beta'=35)&(x'=35)+1/28:(s'=703)&(beta'=35)&(x'=35)+1/28:(s'=704)&(beta'=35)&(x'=35)+1/28:(s'=705)&(beta'=35)&(x'=35)+1/28:(s'=706)&(beta'=35)&(x'=35)+1/28:(s'=707)&(beta'=35)&(x'=35)+1/28:(s'=708)&(beta'=35)&(x'=34)+1/28:(s'=709)&(beta'=35)&(x'=35)+1/28:(s'=710)&(beta'=35)&(x'=35)+1/28:(s'=711)&(beta'=35)&(x'=34)+1/28:(s'=712)&(beta'=35)&(x'=34)+1/28:(s'=713)&(beta'=35)&(x'=34)+1/28:(s'=714)&(beta'=35)&(x'=34)+1/28:(s'=715)&(beta'=35)&(x'=34)+1/28:(s'=716)&(beta'=35)&(x'=34)+1/28:(s'=717)&(beta'=35)&(x'=34)+1/28:(s'=718)&(beta'=35)&(x'=34)+1/28:(s'=719)&(beta'=35)&(x'=34)+1/28:(s'=720)&(beta'=35)&(x'=34)+1/28:(s'=721)&(beta'=35)&(x'=34)+1/28:(s'=722)&(beta'=35)&(x'=34)+1/28:(s'=723)&(beta'=35)&(x'=34)+1/28:(s'=724)&(beta'=35)&(x'=34)+1/28:(s'=725)&(beta'=35)&(x'=34)+1/28:(s'=726)&(beta'=35)&(x'=34);
[]s=26->1/28:(s'=727)&(beta'=35)&(x'=-182)+1/28:(s'=728)&(beta'=35)&(x'=16)+1/28:(s'=729)&(beta'=35)&(x'=17)+1/28:(s'=730)&(beta'=35)&(x'=35)+1/28:(s'=731)&(beta'=35)&(x'=35)+1/28:(s'=732)&(beta'=35)&(x'=35)+1/28:(s'=733)&(beta'=35)&(x'=35)+1/28:(s'=734)&(beta'=35)&(x'=35)+1/28:(s'=735)&(beta'=35)&(x'=35)+1/28:(s'=736)&(beta'=35)&(x'=35)+1/28:(s'=737)&(beta'=35)&(x'=17)+1/28:(s'=738)&(beta'=35)&(x'=17)+1/28:(s'=739)&(beta'=35)&(x'=17)+1/28:(s'=740)&(beta'=35)&(x'=17)+1/28:(s'=741)&(beta'=35)&(x'=17)+1/28:(s'=742)&(beta'=35)&(x'=17)+1/28:(s'=743)&(beta'=35)&(x'=17)+1/28:(s'=744)&(beta'=35)&(x'=17)+1/28:(s'=745)&(beta'=35)&(x'=17)+1/28:(s'=746)&(beta'=35)&(x'=17)+1/28:(s'=747)&(beta'=35)&(x'=17)+1/28:(s'=748)&(beta'=35)&(x'=17)+1/28:(s'=749)&(beta'=35)&(x'=17)+1/28:(s'=750)&(beta'=35)&(x'=17)+1/28:(s'=751)&(beta'=35)&(x'=17)+1/28:(s'=752)&(beta'=35)&(x'=17)+1/28:(s'=753)&(beta'=35)&(x'=17)+1/28:(s'=754)&(beta'=35)&(x'=17);
[]s=27->1/28:(s'=755)&(beta'=35)&(x'=35)+1/28:(s'=756)&(beta'=35)&(x'=6)+1/28:(s'=757)&(beta'=35)&(x'=7)+1/28:(s'=758)&(beta'=35)&(x'=35)+1/28:(s'=759)&(beta'=35)&(x'=35)+1/28:(s'=760)&(beta'=35)&(x'=30)+1/28:(s'=761)&(beta'=35)&(x'=35)+1/28:(s'=762)&(beta'=35)&(x'=30)+1/28:(s'=763)&(beta'=35)&(x'=30)+1/28:(s'=764)&(beta'=35)&(x'=30)+1/28:(s'=765)&(beta'=35)&(x'=30)+1/28:(s'=766)&(beta'=35)&(x'=30)+1/28:(s'=767)&(beta'=35)&(x'=30)+1/28:(s'=768)&(beta'=35)&(x'=30)+1/28:(s'=769)&(beta'=35)&(x'=30)+1/28:(s'=770)&(beta'=35)&(x'=30)+1/28:(s'=771)&(beta'=35)&(x'=30)+1/28:(s'=772)&(beta'=35)&(x'=30)+1/28:(s'=773)&(beta'=35)&(x'=30)+1/28:(s'=774)&(beta'=35)&(x'=30)+1/28:(s'=775)&(beta'=35)&(x'=30)+1/28:(s'=776)&(beta'=35)&(x'=30)+1/28:(s'=777)&(beta'=35)&(x'=30)+1/28:(s'=778)&(beta'=35)&(x'=30)+1/28:(s'=779)&(beta'=35)&(x'=30)+1/28:(s'=780)&(beta'=35)&(x'=30)+1/28:(s'=781)&(beta'=35)&(x'=30)+1/28:(s'=782)&(beta'=35)&(x'=30);
endmodule