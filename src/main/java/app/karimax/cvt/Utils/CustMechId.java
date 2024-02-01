package app.karimax.cvt.Utils;

import app.karimax.cvt.model.Customer;
import app.karimax.cvt.model.User;
import app.karimax.cvt.repository.CustomerRepository;
import app.karimax.cvt.repository.UserRepository;
import lombok.RequiredArgsConstructor;
/** returns  userable id given user id.*/
@RequiredArgsConstructor
public class CustMechId {



    private final UserRepository userRepository;


    public Integer getId(Integer id){
        long userableid=0;

            User user=userRepository.findById(id.longValue()).get();
            userableid=user.getUserable_id();

        return (int) userableid;


    }




}
