package utils;

import java.io.*;
import java.util.Collection;

public class ReadAndWrite {
    public static void write(Collection collection, String diaChi) {
        File file = new File(diaChi);

        if(!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        FileOutputStream fileOutputStream = null;
        ObjectOutput objectOutput = null;

        try {
            fileOutputStream = new FileOutputStream(file);
            objectOutput = new ObjectOutputStream(fileOutputStream);

            objectOutput.writeObject(collection);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                fileOutputStream.close();
                objectOutput.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static Object read(String diaChi) {
        FileInputStream fileInputStream = null;
        ObjectInputStream objectInputStream = null;

        Object object = null;
        try {
            fileInputStream = new FileInputStream(diaChi);
            objectInputStream = new ObjectInputStream(fileInputStream);

            object = objectInputStream.readObject();
            return object;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
