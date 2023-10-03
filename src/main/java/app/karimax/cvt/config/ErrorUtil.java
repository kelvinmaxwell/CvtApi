package app.karimax.cvt.config;

import java.util.ArrayList;
import java.util.HashSet;

public class ErrorUtil {
    ArrayList<String> errorArrayList;

    public ErrorUtil(ArrayList<String> errorArrayList) {
        super();
        this.errorArrayList = errorArrayList;
    }


    public  String removeDuplicates() {
        HashSet<String> uniqueSet = new HashSet<>();
        ArrayList<String> result = new ArrayList<>();
        String errString="";

        for (String item : errorArrayList) {
            if (uniqueSet.add(item)) {
                // If the item is successfully added to the HashSet, it's unique.
                result.add(item);
            }
        }

        for(int k=0;k<result.size();k++)
        {
            if(k==result.size()-1) {
                errString+=result.get(k);
            }
            else {
                errString+=result.get(k)+",";
            }
        }

        return errString;
    }
}
