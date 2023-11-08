package app.karimax.cvt.Utils;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ReplaceExistingSrcWithNewUrls {
    public static String replaceExistingSrcWithNewUrls(String htmlString, List<String> newUrls) {
        // Match existing src attributes in the format src="0", src="1", etc.
        Pattern pattern = Pattern.compile("src=\"(\\d+)\"([^>]*)");

        // Create a matcher with the input HTML string
        Matcher matcher = pattern.matcher(htmlString);

        // Initialize a string buffer to store the modified HTML
        StringBuffer stringBuffer = new StringBuffer();

        while (matcher.find()) {
            // Get the current index from the existing src attribute
            int currentIndex = Integer.parseInt(matcher.group(1));

            // Check if the current index is within the bounds of the newUrls list
            if (currentIndex < newUrls.size()) {
                // Replace the existing src attribute with the corresponding URL from the list
                matcher.appendReplacement(stringBuffer, "src=\"" + newUrls.get(currentIndex) + "\"" + matcher.group(2));
            } else {
                // If there are no more new URLs, keep the original match
                matcher.appendReplacement(stringBuffer, matcher.group(0));
            }
        }

        // Append the remainder of the input string after the last match
        matcher.appendTail(stringBuffer);

        // Return the modified HTML string
        return stringBuffer.toString();
    }






}
