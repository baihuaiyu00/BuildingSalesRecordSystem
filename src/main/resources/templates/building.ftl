<!DOCTYPE html>
<html>
<head>
    <title>房屋信息</title>
    <style>

        body {
            font-size: 1.2em;
            color: #333;
            font-family: "黑体", Arial, sans-serif;
        }
        .navbar {
            background-color: #2196f3;
            padding: 0.5em;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .navbar select {
            width: 100%;
            padding: 0.6em;
            background-color: #2196f3;
            border: none;
            font-size: 2.2em;
            color: white;
            appearance: none; /* 移除默认样式 */
            -webkit-appearance: none;
            -moz-appearance: none;
        }
        .navbar select::-ms-expand {
            display: none; /* 移除IE浏览器默认箭头 */
        }
        @media only screen and (max-width: 480px) {
            .navbar {
                flex-direction: column;
            }
        }
        .building {
            display: flex;
            flex-wrap: wrap;
            /*justify-content: center;*/
            margin-bottom: 1em;
        }
        .room {
            width: calc(25% - 1em);;
            height: 8em;
            background-color: #e6e6e6;
            margin: 0.5em;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.2em;
            border-radius: 0.5em;
            flex-direction: column;
        }
        .room label {
            display: block;
        }
        .room-car {
            width: calc(25% - 1em);;
            height: 10em;
            background-color: #e6e6e6;
            margin: 0.5em;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.2em;
            border-radius: 0.5em;
            flex-direction: column;
        }
        .room-car label{
            display: block;
            padding: .5em 0;
            text-align: center;
        }
        .room-car-name {
            font-family: Arial, sans-serif;
            font-weight: bold;
            font-size: 1.6em;
        }
        #roomBox {
            /* 添加点击效果 */
            transition: background-color 0.3s;
            cursor: pointer;
        }

        #roomBox:hover {
            /* 鼠标悬停时的背景色 */
            background-color: #f0f0f0; /* 可根据需要调整颜色 */
        }

        .roomName {
            font-family: Arial, sans-serif;
            font-weight: bold;
            font-size: 1.6em;
        }

    /*  change status  */
        .centered-container {
            position: fixed;
            top: 25%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            padding: 20px;
            max-width: 80%;
            text-align: center;

            /* 新增代码，增大div尺寸 */
            width: 90%; /* 添加宽度 */
            max-height: 70%; /* 添加最大高度 */
            overflow-y: auto; /* 添加纵向滚动条 */
        }

        .option-container {
            flex-wrap: wrap;
            justify-content: space-between;
            margin-bottom: .5em;
        }

        .option {
            display: flex;
            align-items: center;
            padding: .5em;
            font-size: 2em;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
        }

        .button-container button {
            flex: 1;
            margin: 0 5px;
            height: 3em;
            font-size: 1.5em;
            background-color: #006fff;
            color: #fff;
            border-radius: 1em;
        }

        .button-container button:hover {
            background-color: #7dc4f5;
        }

        .option-container label {
            margin-left: 5px;
        }

        input[type="radio"] {
            margin: 0;
        }

        .refresh {
            width: 100%;
            height: 4em;
            font-size: 2em;
            background-color: #2196f3;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
            font-weight: bold;
            border-radius: 2em;
        }

        .refresh:hover {
            background-color: #1976d2;
        }

        .refresh:active {
            background-color: #0d47a1;
        }

    </style>
