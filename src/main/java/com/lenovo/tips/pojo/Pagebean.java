package com.lenovo.tips.pojo;

import java.util.List;
public class Pagebean<T> {
    private Long total; // 总记录数
    private List<T> rows; // 分页显示的数据

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }

    @Override
    public String toString() {
        return "Pagebean{" +
                "total=" + total +
                ", rows=" + rows +
                '}';
    }
}
