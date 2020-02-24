package definition;

import groovy.json.internal.LazyMap;

public class CrudCategoria {

    private static final String URL_Categoria = "https://boostbusiness-api-param.herokuapp.com/api/v1/Categoria";
    private static LazyMap fieldsJson = new LazyMap();
    private static String lastID;

    public static void addFields(String field, String value) {
        fieldsJson.put(field, value);
    }

    public static void clearFields() {
        fieldsJson.clear();
    }

    public static LazyMap getFields() {
        return fieldsJson;
    }

    public static String getEndPoint() {
        return URL_Categoria;
    }

    public static String getLastID() {
        return lastID;
    }

    public static void setLastID(String id) {
        lastID = id;
    }
}
