#include "rock_server.h"
#include "log/log.h"
#include "src/module.h"

namespace cero
{

    static cero::Logger::ptr g_logger = LOG_NAME("system");

    RockServer::RockServer(const std::string &type, cero::IOManager *worker, cero::IOManager *io_worker, cero::IOManager *accept_worker)
        : TcpServer(worker, io_worker, accept_worker)
    {
        m_type = type;
    }

    void RockServer::handleClient(Socket::ptr client)
    {
        LOG_DEBUG(g_logger) << "handleClient " << *client;
        cero::RockSession::ptr session(new cero::RockSession(client));
        session->setWorker(m_worker);
        ModuleMgr::GetInstance()->foreach (Module::ROCK,
                                           [session](Module::ptr m)
                                           {
                                               m->onConnect(session);
                                           });
        session->setDisconnectCb(
            [](AsyncSocketStream::ptr stream)
            {
                ModuleMgr::GetInstance()->foreach (Module::ROCK,
                                                   [stream](Module::ptr m)
                                                   {
                                                       m->onDisconnect(stream);
                                                   });
            });
        session->setRequestHandler(
            [](cero::RockRequest::ptr req, cero::RockResponse::ptr rsp, cero::RockStream::ptr conn) -> bool
            {
                // LOG_INFO(g_logger) << "handleReq " << req->toString()
                //                          << " body=" << req->getBody();
                bool rt = false;
                ModuleMgr::GetInstance()->foreach (Module::ROCK,
                                                   [&rt, req, rsp, conn](Module::ptr m)
                                                   {
                                                       if (rt)
                                                       {
                                                           return;
                                                       }
                                                       rt = m->handleRequest(req, rsp, conn);
                                                   });
                return rt;
            });
        session->setNotifyHandler(
            [](cero::RockNotify::ptr nty, cero::RockStream::ptr conn) -> bool
            {
                LOG_INFO(g_logger) << "handleNty " << nty->toString()
                                   << " body=" << nty->getBody();
                bool rt = false;
                ModuleMgr::GetInstance()->foreach (Module::ROCK,
                                                   [&rt, nty, conn](Module::ptr m)
                                                   {
                                                       if (rt)
                                                       {
                                                           return;
                                                       }
                                                       rt = m->handleNotify(nty, conn);
                                                   });
                return rt;
            });
        session->start();
    }

}