</head>
<body>
<div class="navbar">
    <select id="selectBuilding" title="selectBuilding">
        <option value="1" <#if buildNumber == 1>selected</#if>>1幢</option>
        <option value="2" <#if buildNumber == 2>selected</#if>>2幢</option>
        <option value="3" <#if buildNumber == 3>selected</#if>>3幢</option>
        <option value="4" <#if buildNumber == 4>selected</#if>>4幢</option>
        <option value="5" <#if buildNumber == 5>selected</#if>>5幢</option>
        <option value="6" <#if buildNumber == 6>selected</#if>>6幢</option>
        <option value="7" <#if buildNumber == 7>selected</#if>>7幢</option>
        <option value="8" <#if buildNumber == 8>selected</#if>>8幢</option>
        <option value="9" <#if buildNumber == 9>selected</#if>>9幢</option>
        <option value="10" <#if buildNumber == 10>selected</#if>>10幢</option>
        <option value="11" <#if buildNumber == 11>selected</#if>>11幢</option>
        <option value="12" <#if buildNumber == 12>selected</#if>>12幢</option>
        <option value="13" <#if buildNumber == 13>selected</#if>>13幢</option>
        <option value="14" <#if buildNumber == 14>selected</#if>>14幢</option>
        <option value="15" <#if buildNumber == 15>selected</#if>>15幢</option>
        <option value="16" <#if buildNumber == 16>selected</#if>>16幢</option>
        <option value="17" <#if buildNumber == 17>selected</#if>>17幢</option>



        <option value="18" <#if buildNumber == 18>selected</#if>>1幢-车库</option>
        <option value="19" <#if buildNumber == 19>selected</#if>>2幢-车库</option>
        <option value="20" <#if buildNumber == 20>selected</#if>>3幢-车库</option>
        <option value="21" <#if buildNumber == 21>selected</#if>>4幢-车库</option>
        <option value="22" <#if buildNumber == 22>selected</#if>>5幢-车库</option>
        <option value="23" <#if buildNumber == 23>selected</#if>>6幢-车库</option>
        <option value="24" <#if buildNumber == 24>selected</#if>>7幢-车库</option>
        <option value="25" <#if buildNumber == 25>selected</#if>>8幢-车库</option>
        <option value="26" <#if buildNumber == 26>selected</#if>>9幢-车库</option>
        <option value="27" <#if buildNumber == 27>selected</#if>>10幢-车库</option>
        <option value="28" <#if buildNumber == 28>selected</#if>>11幢-车库</option>
        <option value="29" <#if buildNumber == 29>selected</#if>>12幢-车库</option>
        <option value="30" <#if buildNumber == 30>selected</#if>>13幢-车库</option>
        <option value="31" <#if buildNumber == 31>selected</#if>>14幢-车库</option>
        <option value="32" <#if buildNumber == 32>selected</#if>>15幢-车库</option>
        <option value="33" <#if buildNumber == 33>selected</#if>>16幢-车库</option>
        <option value="34" <#if buildNumber == 34>selected</#if>>17幢-车库</option>
    </select>
</div>
<div class="building">
    <#list roomList as item>
        <#if item.buildNumber < 18>
            <div class="room" onclick="updateStatus('${item.roomName}')"
                 <#if item.status == 0>style="background-color: #e6e6e6;"
                     <#elseif item.status == 1>style="background-color: #ffc400;color: #fff;"
                     <#elseif item.status == 2>style="background-color: rgba(207, 14, 236, 0.62);color: #fff;"
                 </#if>>
                <label class="roomName">${item.roomName}</label>
                <label>
                    <#-- 带看人 -->
                    <#if item.viewUser?has_content>
                        ${item.viewUser}
                    <#else>
                    </#if>
                    <#-- 房屋状态 -->
                    <#if item.status == 0>空闲中
                     <#elseif item.status == 1>看房中
                     <#elseif item.status == 2>已预订
                     </#if>
                </label>
            </div>
        <#else >
            <div class="room-car" onclick="updateStatus('${item.roomName}')"
                 <#if item.status == 0>style="background-color: #e6e6e6;"
                 <#elseif item.status == 1>style="background-color: #ffc400;color: #fff;"
                 <#elseif item.status == 2>style="background-color: rgba(207, 14, 236, 0.62);color: #fff;"
                 </#if>>
                <label class="room-car-name">${item.roomName}</label>
                <label>
                    <#-- 带看人 -->
                    <#if item.viewUser?has_content>
                        ${item.viewUser}
                    <#else>
                    </#if>
                    <#-- 车库状态 -->
                    <#if item.status == 0>空闲中
                    <#elseif item.status == 1>带看中
                    <#elseif item.status == 2>已预订
                    </#if>
                </label>
            </div>
        </#if>
    </#list>
