import sys,os

def monster_name(m):
  if (m == 'N'):
    return 'MDNormalMonster'
  elif (m == 'F'):
   return 'MDFireMonster'
  elif (m == 'S'):
    return 'MDSpeedyMonster'
  elif (m == 'H'):
   return 'MDHelmetMonster'
  elif (m == 'G'):
   return 'MDGiantMonster'
  else:
   print m


def process(input_name):
  f = open(input_name + '.txt')
  data = f.read().split(os.linesep)
  f.close()

  wave_count = 0

  result = 'THMissionInfo* mission = [[THMissionInfo alloc] init];\r\n'
  result += 'NSMutableArray* waves = [NSMutableArray array];\r\n'
  result += 'mission.waves = waves;\r\n'
  result += 'NSMutableArray* cuePointWaves = [NSMutableArray array];\r\n'
  result += 'mission.cuePointWaves = cuePointWaves;\r\n\r\n'


  for line in data:
    wave_count += 1
    params = line.split(',')

    if (len(params) < 3):
      continue
    
    time = params[0]
    monster = params[1]

    if (monster != 'Cue'):
        monster_count = params[2]
        row = params[3]
        
        result += 'THMissionWaveInfo* wave' + str(wave_count) + ' = [[THMissionWaveInfo alloc] init];\r\n'
        result += 'wave' + str(wave_count) + '.waveTime = ' + time + ';\r\n'
        result += 'NSMutableArray* wave' + str(wave_count) + 'spawn = [NSMutableArray array];\r\n'
        result += 'THMonsterSpawnInfo* wave' + str(wave_count) + 'spawn1 = [[THMonsterSpawnInfo alloc] init];\r\n'
        result += 'wave' + str(wave_count) + 'spawn1.monsterClass = [' + monster_name(monster) + ' class];\r\n'
        result += 'wave' + str(wave_count) + 'spawn1.minCount = ' + monster_count + ';\r\n'
        result += 'wave' + str(wave_count) + 'spawn1.maxCount = ' + monster_count + ';\r\n'
        result += 'wave' + str(wave_count) + 'spawn1.region = ' + str(6 - int(row)) + ';\r\n'
        result += '[wave' + str(wave_count) + 'spawn addObject:wave' + str(wave_count) + 'spawn1];\r\n'
        result += 'wave' + str(wave_count) + '.spawn = wave' + str(wave_count) + 'spawn;\r\n'
        result += '[waves addObject:wave' + str(wave_count) + '];\r\n\r\n'
    else:
        cue_name = params[2]
        result += 'THCuePointInfo *point1 = [[THCuePointInfo alloc] init];\r\n'
        result += 'point1.eventTime = ' + time + ';\r\n'
        result += 'point1.objectName = @"' + cue_name + '";\r\n'
        result += '[cuePointWaves addObject:point1];\r\n\r\n'

  result += 'return mission;';

  f = open(input_name + '_out.txt', 'w+')
  f.write(result)
  f.close()

if __name__ == "__main__":
  process(sys.argv[1])
