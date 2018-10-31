package com.qbank.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5EncodeUtil {
	
	public static String md5Encode(String str) {
		return md5Encode(str, "UTF-8", true);
	}
	
	public static String md5EncodeForDotNet(String str) {
		return md5Encode(str, "UTF-16LE", false);
	}
	
	public static String md5Encode(String str, String charsetName, boolean with0) {
		StringBuilder sb = new StringBuilder();
		try {
			MessageDigest sha = MessageDigest.getInstance("MD5");
			sha.update(str.getBytes(charsetName));
			byte[] hash = sha.digest();
			for (int i = 0; i < hash.length; i++) {
				int iInt = (hash[i] & 0xff) ;
				if(with0) {
					sb.append(Integer.toString(iInt + 0x100, 16).substring(1));
				}else {
					sb.append(Integer.toString(iInt, 16));
				}
			}
			return sb.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args) {
		String str = "a123456";
		System.out.println("字符串" + str + "的各种md5加密结果：");
		System.out.println("Java标准加密\t" + md5Encode(str));
		System.out.println("Java对接C#加密\t" + md5EncodeForDotNet(str));
	}
}
