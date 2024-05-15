var objectType = irandom(27);
    
    // Создаем объект на случайной позиции
    var obj = instance_create(random(room_width), random(room_height), obj_type[objectType]);
    
    // Убеждаемся, что объект не перекрывается с другими объектами
    while (place_meeting(obj.x, obj.y, all)) {
        obj.x = random(room_width);
        obj.y = random(room_height);
    }