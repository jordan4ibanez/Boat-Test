function flow_boat(pos,object)
	local x = 0
	local y = 0
	local z = 0
	local velocity = object:getvelocity()
	local param2 = minetest.get_node({x=pos.x,y=pos.y,z=pos.z}).param2
	local node   = minetest.get_node({x=pos.x,y=pos.y,z=pos.z})

	if param2 > 8 then
		param2 = param2 - 9
	end

	--use this to copy
	if minetest.get_node({x=pos.x,y=pos.y,z=pos.z}).name == "default:water_flowing" and minetest.get_node({x=pos.x,y=pos.y,z=pos.z}).param2 < param2 then
		x = x 
		y = y 
		z = z 
	end


	--check for flowing water (This is insane)
	--plus x
	local param22 = minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z}).name == "default:water_flowing" and param22 < param2 then
		x = x + 1
		y = y
		z = z
	elseif minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z}).name == "default:water_flowing" and param22 > param2 then
		x = x - 1
		y = y
		z = z
	end
	local param22 = minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z - 1}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z-1}).name == "default:water_flowing" and param22 < param2 then
		x = x + 1
		y = y
		z = z - 1
	elseif minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z-1}).name == "default:water_flowing" and param22 > param2 then
		x = x - 1
		y = y
		z = z + 1
	end
	local param22 = minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z + 1}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z+1}).name == "default:water_flowing" and param22 < param2 then
		x = x + 1
		y = y
		z = z + 1
	elseif minetest.get_node({x=pos.x+1,y=pos.y,z=pos.z+1}).name == "default:water_flowing" and param22 > param2 then
		x = x - 1
		y = y
		z = z - 1
	end

	-------
	--minus x
	local param22 =  minetest.get_node({x=pos.x-1,y=pos.y,z=pos.z}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x-1,y=pos.y,z=pos.z}).name == "default:water_flowing" and param22 < param2 then
		x = x - 1
		y = y 
		z = z
	elseif minetest.get_node({x=pos.x-1,y=pos.y,z=pos.z}).name == "default:water_flowing" and param22 > param2 then
		x = x + 1
		y = y 
		z = z 
	end
	local param22 = minetest.get_node({x=pos.x-1,y=pos.y,z=pos.z-1}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x-1,y=pos.y,z=pos.z-1}).name == "default:water_flowing" and param22 < param2 then
		x = x -1
		y = y 
		z = z -1
	elseif minetest.get_node({x=pos.x-1,y=pos.y,z=pos.z-1}).name == "default:water_flowing" and param22 < param2 then
		x = x +1
		y = y 
		z = z +1
	end
	local param22 = minetest.get_node({x=pos.x-1,y=pos.y,z=pos.z+1}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x-1,y=pos.y,z=pos.z+1}).name == "default:water_flowing" and param22 < param2 then
		x = x -1
		y = y 
		z = z +1
	elseif minetest.get_node({x=pos.x-1,y=pos.y,z=pos.z+1}).name == "default:water_flowing" and param22 < param2 then
		x = x +1
		y = y 
		z = z -1
	end
	
	-----
	--z
	local param22 = minetest.get_node({x=pos.x,y=pos.y,z=pos.z-1}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x,y=pos.y,z=pos.z-1}).name == "default:water_flowing" and param22 < param2 then
		x = x 
		y = y 
		z = z -1
	elseif minetest.get_node({x=pos.x,y=pos.y,z=pos.z-1}).name == "default:water_flowing" and param22 < param2 then
		x = x 
		y = y 
		z = z +1
	end

	local param22 = minetest.get_node({x=pos.x,y=pos.y,z=pos.z+1}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	
	--print(param22)
	if minetest.get_node({x=pos.x,y=pos.y,z=pos.z+1}).name == "default:water_flowing" and param22 < param2 then
		x = x 
		y = y 
		z = z +1
	elseif minetest.get_node({x=pos.x,y=pos.y,z=pos.z+1}).name == "default:water_flowing" and param22 < param2 then
		x = x 
		y = y 
		z = z -1
	end

	--NOW check below!

	--plus x
	--if minetest.get_node(pos).name ~= "air" then
	local param22 = minetest.get_node({x=pos.x+1,y=pos.y-1,z=pos.z}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x+1,y=pos.y-1,z=pos.z}).name == "default:water_flowing" and param22 > param2 then
		x = x+ 1
		y = y-1
		z = z
	elseif minetest.get_node({x=pos.x+1,y=pos.y-1,z=pos.z}).name == "default:water_flowing" and param22 < param2 then
		x = x- 1
		y = y-1
		z = z
	end
	local param22 = minetest.get_node({x=pos.x+1,y=pos.y-1,z=pos.z - 1}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x+1,y=pos.y-1,z=pos.z-1}).name == "default:water_flowing" and param22 > param2 then
		x = x + 1
		y = y-1
		z = z - 1
	elseif minetest.get_node({x=pos.x+1,y=pos.y-1,z=pos.z-1}).name == "default:water_flowing" and param22 < param2 then
		x = x - 1
		y = y-1
		z = z + 1
	end
	local param22 = minetest.get_node({x=pos.x+1,y=pos.y-1,z=pos.z + 1}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x+1,y=pos.y-1,z=pos.z+1}).name == "default:water_flowing" and param22 > param2 then
		x = x + 1
		y = y-1
		z = z + 1
	elseif minetest.get_node({x=pos.x+1,y=pos.y-1,z=pos.z+1}).name == "default:water_flowing" and param22 < param2 then
		x = x - 1
		y = y-1
		z = z - 1
	end
	-------
	--minus x
	local param22 = minetest.get_node({x=pos.x-1,y=pos.y-1,z=pos.z}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x-1,y=pos.y-1,z=pos.z}).name == "default:water_flowing" and param22 > param2 then
		x = x - 1
		y = y -1
		z = z 
	elseif minetest.get_node({x=pos.x-1,y=pos.y-1,z=pos.z}).name == "default:water_flowing" and param22 < param2 then
		x = x + 1
		y = y -1
		z = z 
	end
	local param22 = minetest.get_node({x=pos.x-1,y=pos.y-1,z=pos.z-1}).param2 
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x-1,y=pos.y-1,z=pos.z-1}).name == "default:water_flowing" and param22 > param2 then
		x = x -1
		y = y -1
		z = z -1
	elseif minetest.get_node({x=pos.x-1,y=pos.y-1,z=pos.z-1}).name == "default:water_flowing" and param22 < param2 then
		x = x +1
		y = y -1
		z = z +1
	end	
	local param22 = minetest.get_node({x=pos.x-1,y=pos.y-1,z=pos.z+1}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x-1,y=pos.y-1,z=pos.z+1}).name == "default:water_flowing" and param22 > param2 then
		x = x -1
		y = y -1
		z = z +1
	elseif minetest.get_node({x=pos.x-1,y=pos.y-1,z=pos.z+1}).name == "default:water_flowing" and param22 < param2 then
		x = x +1
		y = y -1
		z = z -1
	end

	-----
	--z
	local param22 = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z-1}).param2 
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z-1}).name == "default:water_flowing" and param22 > param2 then
		x = x 
		y = y -1
		z = z -1
	elseif minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z-1}).name == "default:water_flowing" and param22 < param2 then
		x = x 
		y = y -1
		z = z +1
	end

	local param22 = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z+1}).param2
	if param22 > 8 then
		param22 = param22 - 9
	end
	if minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z+1}).name == "default:water_flowing" and param22 > param2  then
		x = x 
		y = y -1
		z = z +1
	elseif minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z+1}).name == "default:water_flowing" and param22 < param2  then
		x = x 
		y = y -1
		z = z -1
	end




	YOU NEED TO CREATE A THIRD ROW FOR +1 Y1!!!!!


	ADD THE PARAMETER 2 TO THE AXISES INSTEAD OF 1!!!





	--end
	object:setacceleration({x=x,y=y,z=z})

	--beach the boat
	if minetest.registered_nodes[minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z}).name].walkable == true and minetest.get_node({x=pos.x,y=pos.y,z=pos.z}).name == "air" then
	--	print("stuck")
		object:setacceleration({x=0,y=0,z=0})	
		object:setvelocity({x=0,y=0,z=0})			
	end
	--stop it from flying away
	if minetest.get_node({x=pos.x,y=pos.y,z=pos.z}).name == "air" and minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z}).name == "air" then
		object:setacceleration({x=0,y=-10,z=0})
	--	object:setvelocity({x=0,y=-2,z=0})
