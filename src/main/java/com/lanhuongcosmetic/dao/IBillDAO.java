package com.lanhuongcosmetic.dao;

import com.lanhuongcosmetic.model.BillModel;
import com.lanhuongcosmetic.paging.Pageble;

import java.sql.Timestamp;
import java.util.List;

public interface IBillDAO extends GenericDAO<BillModel> {
    List<BillModel> findAll(Pageble pageble);
    List<BillModel> findAll();
    int save(BillModel billModel);
    void update(int bill_id);
    void delete(int bill_id);
    BillModel findOne(int bill_id);
    BillModel findOneByIdAndDate(int user_id, Timestamp created_date);
    BillModel findOneByDate(Timestamp created_date);
    int getTotalItem();
}
