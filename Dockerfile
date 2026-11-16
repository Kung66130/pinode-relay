FROM jpillora/chisel:latest
EXPOSE 8080
CMD ["server", "--port", "8080", "--reverse", "--auth", "pinode:KungLab2026SecureKey"]
