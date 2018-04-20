package com.freedom.util;

public class Page {
    private int start;
    private int count=5;
    private int total;

    public boolean isHasPrevious() {
        if (start <= 0) {
            return false;
        }
        return true;
    }

    public boolean isHasNext() {
        if (start >= getLast()){
            return false;
        }
        return true;
    }

    public int getLast() {
        if(count==0){
            return 0;
        }
        int last;
        if (0 == total % count) {
            last = total - count;
        } else {
            last = total - total % count;
        }
        last = last < 0 ? 0 : last;
        return last;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}
