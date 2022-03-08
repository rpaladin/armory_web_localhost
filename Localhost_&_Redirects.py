import http.server
import socketserver

IP = "localhost"
PORT = 80
sections = ["/news", "/community", "/fund", "/notes", "/download"]

class MyHttpRequestHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        if self.path == "" or self.path == "/":
            self.path = "index.html"
        for s in sections:
            if self.path == s:
                self.path = self.path + ".html"
        return http.server.SimpleHTTPRequestHandler.do_GET(self)

if __name__ == "__main__": 
    handler_object = MyHttpRequestHandler
    my_server = socketserver.TCPServer((IP, PORT), handler_object)

    try:
        my_server.serve_forever()
    except KeyboardInterrupt:
        pass

    my_server.server_close()
