/**
 * 加密工具
 */

#ifndef __CRYPTO_UTIL_H_
#define __CRYPTO_UTIL_H_

#include <openssl/ssl.h>
#include <openssl/evp.h>
#include <cstdint>
#include <memory>
#include <string>

namespace cero
{
    // 加密工具类
    class CryptoUtil
    {
    public:

        // ECB模式
        /**
         * @brief 使用 AES-128 加密/解密（ECB模式）
         * @param key 指向密钥的指针，密钥长度应为 16 字节
         * @param in 指向输入数据的指针
         * @param in_len 输入数据的长度
         * @param out 指向输出数据的指针
         * @param encode 如果为 true，则进行加密；如果为 false，则进行解密
         * @return int32_t 成功返回 0，否则返回负值
         */
        static int32_t AES128Ecb(const void *key, const void *in, int32_t in_len, void *out, bool encode);

        // Key 32字节
        static int32_t AES256Ecb(const void *key, const void *in, int32_t in_len, void *out, bool encode);

        // CBC模式
        /**
         * @brief 使用 AES-256 加密/解密（CBC模式）
         *
         * @param key 指向密钥的指针，密钥长度应为 16 字节
         * @param iv 指向初始化向量的指针，长度应为 16 字节
         * @param in 指向输入数据的指针
         * @param in_len 输入数据的长度
         * @param out 指向输出数据的指针
         * @param encode 如果为 true，则进行加密；如果为 false，则进行解密
         * @return int32_t 成功返回 0，否则返回负值
         */
        static int32_t AES128Cbc(const void *key, const void *iv, const void *in, int32_t in_len, void *out, bool encode);

        // key 32字节，  iv 16字节
        static int32_t AES256Cbc(const void *key, const void *iv, const void *in, int32_t in_len, void *out, bool encode);

        static int32_t Crypto(const EVP_CIPHER *cipher, bool enc, const void *key, const void *iv, const void *in, int32_t in_len, void *out, int32_t *out_len);
    };

    // RSA密码/密钥
    class RSACipher{
    public:
        using ptr = std::shared_ptr<RSACipher>;

        static int32_t GenerateKey(const std::string &pubkey_file, const std::string &prikey_file, uint32_t length = 1024);

        static RSACipher::ptr Create(const std::string& pubkey_file,
                                    const std::string& prikey_file);

        RSACipher();
        ~RSACipher();

        /**
         * @brief RSA -- 私钥加密
         * @param from 输入数据指针
         * @param flen 输入数据长度
         * @param to 输出数据指针
         * @param padding 填充模式（默认值为 RSA_NO_PADDING）
         * @return int32_t 加密后的数据长度，如果出错则返回负值
         */
        int32_t privateEncrypt(const void *from,
                                   int flen,
                                   void *to,
                                   int padding = RSA_NO_PADDING);
        /**
         * @brief RSA -- 公钥加密
         * @param from 输入数据指针
         * @param flen 输入数据长度
         * @param to 输出数据指针
         * @param padding 填充模式（默认值为 RSA_NO_PADDING）
         * @return int32_t 加密后的数据长度，如果出错则返回负值
         */
        int32_t publicEncrypt(const void *from,
                              int flen,
                              void *to,
                              int padding = RSA_NO_PADDING);
        /**
         * @brief RSA -- 私钥解密
         * @param from 输入数据指针
         * @param flen 输入数据长度
         * @param to 输出数据指针
         * @param padding 填充模式（默认值为 RSA_NO_PADDING）
         * @return int32_t 加密后的数据长度，如果出错则返回负值
         */
        int32_t privateDecrypt(const void *from,
                               int flen,
                               void *to,
                               int padding = RSA_NO_PADDING);
        /**
         * @brief RSA -- 公钥解密
         * @param from 输入数据指针
         * @param flen 输入数据长度
         * @param to 输出数据指针
         * @param padding 填充模式（默认值为 RSA_NO_PADDING）
         * @return int32_t 加密后的数据长度，如果出错则返回负值
         */
        int32_t publicDecrypt(const void *from,
                              int flen,
                              void *to,
                              int padding = RSA_NO_PADDING);

        // 32位加密/解密转字符串
        int32_t privateEncrypt(const void* from, int flen, std::string& to, int padding = RSA_NO_PADDING);

        int32_t publicEncrypt(const void *from, int flen, std::string &to, int padding = RSA_NO_PADDING);
        int32_t privateDecrypt(const void *from, int flen, std::string &to, int padding = RSA_NO_PADDING);
        int32_t publicDecrypt(const void *from, int flen, std::string &to, int padding = RSA_NO_PADDING);

        const std::string& getPubkeyStr()const {return m_pubkeyStr;}
        const std::string& getPrikeyStr()const {return m_prikeyStr;}

        int32_t getPubRSASize();
        int32_t getPriRSASize();

    private:
        RSA* m_pubkey;
        RSA* m_prikey;
        std::string m_pubkeyStr;
        std::string m_prikeyStr;

    };

}

#endif