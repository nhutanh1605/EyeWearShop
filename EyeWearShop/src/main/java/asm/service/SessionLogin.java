package asm.service;

import org.springframework.stereotype.Service;

@Service
public interface SessionLogin {
	 public Object get(String key);
	 public void set(String key, Object value);
	 public void remove(String name);
}
