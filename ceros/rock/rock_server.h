#ifndef __ROCK_SERVER_H__
#define __ROCK_SERVER_H__

#include "ceros/rock/rock_stream.h"
#include "network/tcp_server.h"

namespace cero
{

    class RockServer : public TcpServer
    {
    public:
        typedef std::shared_ptr<RockServer> ptr;
        RockServer(const std::string &type = "rock", cero::IOManager *worker = cero::IOManager::GetThis(), cero::IOManager *io_worker = cero::IOManager::GetThis(), cero::IOManager *accept_worker = cero::IOManager::GetThis());

    protected:
        virtual void handleClient(Socket::ptr client) override;
    };

}

#endif