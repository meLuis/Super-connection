
//oGhost step
if (hp <= 0) {
    instance_destroy();
}

var target_x = oPlayer.x;
var target_y = oPlayer.y-16;

var angle = point_direction(x, y, target_x, target_y);

x += lengthdir_x(speed, angle);
y += lengthdir_y(speed, angle);

if (place_meeting(x, y, oBullet)) {
    var bullet = instance_place(x, y, oBullet);
    if bullet {
        hp -= bullet.damage * 3;
        with (bullet) {
            instance_destroy();
        }
    }
}

if (place_meeting(x, y, oPlayer)) {
    oPlayer.hp -= damage;
    instance_destroy();
}