</div>
<div class="refresh">
    <label>操作前请手动刷新</label>
</div>

<!-- HTML代码 -->
<div id="selectDiv" class="centered-container" style="display: none;">
    <div class="option-container" id="option-container">
        <div class="option">
            <input type="radio" id="option1" name="option" value="0">
            <label for="option1">带看结束（空闲中）</label>
        </div>
        <div class="option">
            <input type="radio" id="option2" name="option" value="1">
            <label for="option2">带看</label>
        </div>
        <div class="option">
            <input type="radio" id="option3" name="option" value="2">
            <label for="option3">预定成功</label>
        </div>
    </div>
    <div class="button-container">
        <button id="confirmButton">确认</button>
        <button id="cancelButton">取消</button>
    </div>
</div>

</body>
<script>
    // 获取刷新按钮的引用
    const refreshButton = document.querySelector('.refresh');
    const refreshSuccess = refreshButton.querySelector('#refreshSuccess');

    // 给刷新按钮绑定点击事件
    refreshButton.addEventListener('click', function() {
        // 刷新页面
        const xhr = new XMLHttpRequest();
        const selectElement = document.getElementById('selectBuilding');
        selectElement.value
        xhr.open('GET', '/roomList?buildNumber=' + encodeURIComponent(selectElement.value));
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                window.location.href = xhr.responseURL; // 从响应中获取跳转的URL
            }
        };
        xhr.send();
    });
</script>
<script>
    // 获取select元素
    const selectElement = document.getElementById('selectBuilding');
    // 监听change事件
    selectElement.addEventListener('change', function() {
        // 获取选中的值
        const selectedValue = this.value;
        const xhr = new XMLHttpRequest();
        xhr.open('GET', '/roomList?buildNumber=' + encodeURIComponent(selectedValue));
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                window.location.href = xhr.responseURL; // 从响应中获取跳转的URL
            }
        };
        xhr.send();
    });
</script>

<script>
    function updateStatus(roomId) {
        console.log("updateStatus:"+roomId)
        // 显示隐藏的div
        const selectDiv = document.getElementById('selectDiv');
        selectDiv.style.display = 'block';

        // 获取选择框和确认按钮的引用
        const selectOptions = document.getElementById('option-container');
        const confirmButton = document.getElementById('confirmButton');
        const cancelButton = document.getElementById('cancelButton');

        // 给确认按钮绑定点击事件
        confirmButton.addEventListener('click', function() {
            // 获取选中的选项的索引值
            const selectedOption = selectOptions.querySelector('input[name="option"]:checked');
            const selectedIndex = selectedOption.value;


            // 通过索引值传递给后端
            sendRequest(roomId, selectedIndex.toString());

            // 隐藏div
            selectDiv.style.display = 'none';
        });

        cancelButton.addEventListener('click', function() {
            selectDiv.style.display = 'none';
        });

        console.log("updateStatus done")
    }

    function sendRequest(roomId, option) { // 添加roomId参数
        const xhr = new XMLHttpRequest();
        // 修改请求参数为roomId和option
        const selectBuilding = document.getElementById('selectBuilding'); // 根据`id`获取`<select>`元素
        console.log("roomNumber:"+roomId); // 打印`value`值
        console.log("buildNumber:"+selectBuilding.value); // 打印`value`值
        xhr.open('GET', '/updateRoomStatus?roomNumber=' + encodeURIComponent(roomId) + '&buildNumber=' + selectBuilding.value + '&status=' + encodeURIComponent(option));
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                window.location.href = xhr.responseURL; // 从响应中获取跳转的URL
            }
        };
        xhr.send();
    }

</script>
</html>


