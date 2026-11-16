FROM jpillora/chisel:latest
EXPOSE 8080
CMD ["server", "--port", "8080", "--reverse", "--proxy", "http://127.0.0.1:80", "--auth", "pinode:KungLab2026SecureKey"]
