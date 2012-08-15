#pragma strict

function Start () {

}

function Update () {

}

//为爆炸火花创建一个接口
var boomFire : Transform;
//函数判断物体是否与其他物体产生碰撞，一旦碰撞就执行里面的代码
function OnCollisionStay(collision : Collision) {
//实例化一个爆炸火花对象，摆放的职位是当前炮弹的位置，角度是炮弹的角度
Instantiate(boomFire,this.transform.position,this.transform.rotation);
//删除掉碰撞的炮弹对象
Destroy(gameObject);
}