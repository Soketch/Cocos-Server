#ifndef __APPLICATION_H_
#define __APPLICATION_H_

namespace cero
{
    class Application
    {
    public:
        bool init(int argc, char **argv);

        bool run();

        bool getServer();

        void listAllServer();

    private:
    };
}

#endif