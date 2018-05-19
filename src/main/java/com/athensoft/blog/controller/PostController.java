package com.athensoft.blog.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.blog.entity.Post;
import com.athensoft.blog.entity.PostContent;
import com.athensoft.blog.entity.PostState;
import com.athensoft.blog.service.PostService;
import com.athensoft.util.id.GeneralIDHelper;


@Controller
@RequestMapping("/blog")
public class PostController {
	
	private static Map<Integer,String> mapChannel = new HashMap<Integer, String>();
	private static Map<Integer,String> mapTopicClass = new HashMap<Integer, String>();
	
	static {
		mapChannel.put(1, "Knowledge");
		mapChannel.put(2, "Education");
		
		mapTopicClass.put(1, "Software Development");
		mapTopicClass.put(2, "QA");
		mapTopicClass.put(3, "AI");
		mapTopicClass.put(4, "Big Data and Machine Learning");
		mapTopicClass.put(5, "Digital Marketing");
		mapTopicClass.put(6, "Graphic Design");
	}
	
	
	@Autowired
	private PostService  postService;

	public void setPostService(PostService postService) {
		this.postService = postService;
	}
	
	@RequestMapping("/")
	public ModelAndView gotoIndex(ModelMap model){
		return getPostList();
	}
	
	
	@RequestMapping("/list")
	public ModelAndView getPostList(){
		List<Post> listPost = postService.getAllPost();
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> model = mav.getModel();
		model.put("listPost", listPost);
		model.put("lang","zh_CN");
		
		String viewName = "blog/post_list";
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping("/channel/{channelNo}")
	public ModelAndView getPostByChannel(
			@PathVariable("channelNo") int channelNo){
		
		List<Post> listPost = postService.getPostByChannel(channelNo);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> model = mav.getModel();
		model.put("listPost", listPost);
		//model.put("channelName", mapChannel.get(channelNo));
		
		String viewName = "blog/post_list";
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping("/channel/{channelNo}/topic_class/{topicClassNo}")
	public ModelAndView getPostByTopicClass(
			@PathVariable("channelNo") int channelNo,
			@PathVariable("topicClassNo") int topicClassNo){
		
		List<Post> listPost = postService.getPostByTopicClass(topicClassNo);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> model = mav.getModel();
		model.put("listPost", listPost);
		//model.put("channelName", mapChannel.get(channelNo));
		//model.put("topicClassName", mapTopicClass.get(topicClassNo));
		
		String viewName = "blog/post_list";
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping("/channel/{channelNo}/topic/{topicNo}")
	public ModelAndView getPostByTopicNo(
			@PathVariable("channelNo") int channelNo,
			@PathVariable("topicNo") String topicNo){
		
		List<Post> listPost = postService.getPostByTopicNo(topicNo);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> model = mav.getModel();
		model.put("listPost", listPost);
		
		String viewName = "blog/post_list";
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping("/channel/{channelNo}/topic_name/{topicName}")
	public ModelAndView getPostByTopicName(
			@PathVariable("channelNo") int channelNo,
			@PathVariable("topicName") String topicName){
		
		List<Post> listPost = postService.getPostByTopicName(topicName);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> model = mav.getModel();
		model.put("listPost", listPost);
		
		String viewName = "blog/post_list";
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping("/channel/{channelNo}/topic_class/{topicClassNo}/post/{postUUID}")
	public ModelAndView getPost(
			@PathVariable("channelNo") int channelNo,
			@PathVariable("topicClassNo") int topicClassNo,
			@PathVariable("postUUID") long postUUID){
		
		Post post = postService.getPostById(postUUID);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> model = mav.getModel();
		model.put("post", post);
		model.put("channelName", mapChannel.get(channelNo));
		model.put("topicClassName", mapTopicClass.get(topicClassNo));
		
		String viewName = "blog/post";
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping("/post/{postUUID}")
	public ModelAndView getPostById(
			@PathVariable("postUUID") long postUUID){
		
		Post post = postService.getPostById(postUUID);
		
		//for articles in the same topic
		List<Post> sameTopicPostList = postService.getPostByTopicNo(post.getTopicNo());
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> model = mav.getModel();
		model.put("post", post);
		model.put("channelName", mapChannel.get(post.getChannelNo()));
		model.put("topicClassName", mapTopicClass.get(post.getTopicClassNo()));
		
		model.put("sameTopicPostList", sameTopicPostList);
		
		String viewName = "blog/post";
		mav.setViewName(viewName);
		return mav;
	}
	
	
	@RequestMapping("/create.html")
	public String gotoPostCreate(){
		return "blog/post_create";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public ModelAndView createPost(final Post postForm){
		
		Post newPost = new Post();
		newPost = postForm;
		long puuid = GeneralIDHelper.generateLong();
		newPost.setPostUUID(puuid);
		String topicNo = postService.getTopicNo(newPost.getTopicName());
		newPost.setTopicNo(topicNo);
		newPost.setCreateDate(new Date());
		newPost.setViewNum(0);
		newPost.setPostStatus(PostState.CREATED);
		
		PostContent pcontent = new PostContent();
		pcontent.setPostContent(postForm.getContent());
		pcontent.setPostUUID(puuid);
		pcontent.setPostStatus(PostState.CREATED);
		
		newPost.setPostContent(pcontent);
		
		
		postService.createPost(newPost);
		List<Post> listPost = postService.getAllPost();
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> model = mav.getModel();
		model.put("listPost", listPost);
		
		String viewName = "redirect:/blog/list?lang=zh_CN";
		mav.setViewName(viewName);
		return mav;
	}
	
	
	@RequestMapping(value="/update.html")
	public ModelAndView gotoUpdatePost(@RequestParam long postUUID){
		
		Post post = postService.getPostById(postUUID);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> model = mav.getModel();
		model.put("post", post);
		
		String viewName = "blog/post_update";
		mav.setViewName(viewName);
		
		return mav;
	}
	
	@RequestMapping(value="/update")
	public ModelAndView updatePost(final Post postForm){
		
		Post newPost = new Post();
		newPost = postForm;
		newPost.setPostDate(new Date());
		newPost.setPostStatus(PostState.CREATED);
		
		PostContent pcontent = new PostContent();
		pcontent.setPostContent(postForm.getContent());
		pcontent.setPostUUID(postForm.getPostUUID());
		pcontent.setPostStatus(PostState.CREATED);
		newPost.setPostContent(pcontent);
		
		postService.updatePost(newPost);
		List<Post> listPost = postService.getAllPost();
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> model = mav.getModel();
		model.put("listPost", listPost);
		
		String viewName = "redirect:/blog/list?lang=zh_CN";
		mav.setViewName(viewName);
		return mav;
	}
	
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String queryString){
		List<Post> listPost = postService.search(queryString);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> model = mav.getModel();
		model.put("listPost", listPost);
		
		String viewName = "blog/post_list";
		mav.setViewName(viewName);
		return mav;
	}
}
