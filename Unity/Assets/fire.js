#pragma strict

function Start () {

}


//定义一个变换对象FirePoint作为发射点对象的代码的接口
//var FirePoint:Transform;
//定义一个刚体对象Bullet作为炮弹对象的代码接口
var Bullet:Rigidbody;
function Update () {
//当鼠标左键按下的时候，就在场景中创建一枚炮弹，并发射它
if(Input.GetMouseButtonDown(0)){
var clone:Rigidbody;
//重新实例化对象clone，让它的坐标位置和方向与发射点对象的一致。
clone = Instantiate(Bullet,transform.position,transform.rotation);
//实例化完毕，让炮弹以100的速度朝前发射。
clone.velocity = transform.TransformDirection(Vector3.right*100);
}
}