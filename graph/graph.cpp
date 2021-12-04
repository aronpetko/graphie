//
// Created by Aron on 12/3/2021.
//

#include "graph.h"

Graph::Graph(GraphSettings settings) : settings(settings)
{}

GraphSettings& Graph::get_settings()
{
    return settings;
}

void Graph::run()
{
    // Construct window
    sf::RenderWindow window(sf::VideoMode(settings.window_width, settings.window_height), "Graphie");

    while (window.isOpen())
    {
        // Poll events while running
        static sf::Event event{};

        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        // Begin rendering scene
        glPushMatrix();
        glPushAttrib(GL_ALL_ATTRIB_BITS);

        glMatrixMode(GL_PROJECTION);
        glViewport(0, 0, settings.window_width, settings.window_height);

        glLoadIdentity();
        glOrtho(0, settings.window_width, settings.window_height, 0, 0, 1);

        glMatrixMode(GL_MODELVIEW);
        glLoadIdentity();

        glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
        glEnable(GL_BLEND);
        
        // Draw graph
        plot_points(generate_points());

        glPopMatrix();
        glPopAttrib();

        window.display();
    }
}

std::vector<Math::Vec> Graph::generate_points()
{
    std::vector<Math::Vec> points;

    if (!this->expression)
        return points;

    cur_point.x = -settings.graph_range;
    cur_point.y = te_eval(this->expression);

    for (int i = 0; i <= settings.graph_range * settings.step * 2; i++)
    {
        // Evaluate function
        cur_point.y = te_eval(this->expression);
        points.push_back(cur_point);

        // Increase X based on step accuracy
        cur_point.x += 1.0 / settings.step;
    }

    return points;
}

void Graph::plot_points(std::vector<Math::Vec> points) const
{
    Render::Rectangle background(Math::Vec(0.0, 0.0), Math::Vec(settings.window_width, settings.window_height),
                                 Render::Col(30, 30, 30));
    background.draw();

    // Draw grid lines
    int x_pos = 0;
    for (int i = 0; i < settings.window_width / (settings.graph_range * 2); i++)
    {
        Render::Line grid_line(Math::Vec(x_pos, 0.0), Math::Vec(x_pos, settings.window_height),
                               Render::Col(100, 100, 100, 50));
        grid_line.draw();

        x_pos += settings.window_width / (settings.graph_range * 2);
    }

    int y_pos = 0;
    for (int i = 0; i < settings.window_height / (settings.graph_range * 2); i++)
    {
        Render::Line grid_line(Math::Vec(0.0, y_pos), Math::Vec(settings.window_width, y_pos),
                               Render::Col(100, 100, 100, 50));
        grid_line.draw();

        y_pos += settings.window_height / (settings.graph_range * 2);
    }

    // Translate to origin
    glTranslated(settings.window_width / 2.0, settings.window_height / 2.0, 0);

    // Draw X and Y axis
    Render::Line x_axis(Math::Vec(-settings.window_width, 0.0), Math::Vec(settings.window_width, 0.0),
                        Render::Col(200, 200, 200));
    Render::Line y_axis(Math::Vec(0.0, -settings.window_height), Math::Vec(0.0, settings.window_height),
                        Render::Col(200, 200, 200));

    x_axis.draw();
    y_axis.draw();

    // Draw the function
    double x_scale = settings.window_width / 2.0 / settings.graph_range, y_scale = settings.window_height / -2.0 / settings.graph_range;

    for (int i = 0; i < points.size(); i++)
    {
        // Draw line from previous point to new point
        auto previous = points[max(0, i - 1)];

        Render::Line line(Math::Vec(previous.x * x_scale, previous.y * y_scale), Math::Vec(points[i].x * x_scale, points[i].y * y_scale), Render::Col(99, 186, 122, 255), 3.0);
        line.draw();
    }
}

void Graph::set_function(std::string function)
{
    // Remove spaces
    function.erase(std::remove(function.begin(), function.end(), ' '), function.end());

    // Free previous expression
    te_free(this->expression);

    // Compile the function expression
    te_variable vars[] = {{"x", &cur_point.x}};

    int err;
    this->expression = te_compile(function.c_str(), vars, 1, &err);

    if (!this->expression)
        std::cout << "\nInvalid expression\n";
}
