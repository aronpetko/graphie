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

/*

    while (window.isOpen())
    {
        // Poll events while running
        static sf::Event event{};

        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        if (GetAsyncKeyState(VK_LBUTTON) < 0)
        {
            if (set_grab_point)
            {
                set_grab_point = false;

                GetCursorPos(&grab_point);
                delta_offset = Math::Vec(grab_point.x - offset_x, grab_point.y - offset_y);
            }
            else
            {
                POINT mouse_point;
                GetCursorPos(&mouse_point);

                offset_x = mouse_point.x - delta_offset.x;
                offset_y = mouse_point. y - delta_offset.y;
            }
        }
        else
            set_grab_point = true;

        if (GetAsyncKeyState(VK_OEM_PLUS) & 0x1)
            step++;
        else if (GetAsyncKeyState(VK_OEM_MINUS) & 0x1)
            step--;

        // Begin rendering scene
    }*/
}