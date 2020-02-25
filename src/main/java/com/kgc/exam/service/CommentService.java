package com.kgc.exam.service;

import com.kgc.exam.entity.Collection;
import com.kgc.exam.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentService {
    List<Comment> queryCommentsByUseridAndComment(Integer userid);
    List<Collection> queryCollections(Integer userid);
    Boolean delCollections(Integer userid,Integer goodsid);
}
