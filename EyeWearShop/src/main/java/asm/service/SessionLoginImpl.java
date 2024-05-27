package asm.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import asm.entity.Session;


@Service
public class SessionLoginImpl implements SessionLogin {
	public static List<Session> listSession=new ArrayList<>();
	@Override
	public Object get(String key) {
		Object value = null;
		if(key.isEmpty()||key=="") {
			return null;
		}
		for(Session item:listSession) {
			if(key.equalsIgnoreCase(item.getKey())) {
				value=item.getValue();
			}
		}
		return value;
	}

	@Override
	public void set(String key, Object value) {
		for(int i=0;i<listSession.size();i++) {
			Session item=listSession.get(i);
			if(key.equalsIgnoreCase(item.getKey())) {
				listSession.remove(i);
			}
		}
		Session session=new Session();
		session.setKey(key);
		session.setValue(value);
		listSession.add(session);
	}

	@Override
	public void remove(String key) {
		// TODO Auto-generated method stub
		for(int i=0;i<listSession.size();i++) {
			Session item=listSession.get(i);
			if(key.equalsIgnoreCase(item.getKey())) {
				listSession.remove(i);
			}
		}
		
	}	
}
