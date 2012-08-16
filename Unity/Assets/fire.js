#pragma strict
//创建填弹时间变量
var waitFire:int;
var gui:GameObject;

function Start () {
waitFire = Time.time;
}


//定义一个变换对象FirePoint作为发射点对象的代码的接口
//var FirePoint:Transform;
//定义一个刚体对象Bullet作为炮弹对象的代码接口
var Bullet:Rigidbody;

//为火舌新增一个接口
var explosionPrefab:Transform;

//创建一个开火的布尔变量，作为一个是否开火的开关使用
var openFireSwith= false;



function Update () {
//当鼠标左键按下的时候，就在场景中创建一枚炮弹，并发射它
if(Input.GetMouseButtonDown(0)){


//判断是否允许开火
if(openFireSwith){
//记录下开火的初始时间
waitFire = Time.time;


var clone:Rigidbody;
//重新实例化对象clone，让它的坐标位置和方向与发射点对象的一致。
clone = Instantiate(Bullet,transform.position,transform.rotation);
//实例化完毕，让炮弹以100的速度朝前发射。
clone.velocity = transform.TransformDirection(Vector3.forward*100);

//实例化一个火舌对象，火舌的位置为发射点的位置，方向为发射点的方向
Instantiate(explosionPrefab,transform.position,transform.rotation);

//将开火状态关闭
openFireSwith=false;

}

}

var shotTimeG:GameObject;


//从开火之时算起，四秒钟之后再一次允许开火
if(Time.time > (waitFire+4)){
openFireSwith=true;
}
else{
//计算等待时间的大小，并折算成百分数赋给shotTimeG的静态变量shotTime
reload.shotTime = Mathf.Round((Time.time-waitFire)*25);
//计算等待时间的大小，并折算成百分比赋给zouGUI的文字参数。
gui.guiText.text=Mathf.Round((Time.time-waitFire)*25)+"%";

}

}

