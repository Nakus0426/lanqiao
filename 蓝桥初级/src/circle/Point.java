package demo1.circle;

/**
 * @author 张建平 on 2019/3/6.
 */
public class Point {
    private int x;
    private int y;

    /**
     * 原点
     */
    public Point() {
    }

    /**
     * 指定坐标的点
     * @param x
     * @param y
     */
    public Point(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public int getX() {
        return x;
    }

    /**
     * 当前点到原点的距离
     * @return
     */
    public double distance() {
        return distance(0, 0);
    }

    /**
     * 当前点到指定坐标的点的距离
     * @param x
     * @param y
     * @return
     */
    public double distance(int x, int y) {
        return distance(new Point(x,y));
    }


    /**
     * 当前点到指定点的距离
     * @param point
     * @return
     */
    public double distance(Point point) {
         // [(X1-X2)*(X1-X2) + (Y1-Y2)*(Y1-Y2)] 的平方根，求平方根请参考java.lang.Math.sqrt()方法.
        return Math.sqrt((this.x-point.x)*(this.x-point.x) + (this.y-point.y)*(this.y-point.y));
    }


    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    @Override
    public String toString() {
        // ctrl + shift + J: 合并行
        return "点(" + x + ", " + y + ')';
    }

    public static void main(String[] args) {
        Point p1 = new Point(1, 2);

        double distance = p1.distance();
        System.out.println(p1 + "到(0,0)的距离：" + distance);

        double distance1 = p1.distance(-5, -3);
        System.out.println(p1 + "到(-5,-3)的距离：" + distance1);
    }
}
