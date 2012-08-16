#pragma strict

var speed:float = 200;

function Start () {

}

function Update () {
transform.Rotate(Vector3(0, 0, Input.GetAxis("Mouse X")) * Time.deltaTime * speed);
}