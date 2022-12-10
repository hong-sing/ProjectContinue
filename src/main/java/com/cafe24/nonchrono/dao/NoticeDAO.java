package com.cafe24.nonchrono.dao;

import com.cafe24.nonchrono.dto.NoticeDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class NoticeDAO {

    @Autowired
    private SqlSession sqlSession;

    public NoticeDAO() {
        System.out.println("----NoticeDAO() 객체 생성됨");
    }//NoticeDAO() end

    public int ntInsert(NoticeDTO noticeDTO) {
        return sqlSession.insert("notice.ntinsert", noticeDTO);
    }//NtInsert() end
}//end
