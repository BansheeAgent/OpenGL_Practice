/*!
 * This guide takes you through writing a simple application using GLFW 3. The
 * application will create a window and OpenGL context, render a rotating
 * triangle and exit when the user closes the window or presses Escape.
 * This guide will introduce a few of the most commonly used functions, but
 * there are many more.
 */
#include <glad/glad.h>
#include<stdio.h>
#include<stdlib.h>
#include <glm/gtc/matrix_transform.hpp>
#include <GLFW/glfw3.h>
#include <iostream>
#include <glm/glm.hpp>
#include <glm/ext.hpp>
#include "lib/glfw/deps/linmath.h"


static const struct
{
  float x, y;
  float r, g, b;
}
vertices[3] =
{
        {-0.6f, -0.4f, 1.f, 0.f, 0.f},
        {0.6f, -0.4f, 0.f, 1.f, 0.f},
        {0.f, 0.6f, 0.f, 0.f, 1.f}
};



static const char* vertex_shader_text =
        "#version 110\n"
        "uniform mat4 MVP;\n"
        "attribute vec3 vCol;\n"
        "attribute vec2 vPos;\n"
        "varying vec3 color;\n"
        "void main()\n"
        "{\n"
        "    gl_Position = MVP * vec4(vPos, 0.0, 1.0);\n"
        "    color = vCol;\n"
        "}\n";

static const char* fragment_shader_text =
        "#version 110\n"
        "varying vec3 color;\n"
        "void main()\n"
        "{\n"
        "    gl_FragColor = vec4(color, 1.0);\n"
        "}\n";

/*!
 * \brief
 *  this function is used to report error call backs using stderr
 *
 * \param error
 *  this argument contains the error number reported back
 *
 * \param description
 *  this argument contains the explanation of what has gone wrong
 */
void error_callback(int error, const char* description)
{
  //stderr is the standard error stream and usually directed to the screen
  std::cerr <<  "Error: " << error << ","<<  description << std::endl;
}

void window_close(const char* action)
{
  //stderr is the standard error stream and usually directed to the screen
  std::cout <<  "alert: " <<  action << std::endl;
}

/*!
 * \brief
 *  Each window has a large number of callbacks that can be set to receive
 *  all the various kinds of events. create this call back function right here
 * \param window
 *  is the window created to display OpenGL context
 * \param key
 *  is the specified key to watch
 * \param scancode
 *  not being used at the moment
 * \param action
 *  if the key is pressed or not pressed
 * \param mods
 *  this is not being used currently
 */
