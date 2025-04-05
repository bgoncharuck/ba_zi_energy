import '../exts.dart';
import '../animals.dart';

List<Animal> animalCalculationsOrder = [
  Animal.Rat,
  Animal.Ox,
  Animal.Tiger,
  Animal.Rabbit,
  Animal.Dragon,
  Animal.Snake,
  Animal.Horse,
  Animal.Goat,
  Animal.Monkey,
  Animal.Rooster,
  Animal.Dog,
  Animal.Pig,
];

DateTime yearStart(int year) {
  if (isValidYear(year)) {
    return yearStarts[year]!.toDateTime().add(const Duration(days: 1, hours: 15));
  }
  return DateTime(year, 2, 5);
}

bool isValidYear(int year) {
  return year >= 1805 && year <= 2043;
}

const yearStarts = <int, ConstDateTime>{
  1804: ConstDateTime(1804, 2, 11),
  1805: ConstDateTime(1805, 1, 31),
  1806: ConstDateTime(1806, 2, 18),
  1807: ConstDateTime(1807, 2, 7),
  1808: ConstDateTime(1808, 1, 28),
  1809: ConstDateTime(1809, 2, 15),
  1810: ConstDateTime(1810, 2, 4),
  1811: ConstDateTime(1811, 1, 25),
  1812: ConstDateTime(1812, 2, 13),
  1813: ConstDateTime(1813, 2, 1),
  1814: ConstDateTime(1814, 1, 21),
  1815: ConstDateTime(1815, 2, 9),
  1816: ConstDateTime(1816, 1, 29),
  1817: ConstDateTime(1817, 2, 16),
  1818: ConstDateTime(1818, 2, 6),
  1819: ConstDateTime(1819, 1, 26),
  1820: ConstDateTime(1820, 2, 14),
  1821: ConstDateTime(1821, 2, 3),
  1822: ConstDateTime(1822, 1, 23),
  1823: ConstDateTime(1823, 2, 11),
  1824: ConstDateTime(1824, 1, 31),
  1825: ConstDateTime(1825, 2, 18),
  1826: ConstDateTime(1826, 2, 7),
  1827: ConstDateTime(1827, 1, 27),
  1828: ConstDateTime(1828, 2, 16),
  1829: ConstDateTime(1829, 2, 4),
  1830: ConstDateTime(1830, 1, 25),
  1831: ConstDateTime(1831, 2, 13),
  1832: ConstDateTime(1832, 2, 2),
  1833: ConstDateTime(1833, 2, 20),
  1834: ConstDateTime(1834, 2, 9),
  1835: ConstDateTime(1835, 1, 29),
  1836: ConstDateTime(1836, 2, 17),
  1837: ConstDateTime(1837, 2, 6),
  1838: ConstDateTime(1838, 1, 26),
  1839: ConstDateTime(1839, 2, 14),
  1840: ConstDateTime(1840, 2, 3),
  1841: ConstDateTime(1841, 1, 23),
  1842: ConstDateTime(1842, 2, 10),
  1843: ConstDateTime(1843, 1, 30),
  1844: ConstDateTime(1844, 2, 18),
  1845: ConstDateTime(1845, 2, 7),
  1846: ConstDateTime(1846, 1, 27),
  1847: ConstDateTime(1847, 2, 16),
  1848: ConstDateTime(1848, 2, 5),
  1849: ConstDateTime(1849, 1, 24),
  1850: ConstDateTime(1850, 2, 12),
  1851: ConstDateTime(1851, 2, 1),
  1852: ConstDateTime(1852, 2, 20),
  1853: ConstDateTime(1853, 2, 8),
  1854: ConstDateTime(1854, 1, 29),
  1855: ConstDateTime(1855, 2, 17),
  1856: ConstDateTime(1856, 2, 7),
  1857: ConstDateTime(1857, 1, 26),
  1858: ConstDateTime(1858, 2, 14),
  1859: ConstDateTime(1859, 2, 3),
  1860: ConstDateTime(1860, 1, 23),
  1861: ConstDateTime(1861, 2, 10),
  1862: ConstDateTime(1862, 1, 30),
  1863: ConstDateTime(1863, 2, 18),
  1864: ConstDateTime(1864, 2, 8),
  1865: ConstDateTime(1865, 1, 27),
  1866: ConstDateTime(1866, 2, 15),
  1867: ConstDateTime(1867, 2, 5),
  1868: ConstDateTime(1868, 1, 25),
  1869: ConstDateTime(1869, 2, 11),
  1870: ConstDateTime(1870, 2, 1),
  1871: ConstDateTime(1871, 2, 20),
  1872: ConstDateTime(1872, 2, 9),
  1873: ConstDateTime(1873, 1, 29),
  1874: ConstDateTime(1874, 2, 17),
  1875: ConstDateTime(1875, 2, 6),
  1876: ConstDateTime(1876, 1, 26),
  1877: ConstDateTime(1877, 2, 13),
  1878: ConstDateTime(1878, 2, 2),
  1879: ConstDateTime(1879, 1, 23),
  1880: ConstDateTime(1880, 2, 10),
  1881: ConstDateTime(1881, 1, 30),
  1882: ConstDateTime(1882, 2, 18),
  1883: ConstDateTime(1883, 2, 8),
  1884: ConstDateTime(1884, 1, 28),
  1885: ConstDateTime(1885, 2, 15),
  1886: ConstDateTime(1886, 2, 4),
  1887: ConstDateTime(1887, 1, 24),
  1888: ConstDateTime(1888, 2, 12),
  1889: ConstDateTime(1889, 1, 31),
  1890: ConstDateTime(1890, 1, 21),
  1891: ConstDateTime(1891, 2, 9),
  1892: ConstDateTime(1892, 1, 30),
  1893: ConstDateTime(1893, 2, 17),
  1894: ConstDateTime(1894, 2, 6),
  1895: ConstDateTime(1895, 1, 26),
  1896: ConstDateTime(1896, 2, 13),
  1897: ConstDateTime(1897, 2, 2),
  1898: ConstDateTime(1898, 1, 22),
  1899: ConstDateTime(1899, 2, 10),
  1900: ConstDateTime(1900, 1, 31),
  1901: ConstDateTime(1901, 2, 19),
  1902: ConstDateTime(1902, 2, 08),
  1903: ConstDateTime(1903, 1, 29),
  1904: ConstDateTime(1904, 2, 16),
  1905: ConstDateTime(1905, 2, 04),
  1906: ConstDateTime(1906, 1, 25),
  1907: ConstDateTime(1907, 2, 13),
  1908: ConstDateTime(1908, 2, 02),
  1909: ConstDateTime(1909, 1, 22),
  1910: ConstDateTime(1910, 2, 10),
  1911: ConstDateTime(1911, 1, 30),
  1912: ConstDateTime(1912, 2, 18),
  1913: ConstDateTime(1913, 2, 06),
  1914: ConstDateTime(1914, 1, 26),
  1915: ConstDateTime(1915, 2, 14),
  1916: ConstDateTime(1916, 2, 03),
  1917: ConstDateTime(1917, 1, 23),
  1918: ConstDateTime(1918, 2, 11),
  1919: ConstDateTime(1919, 2, 01),
  1920: ConstDateTime(1920, 2, 20),
  1921: ConstDateTime(1921, 2, 08),
  1922: ConstDateTime(1922, 1, 28),
  1923: ConstDateTime(1923, 2, 16),
  1924: ConstDateTime(1924, 2, 05),
  1925: ConstDateTime(1925, 1, 24),
  1926: ConstDateTime(1926, 2, 13),
  1927: ConstDateTime(1927, 2, 02),
  1928: ConstDateTime(1928, 1, 23),
  1929: ConstDateTime(1929, 2, 10),
  1930: ConstDateTime(1930, 1, 30),
  1931: ConstDateTime(1931, 2, 17),
  1932: ConstDateTime(1932, 2, 07),
  1933: ConstDateTime(1933, 1, 26),
  1934: ConstDateTime(1934, 2, 14),
  1935: ConstDateTime(1935, 2, 04),
  1936: ConstDateTime(1936, 1, 24),
  1937: ConstDateTime(1937, 2, 11),
  1938: ConstDateTime(1938, 1, 31),
  1939: ConstDateTime(1939, 2, 19),
  1940: ConstDateTime(1940, 2, 08),
  1941: ConstDateTime(1941, 1, 27),
  1942: ConstDateTime(1942, 2, 15),
  1943: ConstDateTime(1943, 2, 05),
  1944: ConstDateTime(1944, 1, 25),
  1945: ConstDateTime(1945, 2, 13),
  1946: ConstDateTime(1946, 2, 02),
  1947: ConstDateTime(1947, 1, 22),
  1948: ConstDateTime(1948, 2, 10),
  1949: ConstDateTime(1949, 1, 29),
  1950: ConstDateTime(1950, 2, 17),
  1951: ConstDateTime(1951, 2, 06),
  1952: ConstDateTime(1952, 1, 27),
  1953: ConstDateTime(1953, 2, 14),
  1954: ConstDateTime(1954, 2, 04),
  1955: ConstDateTime(1955, 1, 24),
  1956: ConstDateTime(1956, 2, 12),
  1957: ConstDateTime(1957, 1, 31),
  1958: ConstDateTime(1958, 2, 19),
  1959: ConstDateTime(1959, 2, 08),
  1960: ConstDateTime(1960, 1, 28),
  1961: ConstDateTime(1961, 2, 15),
  1962: ConstDateTime(1962, 2, 05),
  1963: ConstDateTime(1963, 1, 26),
  1964: ConstDateTime(1964, 2, 13),
  1965: ConstDateTime(1965, 2, 02),
  1966: ConstDateTime(1966, 1, 22),
  1967: ConstDateTime(1967, 2, 09),
  1968: ConstDateTime(1968, 1, 30),
  1969: ConstDateTime(1969, 2, 17),
  1970: ConstDateTime(1970, 2, 06),
  1971: ConstDateTime(1971, 1, 27),
  1972: ConstDateTime(1972, 2, 15),
  1973: ConstDateTime(1973, 2, 03),
  1974: ConstDateTime(1974, 1, 23),
  1975: ConstDateTime(1975, 2, 11),
  1976: ConstDateTime(1976, 1, 31),
  1977: ConstDateTime(1977, 2, 18),
  1978: ConstDateTime(1978, 2, 07),
  1979: ConstDateTime(1979, 1, 28),
  1980: ConstDateTime(1980, 2, 16),
  1981: ConstDateTime(1981, 2, 05),
  1982: ConstDateTime(1982, 1, 25),
  1983: ConstDateTime(1983, 2, 13),
  1984: ConstDateTime(1984, 2, 02),
  1985: ConstDateTime(1985, 1, 21),
  1986: ConstDateTime(1986, 2, 09),
  1987: ConstDateTime(1987, 1, 30),
  1988: ConstDateTime(1988, 2, 18),
  1989: ConstDateTime(1989, 2, 06),
  1990: ConstDateTime(1990, 1, 27),
  1991: ConstDateTime(1991, 2, 15),
  1992: ConstDateTime(1992, 2, 04),
  1993: ConstDateTime(1993, 1, 23),
  1994: ConstDateTime(1994, 2, 11),
  1995: ConstDateTime(1995, 1, 31),
  1996: ConstDateTime(1996, 2, 19),
  1997: ConstDateTime(1997, 2, 07),
  1998: ConstDateTime(1998, 1, 28),
  1999: ConstDateTime(1999, 2, 16),
  2000: ConstDateTime(2000, 2, 5),
  2001: ConstDateTime(2001, 1, 24),
  2002: ConstDateTime(2002, 2, 12),
  2003: ConstDateTime(2003, 1, 22),
  2004: ConstDateTime(2004, 2, 9),
  2005: ConstDateTime(2005, 1, 30),
  2006: ConstDateTime(2006, 2, 18),
  2007: ConstDateTime(2007, 2, 7),
  2008: ConstDateTime(2008, 1, 26),
  2009: ConstDateTime(2009, 2, 14),
  2010: ConstDateTime(2010, 2, 3),
  2011: ConstDateTime(2011, 1, 23),
  2012: ConstDateTime(2012, 2, 10),
  2013: ConstDateTime(2013, 1, 31),
  2014: ConstDateTime(2014, 2, 19),
  2015: ConstDateTime(2015, 2, 8),
  2016: ConstDateTime(2016, 1, 28),
  2017: ConstDateTime(2017, 2, 16),
  2018: ConstDateTime(2018, 2, 5),
  2019: ConstDateTime(2019, 1, 25),
  2020: ConstDateTime(2020, 2, 12),
  2021: ConstDateTime(2021, 2, 1),
  2022: ConstDateTime(2022, 1, 22),
  2023: ConstDateTime(2023, 2, 9),
  2024: ConstDateTime(2024, 2, 10),
  2025: ConstDateTime(2025, 1, 29),
  2026: ConstDateTime(2026, 2, 17),
  2027: ConstDateTime(2027, 2, 6),
  2028: ConstDateTime(2028, 1, 26),
  2029: ConstDateTime(2029, 2, 13),
  2030: ConstDateTime(2030, 2, 3),
  2031: ConstDateTime(2031, 01, 23),
  2032: ConstDateTime(2032, 02, 11),
  2033: ConstDateTime(2033, 01, 31),
  2034: ConstDateTime(2034, 02, 19),
  2035: ConstDateTime(2035, 02, 08),
  2036: ConstDateTime(2036, 01, 28),
  2037: ConstDateTime(2037, 02, 15),
  2038: ConstDateTime(2038, 02, 04),
  2039: ConstDateTime(2039, 01, 24),
  2040: ConstDateTime(2040, 02, 12),
  2041: ConstDateTime(2041, 02, 01),
  2042: ConstDateTime(2042, 01, 22),
  2043: ConstDateTime(2043, 02, 10),
  2044: ConstDateTime(2044, 01, 30),
};
