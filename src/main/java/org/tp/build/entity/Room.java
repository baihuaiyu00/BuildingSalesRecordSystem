package org.tp.build.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName(value = "room")
public class Room {

    @TableId(type = IdType.AUTO)
    private Long id;

    private Long buildNumber;

    private String roomName;

    private String viewUser;

    private Long status;





}
