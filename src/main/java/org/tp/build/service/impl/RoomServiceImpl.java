package org.tp.build.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.tp.build.entity.Room;
import org.tp.build.mapper.RoomMapper;
import org.tp.build.service.RoomService;

@Service
public class RoomServiceImpl extends ServiceImpl<RoomMapper, Room> implements RoomService {
}
