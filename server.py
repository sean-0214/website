import http.server
import socketserver
import webbrowser
import os
import sys
from urllib.parse import urlparse

# Set the directory to serve files from
DIRECTORY = os.path.dirname(os.path.abspath(__file__))
PORT = 8080

class MyHttpRequestHandler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)
    
    def log_message(self, format, *args):
        # Custom logging to show a cleaner output
        if "200" in args[0]:
            print(f"Serving: {self.path}")

def run_server():
    print(f"Starting server at http://localhost:{PORT}")
    print(f"Serving files from: {DIRECTORY}")
    print("Press Ctrl+C to stop the server")
    
    # Open the browser automatically
    webbrowser.open(f"http://localhost:{PORT}")
    
    # Create the server
    with socketserver.TCPServer(("", PORT), MyHttpRequestHandler) as httpd:
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\nServer stopped.")
            httpd.server_close()

if __name__ == "__main__":
    run_server()
