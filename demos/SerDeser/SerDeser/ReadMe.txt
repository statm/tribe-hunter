Author: Jialiang Li
Date: 02/23/2014
Content:

In the project, numbers are used to label the tag. Here is the list of tags and their number:
1 Mission
2 Waves
3 Spawn
4 MonsterSpawn
5 Name
6 HP
6 Attack
6 Critical
6 Dodge
6 Resistance 
5 Skills
4 Min
4 Max
3 SpawnTime
1 Skill
2 SkillName
2 SkillDesc
2 LevelRequired
2 Cost
2 Parent
2 Effect

In the project, the following elements have the NSArray type. So we can add new configuration in the txt file:
1 Mission
2 Waves
3 Spawn
5 Skills
1 Skill
2 Effect
The element “Skills” and “Skill” are totally different; “Skills” is the monster’s skill and “Skill” is player’s skill.

In addition, in order to add some comments in the txt file, I’ve designed the following format to show the comment:

0_==I am a comment!====

Notice: Don’t contain any additional sign in the file!!! Otherwise, it may cause problems.


If having any questions, please feel free to contact me: lijialia@usc.edu.