--		print("failuire")
	end
	--make it float
	--if minetest.get_item_group(minetest.get_node({x=pos.x,y=pos.y,z=pos.z}).name, "water") ~= 0 and minetest.get_item_group(minetest.get_node({x=pos.x,y=pos.y+1,z=pos.z}).name, "water") == 0 then
	--	object:setacceleration({x=x,y=2,z=z})
	--end
	--make it go down waterfalls
	--if minetest.get_item_group(minetest.get_node({x=pos.x,y=pos.y,z=pos.z}).name, "water") ~= 0 and minetest.get_item_group(minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z}).name, "water") ~= 0 then
	--	object:setacceleration({x=0,y=-2,z=0})
	--end
	--print(x.." "..y.." "..z)
	--print(dump(node))
	
end


local boat = {
	physical = true,
	collisionbox = {-0.4, -0.4, -0.4, 0.4, 0.3, 0.4},
	visual = "mesh",
	mesh = "boat.obj",
	textures = {"default_wood.png"},
	automatic_face_movement_dir = -90.0,
	driver = nil,
	v = 0,
	last_v = 0,
	removed = false
}
function boat.on_step(self, dtime)
	local pos = self.object:getpos()
	flow_boat(pos,self.object)
	--self.object:setvelocity(flow)
	
	--[[
	if minetest.get_item_group(nn.name, "water") ~= 0 then
		if nn.name == "default:water_source" then
			if velocity.x == 0 and velocity.y == 0 then
				if pos.x ~= center.x and pos.z ~= center.z then
					print("pass")
				end
			end
		elseif nn.name == "default:water_flowing" then
			
		end
	else

			self.object:setacceleration({x=0,y=0,z=0})	
			self.object:setvelocity({x=0,y=0,z=0})	
	end
	]]--
	--print(" "..(dump(nn)))
	--get center of block if on source node and then try to move towards the node that it's closest to
