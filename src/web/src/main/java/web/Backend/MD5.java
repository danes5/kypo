package web.Backend;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @author Daniel Filakovsky
 */
public class MD5 {

    public static String convert(String input) {
        MessageDigest m;
        try {
            m = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
        m.reset();
        m.update(input.getBytes());
        String hashtext = new BigInteger(1, m.digest()).toString(16);
        while (hashtext.length() < 32)
            hashtext = "0" + hashtext;
        return hashtext;
    }
}
