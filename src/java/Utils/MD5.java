package Utils;

import java.math.BigInteger; 
import java.security.MessageDigest; 
import java.security.NoSuchAlgorithmException; 

public class MD5 
{
    public static String getMd5(String _input) 
    {
        try 
        {
            // Static getInstance method is called with hashing MD5 
            MessageDigest md = MessageDigest.getInstance("MD5"); 
  
            // digest() method is called to calculate message digest 
            //  of an input digest() return array of byte 
            byte[] messageDigest = md.digest(_input.getBytes()); 
  
            // Convert byte array into signum representation 
            BigInteger no = new BigInteger(1, messageDigest); 
  
            // Convert message digest into hex value 
            String hashtext = no.toString(16); 
            while (hashtext.length() < 32)
            { 
                hashtext = "0" + hashtext; 
            } 
            return hashtext; 
        }
        catch(NoSuchAlgorithmException _e)
        {
            throw new RuntimeException(_e); 
        } 
    }
}