end

minetest.register_entity("boat:boat", boat)




























minetest.register_craftitem("boat:boat", {
	description = "Boat boat boat",
	inventory_image = "boat_inventory.png",
	wield_image = "boat_wield.png",
	wield_scale = {x = 2, y = 2, z = 1},
	liquids_pointable = true,

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return
		end
		pointed_thing.under.y = pointed_thing.under.y + 0.2
		pointed_thing.under.y = pointed_thing.under.y
		minetest.add_entity(pointed_thing.under, "boat:boat")
		if not minetest.setting_getbool("creative_mode") then
			itemstack:take_item()
		end
		return itemstack
	end,
})
minetest.register_craftitem("boat:infostick", {
	description = "Boat boat boat",
	inventory_image = "default_stick.png",
	on_place = function(itemstack, placer, pointed_thing)
		print(minetest.get_node(pointed_thing.above).param2)
	end,
})










--[[
--
-- Helper functions
--

local function is_water(pos)
	local nn = minetest.get_node(pos).name
	return minetest.get_item_group(nn, "water") ~= 0
end

local function get_sign(i)
	if i == 0 then
		return 0
	else
		return i / math.abs(i)
	end
end

local function get_velocity(v, yaw, y)
	local x = -math.sin(yaw) * v
	local z =  math.cos(yaw) * v
	return {x = x, y = y, z = z}
end

local function get_v(v)
	return math.sqrt(v.x ^ 2 + v.z ^ 2)
end

--
-- Boat entity
--

local boat = {
	physical = true,
	collisionbox = {-0.5, -0.4, -0.5, 0.5, 0.3, 0.5},
	visual = "mesh",
	mesh = "boat.obj",
	textures = {"default_wood.png"},

	driver = nil,
	v = 0,
	last_v = 0,
	removed = false
}

function boat.on_rightclick(self, clicker)
	if not clicker or not clicker:is_player() then
		return
	end
	local name = clicker:get_player_name()
	if self.driver and clicker == self.driver then
		self.driver = nil
		clicker:set_detach()
		default.player_attached[name] = false
		default.player_set_animation(clicker, "stand" , 30)
	elseif not self.driver then
		self.driver = clicker
		clicker:set_attach(self.object, "", {x = 0, y = 11, z = -3}, {x = 0, y = 0, z = 0})
		default.player_attached[name] = true
		minetest.after(0.2, function()
			default.player_set_animation(clicker, "sit" , 30)
		end)
		self.object:setyaw(clicker:get_look_yaw() - math.pi / 2)
	end
end

function boat.on_activate(self, staticdata, dtime_s)
	self.object:set_armor_groups({immortal = 1})
	if staticdata then
		self.v = tonumber(staticdata)
	end
	self.last_v = self.v
end

function boat.get_staticdata(self)
	return tostring(self.v)
end

function boat.on_punch(self, puncher, time_from_last_punch, tool_capabilities, direction)
	if not puncher or not puncher:is_player() or self.removed then
		return
	end
	if self.driver and puncher == self.driver then
		self.driver = nil
		puncher:set_detach()
		default.player_attached[puncher:get_player_name()] = false
	end
	if not self.driver then
		self.removed = true
		-- delay remove to ensure player is detached
		minetest.after(0.1, function()
			self.object:remove()
		end)
		if not minetest.setting_getbool("creative_mode") then
			puncher:get_inventory():add_item("main", "boats:boat")
		end
	end
end

function boat.on_step(self, dtime)
	self.v = get_v(self.object:getvelocity()) * get_sign(self.v)
	if self.driver then
		local ctrl = self.driver:get_player_control()
		local yaw = self.object:getyaw()
		if ctrl.up then
			self.v = self.v + 0.1
		elseif ctrl.down then
			self.v = self.v - 0.1
		end
		if ctrl.left then
			if self.v < 0 then
				self.object:setyaw(yaw - (1 + dtime) * 0.03)
			else
				self.object:setyaw(yaw + (1 + dtime) * 0.03)
			end
		elseif ctrl.right then
			if self.v < 0 then
				self.object:setyaw(yaw + (1 + dtime) * 0.03)
			else
				self.object:setyaw(yaw - (1 + dtime) * 0.03)
			end
		end
	end
	local velo = self.object:getvelocity()
	if self.v == 0 and velo.x == 0 and velo.y == 0 and velo.z == 0 then
		self.object:setpos(self.object:getpos())
		return
	end
	local s = get_sign(self.v)
	self.v = self.v - 0.02 * s
	if s ~= get_sign(self.v) then
		self.object:setvelocity({x = 0, y = 0, z = 0})
		self.v = 0
		return
	end
	if math.abs(self.v) > 4.5 then
		self.v = 4.5 * get_sign(self.v)
	end

	local p = self.object:getpos()
	p.y = p.y - 0.5
	local new_velo = {x = 0, y = 0, z = 0}
	local new_acce = {x = 0, y = 0, z = 0}
	if not is_water(p) then
		local nodedef = minetest.registered_nodes[minetest.get_node(p).name]
		if (not nodedef) or nodedef.walkable then
			self.v = 0
			new_acce = {x = 0, y = 1, z = 0}
		else
			new_acce = {x = 0, y = -9.8, z = 0}
		end
		new_velo = get_velocity(self.v, self.object:getyaw(), self.object:getvelocity().y)
		self.object:setpos(self.object:getpos())
	else
		p.y = p.y + 1
		if is_water(p) then
			local y = self.object:getvelocity().y
			if y >= 4.5 then
				y = 4.5
			elseif y < 0 then
				new_acce = {x = 0, y = 20, z = 0}
			else
				new_acce = {x = 0, y = 5, z = 0}
			end
			new_velo = get_velocity(self.v, self.object:getyaw(), y)
			self.object:setpos(self.object:getpos())
		else
			new_acce = {x = 0, y = 0, z = 0}
			if math.abs(self.object:getvelocity().y) < 1 then
				local pos = self.object:getpos()
				pos.y = math.floor(pos.y) + 0.5
				self.object:setpos(pos)
				new_velo = get_velocity(self.v, self.object:getyaw(), 0)
			else
				new_velo = get_velocity(self.v, self.object:getyaw(), self.object:getvelocity().y)
				self.object:setpos(self.object:getpos())
			end
		end
	end
	self.object:setvelocity(new_velo)
	self.object:setacceleration(new_acce)
end

minetest.register_entity("boats:boat", boat)

minetest.register_craftitem("boats:boat", {
	description = "Boat",
	inventory_image = "boat_inventory.png",
	wield_image = "boat_wield.png",
	wield_scale = {x = 2, y = 2, z = 1},
	liquids_pointable = true,

	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.type ~= "node" then
			return
		end
		if not is_water(pointed_thing.under) then
			return
		end
		pointed_thing.under.y = pointed_thing.under.y + 0.5
		minetest.add_entity(pointed_thing.under, "boats:boat")
		if not minetest.setting_getbool("creative_mode") then
			itemstack:take_item()
		end
		return itemstack
	end,
})

minetest.register_craft({
	output = "boats:boat",
	recipe = {
		{"",           "",           ""          },
		{"group:wood", "",           "group:wood"},
		{"group:wood", "group:wood", "group:wood"},
	},
})
]]--
