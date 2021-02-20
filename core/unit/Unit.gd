class_name Unit extends Node2D
#占用方块大小
var size : Vector2
#是否启用碰撞
var collision_size : Vector2
#是否占用方块
var holdable_block : Vector2
#单位名称
var unit_name : String
#单位所属地图
var map : MultiMap
#所属生成器地址
var resource_unit_path : String
#摧毁信号
signal destoried(unit)
	
func _ready():
	init_resource_unit()
#初始化所属生成器
func init_resource_unit():
	if resource_unit_path:
		var resource_unit = get_tree().root.get_node(resource_unit_path)
		resource_unit.current_num += 1
		var _err = connect("destoried", resource_unit, "unit_destoried")
#初始化
func initialize(unit_meta : UnitMeta):
	pass


