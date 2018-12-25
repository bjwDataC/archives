package com.asiainfo.abdinfo.common;

import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringWriter;

import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

public class JsonWriter {
	private static ObjectMapper om = new ObjectMapper();
	private static JsonFactory jf = new JsonFactory();
 
	public static <T> Object fromJson(String jsonAsString, Class<T> pojoClass) {
		try {
			return om.readValue(jsonAsString, pojoClass);
		} catch (JsonParseException e) {
			throw new IllegalStateException(e.getMessage(), e);
		} catch (JsonMappingException e) {
			throw new IllegalStateException(e.getMessage(), e);
		} catch (IOException e) {
			throw new IllegalStateException(e.getMessage(), e);
		}
	}
 
	public static <T> Object fromJson(FileReader fr, Class<T> pojoClass) {
		try {
			return om.readValue(fr, pojoClass);
		} catch (JsonParseException e) {
			throw new IllegalStateException(e.getMessage(), e);
		} catch (JsonMappingException e) {
			throw new IllegalStateException(e.getMessage(), e);
		} catch (IOException e) {
			throw new IllegalStateException(e.getMessage(), e);
		}
	}
 
	public static String toJson(Object pojo, boolean prettyPrint) {
		try {
			StringWriter sw = new StringWriter();
			JsonGenerator jg = jf.createJsonGenerator(sw);
 
			if (prettyPrint) {
				jg.useDefaultPrettyPrinter();
			}
			om.writeValue(jg, pojo);
			return sw.toString();
		} catch (JsonParseException e) {
			throw new IllegalStateException(e.getMessage(), e);
		} catch (JsonMappingException e) {
			throw new IllegalStateException(e.getMessage(), e);
		} catch (IOException e) {
			throw new IllegalStateException(e.getMessage(), e);
		}
	}
 
	public static void toJson(Object pojo, FileWriter fw, boolean prettyPrint) {
		try {
			JsonGenerator jg = jf.createJsonGenerator(fw);
			if (prettyPrint) {
				jg.useDefaultPrettyPrinter();
			}
			om.writeValue(jg, pojo);
		} catch (JsonParseException e) {
			throw new IllegalStateException(e.getMessage(), e);
		} catch (JsonMappingException e) {
			throw new IllegalStateException(e.getMessage(), e);
		} catch (IOException e) {
			throw new IllegalStateException(e.getMessage(), e);
		}
	}
 
	public static String toJson(Object pojo) {
		return toJson(pojo, false);
	}


}
