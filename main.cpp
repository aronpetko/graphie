#include "graph/graph.h"
#include <thread>

int main()
{
    GraphSettings settings;
    Graph graph(settings);

    std::thread graph_thread([&]() {
        graph.run();
    });

    graph_thread.detach();

    while (!GetAsyncKeyState(VK_ESCAPE))
    {
        std::cout << "f(x) = ";

        std::string function;
        std::getline(std::cin, function);

        graph.set_function(function);

        std::cout << "\n";
    }
}