static void key_callback(GLFWwindow* window, int key, int scancode, int
action, int mods)
{
  scancode;
  mods;
  if( key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
  {
    glfwSetWindowShouldClose(window, GLFW_TRUE);
  }
}

int main()
{
  GLFWwindow* window;
  GLuint vertex_buffer, vertex_shader, fragment_shader, program;
  GLint mvp_location, vpos_location, vcol_location;

  //Call back functions must be set, so GLFW knows to call them.
  //for example the function below must be called before initialization
  glfwSetErrorCallback(error_callback);

  //Before you can use most GLFW functions, the library must be initialized
  if(!glfwInit())
  {
    exit(EXIT_FAILURE);
  }

  /////////////////////////////////////////////////////////////////////////////
  /*!
   * Creating the window and context
   *
   * the function glfwCreateWindow, creates the window and its openGL context
   *
   * the function glfwWindowHint, sets the min and max versions of GLFW by
   * specifying the enums GLFW_CONTEXT_VERSION_MAJOR/MINOR to a integer
   */
  /////////////////////////////////////////////////////////////////////////////
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);

  window = glfwCreateWindow(640, 480, "My Title", nullptr, nullptr);



  //if window was not created successfully
  if(!window)
  {
    // Window or OpenGL creation failed
    glfwTerminate();
    exit(EXIT_FAILURE);
  }

  /////////////////////////////////////////////////////////////////////////////
  /*!
   * Receiving input events
   *    Each window has a large number of callbacks that can be set to
   *    receive all the various kinds of events. The key callback, like other
   *    window related callbacks, are set per-window.
   */
  /////////////////////////////////////////////////////////////////////////////
  glfwSetKeyCallback(window, key_callback);

  /////////////////////////////////////////////////////////////////////////////
  /*!
   * Making OpenGl context current
   *    Before using OpenGL API, you must have a current OpenGL context
   *
   *    The function glfwMakeContextCurrent(GLFWwindow*) makes the created
   *    window above current until you make another OpenGL context current or
   *    you destroy the window
   */
  /////////////////////////////////////////////////////////////////////////////
  glfwMakeContextCurrent(window);

  gladLoadGLLoader(reinterpret_cast<GLADloadproc>(glfwGetProcAddress));
  /////////////////////////////////////////////////////////////////////////////
  /*!
 * The swap interval indicates how many frames to wait until swapping the
 * buffers, commonly known as vsync. By default, the swap interval is zero,
 * meaning buffer swapping will occur immediately. On fast machines, many
 * of those frames will never  be seen, as the screen is still only updated
 * typically 60-75 times persecond, so this wastes a lot of CPU and GPU
 * cycles. Also, because the buffers will be swapped in the middle of the
 * screen update, leading to screen tearing.
 *
 * For these reasons, applications will typically want to set the swap
 * interval to one. It can be set to higher values, but this is usually not
 * recommended, because of the input latency it leads to.
 *
 * by the way this will fail if the current context is not current
 */
  /////////////////////////////////////////////////////////////////////////////
  glfwSwapInterval(1);

  // NOTE: OpenGL error checks have been omitted for brevity
//copy and pasted code
  glGenBuffers(1, &vertex_buffer);
  glBindBuffer(GL_ARRAY_BUFFER, vertex_buffer);
  glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

  vertex_shader = glCreateShader(GL_VERTEX_SHADER);
  glShaderSource(vertex_shader, 1, &vertex_shader_text, NULL);
  glCompileShader(vertex_shader);

  fragment_shader = glCreateShader(GL_FRAGMENT_SHADER);
  glShaderSource(fragment_shader, 1, &fragment_shader_text, NULL);
  glCompileShader(fragment_shader);

  program = glCreateProgram();
  glAttachShader(program, vertex_shader);
  glAttachShader(program, fragment_shader);
  glLinkProgram(program);

  mvp_location = glGetUniformLocation(program, "MVP");
  vpos_location = glGetAttribLocation(program, "vPos");
  vcol_location = glGetAttribLocation(program, "vCol");

  glEnableVertexAttribArray(vpos_location);
  glVertexAttribPointer(vpos_location, 2, GL_FLOAT, GL_FALSE,
                        sizeof(vertices[0]), (void*) 0);
  glEnableVertexAttribArray(vcol_location);
  glVertexAttribPointer(vcol_location, 3, GL_FLOAT, GL_FALSE,
                        sizeof(vertices[0]), (void*) (sizeof(float) * 2));

//end of paste

  /*
   * you can also set a framebuffer size callback using
   * glfwSetFramebufferSizeCallback and be notified when the size changes.
   */

  /////////////////////////////////////////////////////////////////////////////
  /*!
   * Reading the timer
   *    To create smooth animation, a time source is needed. GLFW provides a
   *    time that return the number of seconds since initialization. The time
   *    source used is the most accurate on each platform and generally has
   *    micro- or nanosecond resolution.
   */
  /////////////////////////////////////////////////////////////////////////////
  double time = glfwGetTime();

  /////////////////////////////////////////////////////////////////////////////
  /*!
   * Checking the window close flag
   *    Each window has a flag indicating whether the window should be closed.
   *
   *    if the user presses the X on the title bar or presses the alt+f4
   *    key combination, the flag will be set to true/1.
   */
  /////////////////////////////////////////////////////////////////////////////
  while (!glfwWindowShouldClose(window))
  {
    /////////////////////////////////////////////////////////////////////////////
    /*!
     * Rendering with OpenGl
     *    in order for event callbacks to be called when events occur do this.
     *
     *    Once you have a current OPneGL context, you can use OpenGL normally.
     *    In this tutorial, a multi-colored rotating triangle will be rendered.
     *    the framebuffer size needs to be retrieved for glViewport
     */
    /////////////////////////////////////////////////////////////////////////////
    int width, height;
    glfwGetFramebufferSize(window, &width, &height);
    float ratio = width / static_cast<float>(height);

    glViewport(0,0,width, height);
    glClear(GL_COLOR_BUFFER_BIT);

    glm::mat4x4 m, p, mvp;
    glm::vec3 vector3 = {-1.f, 0.f, 0.f};


    m = glm::identity<glm::mat4>();
    m = glm::rotate(m, (float)glfwGetTime(), vector3);
    p = glm::ortho(-ratio, ratio, -1.f, 1.f, 1.f, -1.f);
    mvp = p * m;
    //Keep running
    glUseProgram(program);
    glUniformMatrix4fv(mvp_location, 1, GL_FALSE, glm::value_ptr(mvp));
    glDrawArrays(GL_TRIANGLES, 0, 3);

    /////////////////////////////////////////////////////////////////////////////
    /*!
     * Swapping buffers
     *    GLFW windows by default use double buffering. That means that each
     *    window has two rendering buffers; a front buffer and a back buffer.
     *    The front buffer is the one being displayed and the back buffer the
     *    one you render to.
     *
     *    When the entire frame has been rendered, the buffers need to be
     *    swapped with one another, so the back buffer becomes the front buffer
     *    and vice versa.
     */
    glfwSwapBuffers(window);

    /////////////////////////////////////////////////////////////////////////////
    /*
     * Processing events
     *  GLFW needs to communicate regularly with the window system both in
     *  order to receive events and to show that the application hasn't locked
     *  up. Event Processing must be done regularly while you have visible
     *  windows and is normally done each frame after buffer swapping.
     *
     *  there are two methods for processing pending events;
     *    polling
     *    waiting
     *
     *  this example will use event polling, which processes only those events
     *  that have already been received and then returns immediately.
     */
    glfwPollEvents();

    /*
     * This is the best choice when rendering continually, like most games do.
     * if instead you only need to update your rendering once you have received
     * new input glfwWaitEvents is a better choice. It waits until at least one
     * event has been received, putting the thread to sleep in the meantime,
     * and then processes all received events. This saves a great deal of CPU
     * cycles and is useful for, for example, many kinds of editing tools.
     */
    /////////////////////////////////////////////////////////////////////////////
  }
  //when a window is no longer needed, it must be destroyed
  glfwDestroyWindow(window);

  //when you are done using GLFW, before exiting you must terminate GLFW
  glfwTerminate();
  exit(EXIT_SUCCESS);
}