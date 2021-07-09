using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace eBookSiteWebUI.Entity
{
    public class DataInitializer  :  DropCreateDatabaseIfModelChanges<DataContext>
    {

        protected override void Seed(DataContext context)
        {

            var genres = new List<Genre>()
            {

                new Genre(){Name="Romance"}, 
                new Genre(){Name="Action"},
                new Genre(){Name="Sci-fi"}, 
                new Genre(){Name="Fantasy"},
                new Genre(){Name="Drama"} 

            };

            foreach (var genre in genres)
            {
                context.Genres.Add(genre);
            }

            context.SaveChanges();


            List<Novel> novels = new List<Novel>()
            {
                new Novel(){Name="Abe The Wizard",Author="The Mass Of Eating Melon Seeds",Status="Ongoing",GenreId=1,Summary="I was reincarnated into another world, and I’ve brought the Horadric Cube from Diablo II with me.eing a knight is cool and all, but being a wizard is pretty neat as well.So, which one will it be?",isHome=false,Image="1.jpg"},
                new Novel(){Name="Mages Are Too OP",Author="Soaring Flames",Status="Ongoing",GenreId=2,Summary="As one of the first players to gain access to World of Falan—the first immersive game worldwide—Roland creates his character as a Mage.However, playing as a Mage is not as fun and easy as he thought. His head even explodes after he casts the very first spell in the game.",isHome=true,Image="2.jpg"},
                new Novel(){Name="Lord of the Mysteries",Author="Cuttlefish That Loves Diving",Status="Completed",GenreId=3,Summary="In the waves of steam and machinery, who could achieve extraordinary? In the fogs of history and darkness, who was whispering? I woke up from the realm of mysteries and opened my eyes to the world.",isHome=true,Image="3.jpg"},
                new Novel(){Name=" Versatile Mage",Author="Chaos",Status="Ongoing",GenreId=4,Summary="He woke up in a familiar world that had vastly changed.",isHome=true,Image="4.jpg"},

                new Novel(){Name="Abe The Wizard",Author="The Mass Of Eating Melon Seeds",Status="Ongoing",GenreId=1,Summary="I was reincarnated into another world, and I’ve brought the Horadric Cube from Diablo II with me.eing a knight is cool and all, but being a wizard is pretty neat as well.So, which one will it be?",isHome=false,Image="1.jpg"},
                new Novel(){Name="Mages Are Too OP",Author="Soaring Flames",Status="Ongoing",GenreId=2,Summary="As one of the first players to gain access to World of Falan—the first immersive game worldwide—Roland creates his character as a Mage.However, playing as a Mage is not as fun and easy as he thought. His head even explodes after he casts the very first spell in the game.",isHome=true,Image="2.jpg"},
                new Novel(){Name="Lord of the Mysteries",Author="Cuttlefish That Loves Diving",Status="Completed",GenreId=3,Summary="In the waves of steam and machinery, who could achieve extraordinary? In the fogs of history and darkness, who was whispering? I woke up from the realm of mysteries and opened my eyes to the world.",isHome=true,Image="3.jpg"},
                new Novel(){Name=" Versatile Mage",Author="Chaos",Status="Ongoing",GenreId=4,Summary="He woke up in a familiar world that had vastly changed.",isHome=true,Image="4.jpg"}

                    };

            foreach (var novel in novels)
            {
                context.Novels.Add(novel);
            }
            context.SaveChanges();


            List<Chapter> chapters = new List<Chapter>()
            {
                new Chapter(){Name="A Boy Under The Starry Night",Date=DateTime.Now,NovelId=1,ChapterCount=1,Content="Under the starry night, the great Bennett Castle stood to guard the plain that it was built on. Everything in this territory belonged to the Knight of Bennett. The king granted it to him.his territory was located at the southmost point of the Duchy of Carmel, right at the crossing border of the Earth-Dividing Mountain Range. It was a location far away from conflict, and it served as a crucial granary to the Duchy of Carmel.It was summertime now, and the crops were plentiful. Every time the chilling night breeze came by, the whole field danced in uniform to signify the prosperity of this land.A boy who looked to be around twelve was swinging a sword about the size of his body. As if it wasn’t heavy enough for him, this boy was also wearing a steel armor that was clearly oversized for him.He was about 150 centimeters tall, so the armor looked more like a belt as it was covered around him.As young as he was, this boy took his training seriously.The look on his face suggested that training was something sacred to him.Every time he swung his sword, he shouted with as much vigor in his lungs as he could.There were reasons for that.One, to breath in as much air as he could, and two, to squeeze out all the strength in his muscles.This boy was focused.His black hair was completely drenched in sweat, and those purple eyes of his were glowing with youthlike passion.Well, they were until he heard the sound of a horse coming his way.“Look what I’ve brought to you, Abel,” a young man of eighteen called out as he jumped down from his horse.He had blonde hair, thick brows, a tall, edgy nose, and eyes that were as blue as the sky.His whole body was covered in leather armor, and the boots he was wearing were made especially for riding."},
                new Chapter(){Name="The Horadric Cube",Date=DateTime.Now,NovelId=1,ChapterCount=2,Content="The Knight of Bennett was wearing a plain white calico as he sat at the dinner table. As usual, he had a serious look on his face. Abel never saw him showing much emotion at all.Actually, ‘never’ was an overstatement. The last time he saw any expression from the Knight of Bennett was about a year ago when he had just woken up from his coma. He could never forget the joy on his father’s face as he was brought into this world.Abel’s mother, Nora, was a kind woman. She was the one who fed Abel every time he was recovering from his injuries. If anything, she was the reason why Abel acknowledged to being a part of this family.Abel never got used to saying his grace before a meal. He had been an atheist for all thirty years of his previous life.It was only until recently that he had come to pray to the Holy Light, which almost everyone in this world would devote their worship to.Under the starry night, the great Bennett Castle stood to guard the plain that it was built on. Everything in this territory belonged to the Knight of Bennett. The king granted it to him.his territory was located at the southmost point of the Duchy of Carmel, right at the crossing border of the Earth-Dividing Mountain Range. It was a location far away from conflict, and it served as a crucial granary to the Duchy of Carmel.It was summertime now, and the crops were plentiful. Every time the chilling night breeze came by, the whole field danced in uniform to signify the prosperity of this land.A boy who looked to be around twelve was swinging a sword about the size of his body. As if it wasn’t heavy enough for him, this boy was also wearing a steel armor that was clearly oversized for him.He was about 150 centimeters tall, so the armor looked more like a belt as it was covered around him.As young as he was, this boy took his training seriously.The look on his face suggested that training was something sacred to him.Every time he swung his sword, he shouted with as much vigor in his lungs as he could.There were reasons for that.One, to breath in as much air as he could, and two, to squeeze out all the strength in his muscles.This boy was focused.His black hair was completely drenched in sweat, and those purple eyes of his were glowing with youthlike passion.Well, they were until he heard the sound of a horse coming his way.“Look what I’ve brought to you, Abel,” a young man of eighteen called out as he jumped down from his horse.He had blonde hair, thick brows, a tall, edgy nose, and eyes that were as blue as the sky.His whole body was covered in leather armor, and the boots he was wearing were made especially for riding."},
                new Chapter(){Name="Shadow Panther",Date=DateTime.Now,NovelId=1,ChapterCount=3,Content="The Knight of Bennett was wearing a plain white calico as he sat at the dinner table. As usual, he had a serious look on his face. Abel never saw him showing much emotion at all.Actually, ‘never’ was an overstatement. The last time he saw any expression from the Knight of Bennett was about a year ago when he had just woken up from his coma. He could never forget the joy on his father’s face as he was brought into this world.Abel’s mother, Nora, was a kind woman. She was the one who fed Abel every time he was recovering from his injuries. If anything, she was the reason why Abel acknowledged to being a part of this family.Abel never got used to saying his grace before a meal. He had been an atheist for all thirty years of his previous life.It was only until recently that he had come to pray to the Holy Light, which almost everyone in this world would devote their worship to.Under the starry night, the great Bennett Castle stood to guard the plain that it was built on. Everything in this territory belonged to the Knight of Bennett. The king granted it to him.his territory was located at the southmost point of the Duchy of Carmel, right at the crossing border of the Earth-Dividing Mountain Range. It was a location far away from conflict, and it served as a crucial granary to the Duchy of Carmel.It was summertime now, and the crops were plentiful. Every time the chilling night breeze came by, the whole field danced in uniform to signify the prosperity of this land.A boy who looked to be around twelve was swinging a sword about the size of his body. As if it wasn’t heavy enough for him, this boy was also wearing a steel armor that was clearly oversized for him.He was about 150 centimeters tall, so the armor looked more like a belt as it was covered around him.As young as he was, this boy took his training seriously.The look on his face suggested that training was something sacred to him.Every time he swung his sword, he shouted with as much vigor in his lungs as he could.There were reasons for that.One, to breath in as much air as he could, and two, to squeeze out all the strength in his muscles.This boy was focused.His black hair was completely drenched in sweat, and those purple eyes of his were glowing with youthlike passion.Well, they were until he heard the sound of a horse coming his way.“Look what I’ve brought to you, Abel,” a young man of eighteen called out as he jumped down from his horse.He had blonde hair, thick brows, a tall, edgy nose, and eyes that were as blue as the sky.His whole body was covered in leather armor, and the boots he was wearing were made especially for riding."},
                new Chapter(){Name="Fort Lee",Date=DateTime.Now,NovelId=1,ChapterCount=4,Content="The Knight of Bennett was wearing a plain white calico as he sat at the dinner table. As usual, he had a serious look on his face. Abel never saw him showing much emotion at all.Actually, ‘never’ was an overstatement. The last time he saw any expression from the Knight of Bennett was about a year ago when he had just woken up from his coma. He could never forget the joy on his father’s face as he was brought into this world.Abel’s mother, Nora, was a kind woman. She was the one who fed Abel every time he was recovering from his injuries. If anything, she was the reason why Abel acknowledged to being a part of this family.Abel never got used to saying his grace before a meal. He had been an atheist for all thirty years of his previous life.It was only until recently that he had come to pray to the Holy Light, which almost everyone in this world would devote their worship to.Under the starry night, the great Bennett Castle stood to guard the plain that it was built on. Everything in this territory belonged to the Knight of Bennett. The king granted it to him.his territory was located at the southmost point of the Duchy of Carmel, right at the crossing border of the Earth-Dividing Mountain Range. It was a location far away from conflict, and it served as a crucial granary to the Duchy of Carmel.It was summertime now, and the crops were plentiful. Every time the chilling night breeze came by, the whole field danced in uniform to signify the prosperity of this land.A boy who looked to be around twelve was swinging a sword about the size of his body. As if it wasn’t heavy enough for him, this boy was also wearing a steel armor that was clearly oversized for him.He was about 150 centimeters tall, so the armor looked more like a belt as it was covered around him.As young as he was, this boy took his training seriously.The look on his face suggested that training was something sacred to him.Every time he swung his sword, he shouted with as much vigor in his lungs as he could.There were reasons for that.One, to breath in as much air as he could, and two, to squeeze out all the strength in his muscles.This boy was focused.His black hair was completely drenched in sweat, and those purple eyes of his were glowing with youthlike passion.Well, they were until he heard the sound of a horse coming his way.“Look what I’ve brought to you, Abel,” a young man of eighteen called out as he jumped down from his horse.He had blonde hair, thick brows, a tall, edgy nose, and eyes that were as blue as the sky.His whole body was covered in leather armor, and the boots he was wearing were made especially for riding."},

            };
            foreach (var chapter in chapters)
            {
                context.Chapters.Add(chapter);
            }
            context.SaveChanges();

            base.Seed(context);
        }

    }
}