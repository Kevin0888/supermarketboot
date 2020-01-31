
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>commodity</title>
</head>
<script type="text/javascript" src="/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    function to_add_commodities() {

        $("#commodity_fm").attr('action', '/supermarket/inputCommodities');
        $("#commodity_fm").submit();

    }
</script>
<body>

<div align="center">
    <h1>进货管理</h1>
    <hr>
</div>
<div align="right">
    登录时间 ：<label>${.now}</label>
    <hr>
</div>
<form id="commodity_fm" method="post">
    <div id="add_commodity" align="center">
        <label>商品条码</label><input type="text" id="commodity_id" name="commodityId"/>
        <label>商品名称</label><input type="text" id="commodity_name" name="name"/>
        <br>
        <label>规格等级</label><input type="text" id="specification" name="specification"/>
        <label>单&#12288&#12288位</label><input type="text" id="units" name="units"/>
        <br>
        <label>数&#12288&#12288量</label><input type="text" id="stock" name="stock"/>
        <label>售&#12288&#12288价</label><input type="text" id="price" name="price"/>
        <br>
        <br>
        <input type="button" id="add_btn" value="入库" onclick="to_add_commodities()"/>
        <input type="button" id="cancel_btn" value="取消" onclick=""/>
    </div>
    <br>
    <hr>
    <table width="80%" border="1px" cellpadding="0" cellspacing="0" align="center">
        <thead>
        <tr>
            <th>商品条码</th>
            <th>商品名称</th>
            <th>规格等级</th>
            <th>单位</th>
            <th>当前库存</th>
            <th>零售价</th>
        </tr>
        </thead>
        <tbody>
        <#list commodities as item>
            <tr>
                <td align="center">${item.id?c}</td>
                <td align="center">${item.name}</td>
                <td align="center">${item.specification}</td>
                <td align="center">${item.units}</td>
                <td align="center">${item.stock}</td>
                <td align="center">${item.price?number?string(',##0.00')}</td>
            </tr>
        </#list>
        </tbody>

    </table>
    <br>
</form>
</body>
</html>
