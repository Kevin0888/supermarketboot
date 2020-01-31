
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>manager</title>
</head>
<script type="text/javascript" src="/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

    function to_add_member() {
        $("#manager_fm").attr('action', '/supermarket/addMember');
        $("#manager_fm").submit();
    }
</script>
<body>

<div align="center">
    <h1>会员管理</h1>
    <hr>
</div>
<form id="manager_fm"  method="post">
    <div id="add_member" align="center">
        <label>会员卡号</label><input type="text" id="member_id" name="id"/>
        <label>姓&#12288&#12288名</label><input type="text" id="member_name" name="name"/>
        <br>
        <label>电&#12288&#12288话</label><input type="text" id="phone" name="phone"/>
        <label>积&#12288&#12288分</label><input type="text" id="points" name="points"/>
        <br>
        <label>余&#12288&#12288额</label><input type="text" id="total" name="total"/>
        <br>
        <br>
        <input type="button" id="add_btn" value="添加" onclick="to_add_member()"/>
        <input type="button" id="cancel_btn" value="取消" onclick=""/>
        <br>
        <hr>
    </div>
    <table align="center" width="80%" border="1px" cellpadding="0" cellspacing="0">
        <thead>
        <tr>
        <tr>
            <th>会员卡号</th>
            <th>姓名</th>
            <th>电话</th>
            <th>积分</th>
            <th>余额</th>
        </tr>
        </tr>
        </thead>
        <tbody>
        <#list members as item>
            <tr>
                <td align="center">${item.id}</td>
                <td align="center">${item.name}</td>
                <td align="center">${item.phone}</td>
                <td align="center">${item.points}</td>
                <td align="center">${item.total}</td>
            </tr>
        </#list>
        </tbody>
    </table>
</form>
</body>
</html>
