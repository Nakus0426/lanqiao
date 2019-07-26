package demo1.circle;

/**
 * @author 张建平 on 2019/3/6.
 */
public class Circle {
    // 圆心
    private Point centerPoint;
    // 半径
    private int radius;

    /**
     * 圆心在原点上的圆
     * @param radius
     */
    public Circle(int radius) {
        this.radius = radius;
    }

    public Circle(Point centerPoint, int radius) {
        this.centerPoint = centerPoint;
        this.radius = radius;
    }

    public Circle(int x, int y, int radius) {
        this.centerPoint = new Point(x,y);
        this.radius = radius;
    }

    /**
     * 检查一上指定坐标的点是否包含在圆内
     * @param x
     * @param y
     * @return
     */
    public boolean contains(int x, int y) {
        return contains(new Point(x,y));
    }

    public boolean contains(Point point) {
        return this.centerPoint.distance(point)<=this.radius;
    }

    public Point getCenterPoint() {
        return centerPoint;
    }

    public void setCenterPoint(Point centerPoint) {
        this.centerPoint = centerPoint;
    }

    public int getRadius() {
        return radius;
    }

    public void setRadius(int radius) {
        this.radius = radius;
    }

    public static void main(String[] args) {
        //创建一个圆
        Circle circle = new Circle(1, 1, 8);

        int[][] points = {{1,6},{-2,8},{6,6},{8,4},{5,-8}};
        for (int[] xy : points) {
            Point p = new Point(xy[0], xy[1]);

            if (circle.contains(p)) {
                System.out.println("包含：圆心" + circle.getCenterPoint()
                        + "半径：" + circle.getRadius()
                        + "到" + p + "的距离：" + circle.getCenterPoint().distance(p));
            }else{
                System.out.println("不包含：圆心" + circle.getCenterPoint()
                        + "半径：" + circle.getRadius()
                        + "到" + p + "的距离：" + circle.getCenterPoint().distance(p));
            }
        }
    }

}
