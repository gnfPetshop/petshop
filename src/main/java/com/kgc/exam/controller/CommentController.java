package com.kgc.exam.controller;

import com.kgc.exam.entity.Collection;
import com.kgc.exam.entity.Comment;
import com.kgc.exam.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@ResponseBody
@RequestMapping("comments")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @RequestMapping("queryCommentsByUseridAndComment")
    public List<Comment> queryCommentsByUseridAndComment(@RequestParam("userid")Integer userid){
        return commentService.queryCommentsByUseridAndComment(userid);
    }

    @RequestMapping("queryCollections")
    public List<Collection> queryCollections(@RequestParam("userid") Integer userid){
        return commentService.queryCollections(userid);
    }

    @RequestMapping("delCollections")
    public Boolean delCollections(@RequestParam("userid") Integer userid,@RequestParam("goodsid")Integer goodsid){
        return commentService.delCollections(userid,goodsid);
    }
}
