package mypack;

/**
 * Created by user on 4/3/19.
 */


        import java.io.File;
        import java.io.FileInputStream;
        import java.io.InputStreamReader;
        import java.util.*;

public class titles {
    public static String language = new String("ge");
    public static String country = new String("GE");
    //    public static Locale currentLocale = new Locale(language, country);
    public static Locale currentLocale =  new Locale("ge",
            getCountry("ge"));
    public static ResourceBundle messages =
            ResourceBundlegetBundle( currentLocale);
    public static ResourceBundle[] messages2 =
            new ResourceBundle[] { ResourceBundlegetBundle(
                    new Locale("ge",
                            getCountry("ge"))),
                    ResourceBundlegetBundle(
                            new Locale("ru",
                                    getCountry("ru"))),
                    ResourceBundlegetBundle(
                            new Locale("en",
                                    getCountry("en"))) };

    public static void reloadlang(){
        messages2 =
                new ResourceBundle[] { ResourceBundlegetBundle(
                        new Locale("ge",
                                getCountry("ge"))),
                        ResourceBundlegetBundle(
                                new Locale("ru",
                                        getCountry("ru"))),
                        ResourceBundlegetBundle(
                                new Locale("en",
                                        getCountry("en"))) };
    }

    public static ResourceBundle ResourceBundlegetBundle(Locale curloc){

        try{
            String str="/home/opt/test/lang/lang_"+curloc.getLanguage()+"_"+curloc.getCountry()+".properties";
            System.out.println(str);
            File file = new File(str) ;
            FileInputStream input = new FileInputStream(file);
            java.util.PropertyResourceBundle propety = new java.util.PropertyResourceBundle(input);
            //propety = new PropertyResourceBundle(new InputStreamReader(input, "UTF-8"));
            return propety;
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
//    return ResourceBundle.getBundle(str, curloc);
    }

    public static void publishTitles() {
        language = new String("ge");
        country = new String("GE");
        currentLocale = new Locale(language, country);
        messages = ResourceBundlegetBundle( currentLocale);
    }

    public static String getValue(String key) {
        return titles.messages.getString(key);
    }

    public static String getCountry(String lang) {
        if (lang.equals("ge"))
            return "GE";
        if (lang.equals("ge"))
            return "GE";
        if (lang.equals("ru"))
            return "RU";
        if (lang.equals("en"))
            return "EN";
        return "GE";
    }

    public static int getCountryId(String lang) {
        if (lang.equals("ge"))
            return 0;
        if (lang.equals("ge"))
            return 0;
        if (lang.equals("ru"))
            return 1;
        if (lang.equals("en"))
            return 2;
        return 0;
    }
    public int langid=0;
    public String gettitle0(String in_statement) {

        String ss = "";

        try {

            if (langid == 1) {
                //  ss = Lingvo.convertGeo2Ru( auth.titles.messages2[langid].getString(in_statement) );
                ss=titles.messages2[langid].getString(in_statement);
                ss=conv2_UTF(ss);

            } else if (langid == 2) {
                //ss = Lingvo.convertGeo2En( auth.titles.messages2[langid].getString(in_statement) );
                ss=titles.messages2[langid].getString(in_statement);
                ss=conv2_UTF(ss);
            } else {
                ss = titles.messages2[langid].getString(in_statement);
                ss=conv2_UTF(ss);
/*                if (in_statement.equals("_phone"))
                {
                    System.out.println("------aa---------");
                    for (int i=0;i<ss.getBytes().length;i++) System.out.println(ss.getBytes()[i]);
                    System.out.println("-------bb--------");
                    for (int i=0;i<ss.length();i++) System.out.println(ss.substring(i,i+1));
                    System.out.println(ss.length());
                    System.out.println(ss.getBytes().length);
                    System.out.println("---ppp--про-ასდფ-"+ss);
                    ss=functions.conv2_UTF(ss);
System.out.println("---------"+ss);
                }*/
            }
          //  System.out.println(in_statement+"=="+ss);
        } catch (Exception ee) {
ee.printStackTrace();
            ss = in_statement;
            //functions.addLog(10,url+"-"+ss);
        }
        return ss;
    }
    public String getlangs(){
        if (langid==1){
            return "      <option value=\"0\">ქართული</option>\n" +
                    "      <option value=\"2\">English</option>\n" +
                    "      <option value=\"1\" selected>Русский</option>";
        }else if (langid==2){
            return "      <option value=\"0\">ქართული</option>\n" +
                    "      <option value=\"2\" selected>English</option>\n" +
                    "      <option value=\"1\">Русский</option>";
        }
        return "      <option value=\"0\" selected>ქართული</option>\n" +
                "      <option value=\"2\">English</option>\n" +
                "      <option value=\"1\">Русский</option>";
    }
    static public String conv2_UTF(String ss)
    {
        try
        {
            String cs=new String(ss.getBytes("ISO-8859-1"),"utf-8");
            return cs;
        }catch (Exception e)
        {
            return ss;
        }
    }
}
