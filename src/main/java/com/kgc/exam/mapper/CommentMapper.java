package com.kgc.exam.mapper;

import com.kgc.exam.entity.Collection;
import com.kgc.exam.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentMapper {

    List<Comment> queryCommentsByUseridAndComment(@Param("userid") Integer userid);

    List<Collection> queryCollections(@Param("userid")Integer userid);
    Integer delCollections(@Param("userid") Integer userid,@Param("goodsid") Integer goodsid);
}
