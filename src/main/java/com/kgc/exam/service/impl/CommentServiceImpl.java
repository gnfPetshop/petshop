package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Collection;
import com.kgc.exam.entity.Comment;
import com.kgc.exam.mapper.CommentMapper;
import com.kgc.exam.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentMapper commentMapper;
    @Override
    public List<Comment> queryCommentsByUseridAndComment(Integer userid) {
        return commentMapper.queryCommentsByUseridAndComment(userid);
    }

    @Override
    public List<Collection> queryCollections(Integer userid) {
        return commentMapper.queryCollections(userid);
    }

    @Override
    public Boolean delCollections(Integer userid, Integer goodsid) {
        return commentMapper.delCollections(userid,goodsid)==1;
    }
}
