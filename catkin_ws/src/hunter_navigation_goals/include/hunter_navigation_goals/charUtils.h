// =====================================================================================
//
//       Filename:  SendGoal.h
//
//    Description:  brief some funtion process string, in C style
//
//        Version:  1.0
//        Created:  13/03/15 17:11:54
//       Revision:  none
//       Compiler:  g++
//
//         Author:  Cheng Zhao (Henrry), IRobotCheng@gmail.com
//        Company:
//
// =====================================================================================
#ifndef ___HENRY__NEO_NAVIGATION_CHARUTILS__HEADER___
#define ___HENRY__NEO_NAVIGATION_CHARUTILS__HEADER___

#include <string>
#include <utility>
#include <clocale>

/**
 * @brief trim the blank characters at the begin a string
 *
 * @param buf buffer which contain string which to be trimed
 *
 * @return pointer to the trimed string
 */
inline char* trim_left(char* buf) {
    char* p = buf;
    while( p < buf+strlen(buf) && isspace(*p) ) {
        ++p;
    }

    return p;
}

/**
 * @brief trim the blank characters at the tail a string
 *
 * @param buf buffer which contain string which to be trimed
 *
 * @return pointer to the trimed string
 */
inline char* trim_right(char* buf) {
    char* p = buf + strlen(buf)-1;
    while( p>=buf && isspace(*p) ) {
        --p;
    }

    *(p+1) = 0;

    return buf;
}


/**
 * @brief trim the blank characters from the begin and end of a string
 *
 * @param buf buffer which contain string which to be trimed
 *
 * @return pointer to the trimed string
 *
 * @see trim_left, trim_right
 */
inline char* trim(char* buf) {
    return trim_left( trim_right(buf) );
}



/**
 * @brief compress connected space into one
 *
 * @param str the string to be processed
 *
 * @return string after compress
 */
inline std::string compress_space(const std::string& str)
{
    size_t  i;
    std::string re;

    bool preFlag = false;

    for (i=0; i<str.length(); ++i) {
        if (isspace(str[i])) {
            if (preFlag) {
                continue;
            } else {
                preFlag = true;
            }
        } else {
            preFlag = false;
        }

        re.push_back(str[i]);
    }

    re.push_back(0);

    return re;
}


/**
 * @brief get a word's position from a given string
 *
 * @param str the string to extract word
 * @param nth the order of word to extract, start from 1
 *
 * @return a pair, first item it's the start position of nth's word, and second
 * item is the length of this words, if second item is zeor, mean that there is
 * no enough words in this string.
 */
inline std::pair<size_t, size_t> get_nth_word_pos(const std::string& str, int nth=1)
{
    int i;

    size_t startPos;
    size_t endPos = -1;

    for(i=0; i<nth; ++i) {
        ++endPos;
        startPos = endPos;

        endPos = str.find_first_of(" ", endPos);

        if (str.npos==endPos) {
            break;
        }
    }

    if (i<nth-1) {
        // not enough words
        return std::pair<size_t, size_t>(i, 0);
    } else {
        return std::pair<size_t, size_t>(startPos, endPos-startPos);
    }
}

/**
 * @brief get a word from a given string, according to it's order
 *
 * @param str the string to extract word
 * @param nth the order of word to be extracted
 *
 * @return the extracted string, or an empty string if there is no enough words
 * to be extract
 */
inline std::string get_nth_word(const std::string& str, int nth=1)
{
    std::pair<size_t, size_t> pos = get_nth_word_pos(str, nth);

    return str.substr(pos.first, pos.second);
}

/**
 * @brief the Unicode version of get_nth_word_pos
 *
 * @param str the string from which to extract word
 * @param locale locale set for characters presente in str
 * @param nth the order of word to be extracted
 *
 * @return position of given word, a std::pair<size_t, size_t> object, first item
 * is the start position of this word in string, and second item is the length of
 * this word
 *
 * @see get_nth_word_pos
 */
inline std::pair<size_t, size_t> get_nth_word_pos_u(std::string& str, int nth=1, const char* locale="zh_CN.UTF-8")
{
    setlocale(LC_ALL, locale);

    const char* ptr = str.c_str();

    int i;
    int len;

    size_t pos = 0;
    for (i=0; i<nth; ++i) {
        len = mblen(ptr, MB_CUR_MAX);
        if (len<=0) {
            break;
        }

        ptr += len;

        pos += len;
    }

    if (i<nth-1) {
        return std::pair<size_t, size_t>(0, 0);
    } else {
        return std::pair<size_t, size_t>(pos-len, len);
    }
}

/**
 * @brief the Unicode version of get_nth_word
 *
 * @return extracted string
 *
 * @see get_nth_word, get_nth_word_pos_u
 */
inline std::string get_nth_word_u(std::string& str, int nth=1, const char* locale="zh_CN.UTF-8")
{
    std::pair<size_t, size_t> pos = get_nth_word_pos_u(str, nth, locale);
    return str.substr(pos.first, pos.second);
}

#endif

