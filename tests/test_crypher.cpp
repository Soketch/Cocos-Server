#include <iostream>
#include <string>
#include <openssl/err.h>
#include "utils/util/crypto_util.h" // 假设你的代码在这个头文件中

void testRSACipher()
{
    std::string pubkey_file = "public.pem";
    std::string prikey_file = "private.pem";

    // 生成密钥对
    if (cero::RSACipher::GenerateKey(pubkey_file, prikey_file) != 0)
    {
        std::cerr << "Failed to generate RSA key pair" << std::endl;
        return;
    }

    // 创建RSACipher对象
    auto rsaCipher = cero::RSACipher::Create(pubkey_file, prikey_file);
    if (!rsaCipher)
    {
        std::cerr << "Failed to create RSACipher object" << std::endl;
        return;
    }

    std::string plaintext = "Hello, RSA!";
    std::string encrypted;
    std::string decrypted;

    // 公钥加密
    encrypted.resize(rsaCipher->getPrikeyStr().length());
    int encrypted_length = rsaCipher->publicEncrypt(plaintext.c_str(), plaintext.size(), &encrypted[0], RSA_PKCS1_PADDING);
    if (encrypted_length < 0)
    {
        std::cerr << "Public encryption failed" << std::endl;
        ERR_print_errors_fp(stderr);
        return;
    }
    encrypted.resize(encrypted_length);

    // 私钥解密
    decrypted.resize(rsaCipher->getPrikeyStr().length());
    int decrypted_length = rsaCipher->privateDecrypt(encrypted.c_str(), encrypted.size(), &decrypted[0], RSA_PKCS1_PADDING);
    if (decrypted_length < 0)
    {
        std::cerr << "Private decryption failed" << std::endl;
        ERR_print_errors_fp(stderr);
        return;
    }
    decrypted.resize(decrypted_length);

    std::cout << "Original text: " << plaintext << std::endl;
    std::cout << "Encrypted text: " << encrypted << std::endl;
    std::cout << "Decrypted text: " << decrypted << std::endl;

    if (plaintext == decrypted)
    {
        std::cout << "RSA encryption and decryption test passed!" << std::endl;
    }
    else
    {
        std::cout << "RSA encryption and decryption test failed!" << std::endl;
    }
}

int main()
{
    testRSACipher();
    return 0;
}
