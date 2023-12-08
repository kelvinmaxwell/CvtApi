package app.karimax.cvt.controller.forums;

import app.karimax.cvt.Utils.ReplaceExistingSrcWithNewUrls;
import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.*;
import app.karimax.cvt.model.ForumReport;
import app.karimax.cvt.model.PostComments;
import app.karimax.cvt.model.User;
import app.karimax.cvt.service.FileStorageService;
import app.karimax.cvt.service.ForumRolesService;
import app.karimax.cvt.service.ForumsService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.Base64;

import static app.karimax.cvt.Utils.ReplaceExistingSrcWithNewUrls.replaceExistingSrcWithNewUrls;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/forums")
public class ForumsController {
    private final ForumsService forumsService;
    private  final Configs configs;
    MultipartFile multipartFile=null;
    MultipartFile multipartFile1=null;
    MultipartFile multipartFile2=null;
    private  final FileStorageService fileStorageService;

    @GetMapping("getAll/{id}")
    public ResponseEntity<ApiResponseDTO> getAllServiceByCategory(@PathVariable("id") Integer customerId) {
        return new ResponseEntity<ApiResponseDTO>(forumsService.getAll(customerId), HttpStatus.OK);
    }

    @PostMapping("followForum")
    public ResponseEntity<ApiResponseDTO> followForum(@RequestBody ForumUsersDto saveForumsDto) {
        return new ResponseEntity<ApiResponseDTO>(forumsService.followForum(saveForumsDto), HttpStatus.OK);
    }

    @GetMapping("myForums/{id}")
    public ResponseEntity<ApiResponseDTO> myForums(@PathVariable("id") Integer customerId) {
        return new ResponseEntity<ApiResponseDTO>(forumsService.myForums(customerId), HttpStatus.OK);
    }

    @GetMapping("getAllMakeModels")
    public ResponseEntity<ApiResponseDTO> myForums() {
        return new ResponseEntity<ApiResponseDTO>(forumsService.getAllForumModels(), HttpStatus.OK);
    }

    @GetMapping("discoverbymodel/{model}/{id}")
    public ResponseEntity<ApiResponseDTO> discoverbymodel(@PathVariable("model") String model,@PathVariable("id") Integer userId) {
        return new ResponseEntity<ApiResponseDTO>(forumsService.discoverbymodel(model,userId), HttpStatus.OK);
    }

    @GetMapping("getforumUsersbyRole/{roleId}/{forumId}")
    public ResponseEntity<ApiResponseDTO> getforumUsersbyRole(@PathVariable("roleId") Integer roleId,@PathVariable("forumId") Integer forumId) {
        return new ResponseEntity<ApiResponseDTO>(forumsService.getforumUsersbyRole(roleId,forumId), HttpStatus.OK);
    }


    @PostMapping("savePosts")
    public ResponseEntity<ApiResponseDTO> savePosts(@RequestBody PostDto postDto) {

        for (int i = 0; i < postDto.getImageBitmaps().size(); i++) {
            byte[] decodedBytes = Base64.getMimeDecoder().decode(postDto.getImageBitmaps().get(i));

            ByteArrayInputStream inputStream = new ByteArrayInputStream(decodedBytes);

            try {
                multipartFile = new MockMultipartFile("file.png", inputStream);
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }


            String fileName = fileStorageService.storeFile(multipartFile);

            ServletUriComponentsBuilder.fromCurrentContextPath().path(fileName).toUriString();

            postDto.getImageBitmaps().set(i,configs.getServerImageUrl()+fileName);

        }

        postDto.setReplacedHtml(replaceExistingSrcWithNewUrls(postDto.getReplacedHtml(),postDto.getImageBitmaps()));
        return new ResponseEntity<ApiResponseDTO>(forumsService.savePosts(postDto), HttpStatus.OK);
    }


