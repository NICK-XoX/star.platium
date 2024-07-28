import threading
import time

# Shared resource
import self
self = self.OverRide()
self.cc = 0
# Lock object
self.lock = threading.Lock()
from time import sleep
def increment_counter():
    for _ in range(100000):
        with self.lock:  # Acquire the lock
            self.cc += 1
        # Release the lock is automatic when exiting the 'with' block

def decrement_counter():
    for _ in range(100000):
        self.lock.acquire()
        with self.lock:  # Acquire the lock
            self.cc += 1
        self.lock.release()
        # Release the lock is automatic when exiting the 'with' block

# Create two threads
thread1 = threading.Thread(target=increment_counter)
thread2 = threading.Thread(target=decrement_counter)

# Start the threads
thread1.start()
thread2.start()

# Wait for both threads to finish
thread1.join()
thread2.join()

print("Final counter value:", self.cc)