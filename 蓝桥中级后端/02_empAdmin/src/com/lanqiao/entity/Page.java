package com.lanqiao.entity;

public class Page<T> {
    /*
     * 分页控制类,封装了相关分页时所需的信息，包括：
     * <pre>
     *      pageNo    -  页号
     *      pageSize  -  每页显示记录数
     *      totalRow  -  总行数
     *      totalPage -  总页数
     *      previous  -  是否有上一页
     *      next      -  是否有下一页
     *      first     -  是否是每一页
     *      last      -  是否是最后一页
     * </pre>
     *
     *   pageSize=10;
     *   1页: 第1~10条记录
     *   2页: 第11~20第记录
     *  .....
     *  【第一页】【上一页】【下一页】【最后一页】
     */
    //常量，每一页的行数
    public static final int R5 = 5;
    public static final int R10 = 10;
    public static final int R20 = 20;
    public static final int R50 = 50;
    public static final int DEFAULT_SIZE = R10;

    //总行数
    private int totalRow = 0;
    //当前页号
    private int pageNo = 1;
    //每一页的行数
    public int pageSize = DEFAULT_SIZE;
    //总页数
    private int totalPage = 0;
    //是否存在上一页
    private boolean previous;
    //是否存在下一页
    private boolean next;
    //是否为首页
    private boolean first;
    //是否为尾页
    private boolean last;
    //当前页的首条记录的下标
    private int firstIndex;
    //当前页的末条记录的下标
    private int lastIndex;
    //查询条件对象
    private T queryObject;


    public Page() {
        this(0);
    }

    /**
     * @param totalRow 设置总行数
     */
    public Page(int totalRow) {
        this.totalRow = totalRow;
        setTotalRow(totalRow);
    }


    /**
     * @param queryObject 设置查询条件
     */
    public Page(T queryObject) {
        this.queryObject = queryObject;
    }

    /**
     * @param totalRow
     * @param queryObject 设置总行数，查询条件
     */
    public Page(int totalRow, T queryObject) {
        setTotalRow(totalRow);
        this.queryObject = queryObject;
    }


    /**
     * @return 取总行数
     */
    public int getTotalRow() {
        return totalRow;
    }

    /**
     * @param totalRow 设置总行数
     */
    public void setTotalRow(int totalRow) {
        this.totalRow = totalRow;
        if (totalRow%pageSize == 0) {
            this.totalPage = totalRow/pageSize;
        }else{
            this.totalPage = totalRow/pageSize + 1;
        }
    }

    /**
     * @return 取当前页号
     */
    public int getPageNo() {
        return pageNo;
    }

    /**
     * @param pageNo 设置当前页号
     */
    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }
    /**
     * 得到下一页的页号
     * @return
     */

    public int getNextNo() {
        if (this.isNext()) {
            return pageNo + 1;
        }else{
            return totalPage;
        }
    }

    /**
     * 得到上一页的页号
     * @return
     */
    public int getPrevNo() {
        if (this.isPrevious()) {
            return pageNo -1;
        }else{
            return pageNo;
        }
    }

    /**
     * @return 取每页行数
     */
    public int getPageSize() {
        return pageSize;
    }

    /**
     * @param pageSize 设每页行数
     */
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    /**
     * @return 取总页数
     */
    public int getTotalPage() {
        if (totalRow % pageSize == 0) {
            this.totalPage = totalRow / pageSize;
        } else {
            this.totalPage = totalRow / pageSize + 1;
        }
        return totalPage;
    }

    /**
     * @param totalPage
     * 设置总页数
     */
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    /**
     * @return
     * 是否有上一页
     */
    public boolean isPrevious() {
        if (getPageNo() > 1) {
            return true;
        }else {
            return false;
        }
    }

    public void setPrevious(boolean previous) {
        this.previous = previous;
    }

    /**
     * @return 是否有下一页
     */
    public boolean isNext() {
        if (pageNo == 1 && pageNo < getTotalPage()) {
            return true;
        }
        if (pageNo > 1 && pageNo < getTotalPage()) {
            return true;
        }else  {
            return false;
        }
    }

    public void setNext(boolean next) {
        this.next = next;
    }

    /**
     * @return 是否为第一页
     */
    public boolean isFirst() {
        return (getPageNo()>1 ? false : true);
    }

    public void setFirst(boolean first) {
        this.first = first;
    }

    /**
     * @return 是否为最后一页
     */
    public boolean isLast() {
        return (getPageNo()==getTotalPage() ? true : false);
    }

    public void setLast(boolean last) {
        this.last = last;
    }

    /**
     * @return
     * 取本页数据首条记录下标
     */
    public int getFirstIndex() {
        int i = getPageNo();
        return ((i<1?1:i)-1)*getPageSize()+1;
    }

    public void setFirstIndex(int firstIndex) {
        this.firstIndex = firstIndex;
    }

    /**
     * @return
     * 取本页数据末条记录下标
     */
    public int getLastIndex() {
        return getFirstIndex()+this.getPageSize()-1;
    }

    public void setLastIndex(int lastIndex) {
        this.lastIndex = lastIndex;
    }

    /**
     * @return 取查询分页的条件
     */
    public T getQueryObject() {
        return queryObject;
    }

    /**
     * @param queryObject 设查询分页的条件
     */
    public void setQueryObject(T queryObject) {
        this.queryObject = queryObject;
    }

    @Override
    public String toString() {
        return "Page [是否是第一页:" + isFirst()
                + ", 是否是最后页:" + isLast()
                + ", 是否有上一页:" + isPrevious()
                + ", 是否有下一页:" + isNext()
                + ",   当前的页号:" + getPageNo()
                + ",   每页记录数:" + getPageSize()
                + ", 总页数=" + getTotalPage()
                + ", 总记录数=" + getTotalRow()
                + ",当前页首元素下标="+getFirstIndex()
                + ",当前页末元素下标="+getLastIndex()+"]";
    }

    public static void main(String[] args) {
        // 模拟页页提交的查询条件
        Employee emp = new Employee();

        Page<Employee> page = new Page<Employee>(13);
        //page.setTotalRow(13);

        // 设置（保存）查询条件
        page.setQueryObject(emp);

        //设置 默认每页显示的记录数
        page.setPageSize(Page.R5);
        // 设置当前页号
        page.setPageNo(2);

        System.out.println(page);

    }
}
