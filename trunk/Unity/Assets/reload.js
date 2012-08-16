#pragma strict

function Start () {

}


//创建各种状态的图形接口
var T00 : Texture2D;
var T25 : Texture2D;
var T50 : Texture2D;
var T75 : Texture2D;
var T100 : Texture2D;
//初始化填弹时间，注意这里使用的是static，证明它可以为全局所用
static var shotTime = 100;


function Update ()
{
//初始化动态加载图形GUI的对象
//var shotTime_G=gameObject.Find("HUD");this
//图形GUI对象根据填弹时间的大小，来加载不同的状态图形
if(shotTime<=0)
{
guiTexture.texture = T00;
return;
}
else if(shotTime<50)
{
guiTexture.texture = T25;
return;
}
else if(shotTime<75)
{
guiTexture.texture = T50;
return;
}
else if(shotTime<99)
{
guiTexture.texture = T75;
return;
}
if(shotTime>=99)
{
guiTexture.texture = T100;
return;
}
}