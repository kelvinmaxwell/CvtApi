package app.karimax.cvt.Utils;

import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;

import java.security.SecureRandom;
@RequiredArgsConstructor
public class UniqueIdGenerator {

    public final   String PREFIX ;
    public final   String TABLE ;
    public final   String REFCOLUMN ;
    public   String ALPHANUMERIC = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";

    public   final int LENGTH; // 12 characters excluding the prefix

    public  String generateUniqueId(JdbcTemplate jdbcTemplate) {
        String uniqueId;
        do {
            uniqueId = generateRandomId();
        } while (isReferenceExists(jdbcTemplate, uniqueId));

        return uniqueId;
    }

    private  String generateRandomId() {
        StringBuilder sb = new StringBuilder(PREFIX);

        SecureRandom random = new SecureRandom();
        for (int i = 0; i < LENGTH; i++) {
            int index = random.nextInt(ALPHANUMERIC.length());
            sb.append(ALPHANUMERIC.charAt(index));
        }

        return sb.toString();
    }

    private  boolean isReferenceExists(JdbcTemplate jdbcTemplate, String reference) {
        // Check if the reference already exists in the database
        int count = jdbcTemplate.queryForObject(
                "SELECT COUNT(*) FROM "+TABLE+" WHERE "+REFCOLUMN+" = ?", Integer.class, reference);

        return count > 0;
    }
}