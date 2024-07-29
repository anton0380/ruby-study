require 'benchmark'

# @param {Integer[]} rating
# @return {Integer}
def num_teams(rating)
  result = 0
  rating.each_with_index do |r1, i|
    rating[i+1..].each_with_index do |r2, j|
      rating[j+i+1..].each do |r3|
        if r1 > r2 && r2 > r3
          result += 1
        elsif r3 > r2 && r2 > r1
          result += 1
        end
      end
    end
  end
  result
end

rating =
[111,1537,162,71,1082,1524,2698,2164,1347,20,409,2313,2350,638,2424,2468,107,125,1184,594,1375,2096,1986,2300,1785,2217,2943,2860,200,1469,1786,2075,2120,598,216,366,2836,106,1467,767,2305,550,2166,1804,737,223,1310,231,92,1067,1017,1364,1629,1642,792,1730,902,1768,2074,848,1325,1798,2138,1683,1759,9,2874,354,530,2389,2671,1717,2457,1751,1397,356,2357,2189,1358,1619,1095,1026,1134,2370,1542,1495,1231,953,1918,1885,2998,73,2198,602,567,1830,2270,2564,2919,2762,2684,965,344,156,1479,1981,521,466,1916,1078,121,1609,944,1263,1081,660,474,518,1805,679,1120,1128,2053,1932,979,2881,2387,2333,2102,61,221,1640,1499,1988,854,2,1645,2848,2214,1516,2497,2647,2740,915,246,379,2954,1512,1484,277,1824,656,1265,58,3000,1362,2824,1461,1520,390,2525,2759,2267,2614,355,362,1481,1572,1863,360,2725,1920,2371,2810,1888,1079,1847,2996,1955,215,1801,674,1020,2368,1167,1668,1616,6,417,2471,217,2196,901,2456,2183,1329,458,2589,2906,381,279,1094,1156,1400,2221,1607,1569,170,1789,2679,222,1247,1740,1536,197,943,1151,343,2098,929,713,103,1592,373,829,938,319,1737,1702,763,2050,2070,2826,2498,1442,1980,2306,50,2239,1755,149,152,728,837,429,1378,2168,2971,2606,563,1903,411,213,1821,1652,2979,1722,1032,1377,1443,1819,1521,2538,733,116,2191,2489,1352,890,2575,795,710,2218,228,2522,377,1896,1925,427,2014,1359,820,2205,1531,309,985,606,1849,1293,1213,1943,274,2727,81,1838,898,2807,817,185,519,531,85,2383,583,1277,561,1912,1152,1260,2449,368,755,645,1494,897,2648,1539,1595,1690,2884,2047,1907,783,2144,1008,2118,1117,2257,1110,95,2177,1266,2255,557,2114,115,2088,726,1882,942,224,332,2649,1196,1290,1800,2455,2353,1671,604,33,2040,340,2992,2240,1795,393,2315,1003,2065,802,2060,2552,1341,134,568,1226,268,2097,860,2591,708,313,2610,2728,2924,285,467,757,271,2099,1244,899,2713,2141,478,1073,122,2496,1877,652,2779,2630,431,894,1772,2981,336,1538,79,59,2889,2784,1236,350,2404,1581,2743,164,865,1917,1053,1471,2445,2697,961,1732,773,1504,2862,2362,945,1044,1990,1360,295,1232,815,2988,327,136,1604,1999,1992,873,2527,2783,186,1470,921,1018,1672,2509,1191,2302,2297,15,1551,2521,1941,1363,2748,732,1501,1319,838,626,66,1282,920,1161,1433,404,2846,218,1610,688,556,2989,1357,2790,971,2723,2347,2768,1013,2746,967,1407,534,1735,2816,1289,359,2429,1111,1268,752,1556,2837,337,1466,448,2670,2934,1085,2021,1761,1685,2180,1250,2277,871,2438,178,1661,318,195,2702,421,2771,325,1842,863,695,1860,659,2010,1976,2268,181,819,91,2364,375,904,1658,130,2216,2078,1792,2945,2997,1339,1669,1242,1541,1491,2154,2363,2072,1027,2953,1413,1677,951,2668,31]
bench = Benchmark.measure {
  puts num_teams rating # 9142022
}
puts bench.real # old 1.626948862000063 new 1.560837957998956

# rating = [2,5,3,4,1] # 3
# puts num_teams rating
# rating = [2,1,3] # 0
# puts num_teams rating
# rating = [1,2,3,4] # 4
# puts num_teams rating