    @GetMapping("getAllPosts/{userId}/{forumId}")
    public ResponseEntity<ApiResponseDTO> getPosts(@PathVariable("userId") Integer userId,@PathVariable("forumId") Integer forumId) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(forumsService.getPosts(userId,forumId), HttpStatus.OK);
    }

    @GetMapping("getUserPosts/{userId}/{userId2}")
    public ResponseEntity<ApiResponseDTO> getForumPostsUser(@PathVariable("userId") Integer userId,@PathVariable("userId2") Integer userId2) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(forumsService.getUserPosts(userId,userId2), HttpStatus.OK);
    }





    @GetMapping("getPostsComments/{postId}/{userId}/{forumId}")
    public ResponseEntity<ApiResponseDTO> getPostsComments(@PathVariable("userId") Integer userId,@PathVariable("forumId") Integer forumId,@PathVariable("postId") Integer postId) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(forumsService.fetchCommentsAndReplies(postId,userId,forumId), HttpStatus.OK);
    }

    @ExceptionHandler(MaxUploadSizeExceededException.class)
    public ResponseEntity maxUploadSizeExceeded(MaxUploadSizeExceededException e) {
     System.out.println("max allowed size exceeded");

        return  null;
    }

    @PostMapping("saveComment")
    public ResponseEntity<ApiResponseDTO> saveComment(@RequestBody PostComments postComments) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(forumsService.saveComment(postComments), HttpStatus.OK);
    }


    @PostMapping("handlelikesPosts/{postId}/{customerId}/{action}/{reactionType}/{dislikelike}")
    public ResponseEntity<ApiResponseDTO> handlelikesPosts(@PathVariable("postId") Integer postId,@PathVariable("customerId") Integer customerId,@PathVariable("action") String action,@PathVariable("reactionType") String reactionType,@PathVariable("dislikelike") String dislikelike) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(forumsService.handlelikesPosts(postId,customerId,action, reactionType, dislikelike), HttpStatus.OK);
    }
    @PostMapping("saveReportAction")
    public ResponseEntity<ApiResponseDTO> saveReportAction(@RequestBody ForumReport forumReport) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(forumsService.saveReports(forumReport), HttpStatus.OK);
    }

    @GetMapping("getUserForumsBoolean/{userId}/{forumId}")
    public ResponseEntity<ApiResponseDTO> getUserForums(@PathVariable("userId") Integer userId,@PathVariable("forumId") Integer forumId) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(forumsService.getUserSubscription(userId,forumId), HttpStatus.OK);
    }

    @GetMapping("getforumDetails/{forumId}")
    public ResponseEntity<ApiResponseDTO> getforumDetails(@PathVariable("forumId") Integer forumId) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(forumsService.getforumDetails(forumId), HttpStatus.OK);
    }


    @GetMapping("getUserRoles/{userId}/{forumId}")
    public ResponseEntity<ApiResponseDTO> getforumUserRoles(@PathVariable("forumId") Integer forumId) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(forumsService.getforumDetails(forumId), HttpStatus.OK);
    }



    @PostMapping("updateForumInfo")
    public ResponseEntity<ApiResponseDTO> updateForumInfo(@RequestBody UpdateForumDto updateForumDto) throws ParseException {

        if(updateForumDto.getForumProfileImages().getImageOne().length()>40 && updateForumDto.getForumProfileImages().getImageOne()!=null) {
            byte[] decodedBytes1 = Base64.getMimeDecoder().decode(updateForumDto.getForumProfileImages().getImageOne());

            ByteArrayInputStream inputStream1 = new ByteArrayInputStream(decodedBytes1);

            try {
                multipartFile1 = new MockMultipartFile("file.png", inputStream1);
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }


            String fileName1 = fileStorageService.storeFile(multipartFile1);

            ServletUriComponentsBuilder.fromCurrentContextPath().path(fileName1).toUriString();


            updateForumDto.getForumProfileImages().setImageOne(fileName1);
        }
        if(updateForumDto.getForumProfileImages().getImageTwo().length()>40 && updateForumDto.getForumProfileImages().getImageTwo()!=null) {
            byte[] decodedBytes2 = Base64.getMimeDecoder().decode(updateForumDto.getForumProfileImages().getImageTwo());

            ByteArrayInputStream inputStream2 = new ByteArrayInputStream(decodedBytes2);

            try {
                multipartFile2 = new MockMultipartFile("file.png", inputStream2);
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }


            String fileName2 = fileStorageService.storeFile(multipartFile2);

            ServletUriComponentsBuilder.fromCurrentContextPath().path(fileName2).toUriString();


            updateForumDto.getForumProfileImages().setImageTwo(fileName2);
        }

        return new ResponseEntity<ApiResponseDTO>(forumsService.updateForumInfo(updateForumDto), HttpStatus.OK);
    }


    @GetMapping("getForumById/{forumId}")
    public ResponseEntity<ApiResponseDTO> getForumById(@PathVariable("forumId") Integer forumId) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(forumsService.getForumById(forumId), HttpStatus.OK);
    }


    @PostMapping("updateUserProfile/{userId}/{userName}")
    public ResponseEntity<ApiResponseDTO> updateUserProfile(@PathVariable("userId") Integer userId,@RequestBody User user,@PathVariable("userName")String userName) throws ParseException {
        MultipartFile multipartFile=null;

        System.out.print(user.getProfile_photo_path());


        try {
            File file = File.createTempFile("image", ".png");
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

//    	 String carg=null;
//		try {
//			carg = URLDecoder.decode(request.getResume_file_path(), "UTF-8");
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//    	 carg = carg.replace("\n","");

        byte[] decodedBytes = Base64.getMimeDecoder().decode(user.getProfile_photo_path());

        ByteArrayInputStream inputStream = new ByteArrayInputStream(decodedBytes);

        try {
            multipartFile = new MockMultipartFile("file.png", inputStream);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }


        String fileName = fileStorageService.storeFile(multipartFile);

        ServletUriComponentsBuilder.fromCurrentContextPath().path(fileName).toUriString();



        user.setProfile_photo_path(fileName);


        return new ResponseEntity<ApiResponseDTO>(forumsService.updateUserProfile(user,userId, userName), HttpStatus.OK);
    }

    @GetMapping("getMechDetails/{userId}")
    public ResponseEntity<ApiResponseDTO> getMechDetails(@PathVariable("userId") Integer userId) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(forumsService.getMechDetails(userId), HttpStatus.OK);
    }


}
