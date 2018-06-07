<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>allBooksManger</title>
    <link href="${pageContext.request.contextPath}/css/base.css"
          type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/tab.css"
          type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/item.css"
          type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/item_do.css"
          type="text/css" rel="stylesheet">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/uploadify.css"
          type="text/css">
</head>
<link rel="stylesheet" type="text/css"
      href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
      href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript"
        src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/jquery.uploadify.v2.0.3.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/swfobject.js"></script>

<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/common.js"></script>

</head>
<body style="margin:1px;" id="ff">
<table id="dg" title="书籍信息管理" class="easyui-datagrid" pagination="true"
       rownumbers="true" fit="true" data-options="pageSize:10"
       url="${pageContext.request.contextPath}/book/listAll.do" toolbar="#tb">
    <thead data-options="frozen:true">
    <tr>
        <th field="cb" checkbox="true" align="center"></th>
        <th field="id" width="10" align="center" hidden="true">编号</th>
        <th field="subtitle" width="10" align="center" hidden="true">副标题</th>
        <th field="title" width="110" align="center">书名</th>
        <th field="author" width="70" align="center">作者</th>
        <th field="isbn" width="120" align="center">ISBN码</th>
        <th field="path" width="100" align="center" formatter="formatProPic">图片</th>
        <th field="marketPrice" width="70" align="center">市场价</th>
        <th field="pages" width="50" align="center">页数</th>
        <th field="publisher" width="120" align="center">出版社</th>
        <th field="binding" width="10" align="center" hidden="true">装订方式</th>
        <th field="hot" width="10" align="center" hidden="true">热度值</th>
        <th field="status" width="55" align="center"
            formatter="formatStatus">上架状态
        </th>
        <th field="supply" width="50" align="center">库存</th>
    </tr>
    </thead>
</table>
<div id="tb">
    <div>
        <a href="javascript:openBookAddDialog()" class="easyui-linkbutton"
           iconCls="icon-add" plain="true">添加</a> <a
            href="javascript:openBookModifyDialog()"
<<<<<<< HEAD
<<<<<<< HEAD
            class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a> <a
            href="javascript:deleteBook()" class="easyui-linkbutton"
            iconCls="icon-remove" plain="true">删除</a>
=======
            class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a><%-- <a
            href="javascript:deletePicture()" class="easyui-linkbutton"
            iconCls="icon-remove" plain="true">删除</a>--%>
>>>>>>> 885672411e49830e23c530542af763b8a444048e
=======
            class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a><%-- <a
            href="javascript:deletePicture()" class="easyui-linkbutton"
            iconCls="icon-remove" plain="true">删除</a>--%>
>>>>>>> 885672411e49830e23c530542af763b8a444048e
    </div>

    <div>
        &nbsp;标题：&nbsp;<input type="text" id="biaoti" size="20"
                              onkeydown="if(event.keyCode==13) searchBook()"/>&nbsp;&nbsp;作者：&nbsp;<input
            type="text" id="zuozhe" size="20"
            onkeydown="if(event.keyCode==13) searchBook()"/>&nbsp;
        &nbsp;ISBN码：&nbsp;<input type="text" id="bianma" size="20"
                                 onkeydown="if(event.keyCode==13) searchBook()"/>&nbsp; <a
            href="javascript:searchBook()" class="easyui-linkbutton"
            iconCls="icon-search" plain="true">搜索</a>
    </div>
</div>


<div id="dlg" class="easyui-dialog"
     style="width: 600px;height:350px;padding: 10px 20px; position: relative; z-index:1000;"
     closed="true" buttons="#dlg-buttons">
    <form id="fm" method="post" enctype="multipart/form-data">
        <table cellspacing="8px">
            <tr>
                <td>标题：</td>
                <td><input type="text" id="title" name="title"
                           class="easyui-validatebox" required="true"/>
                </td>
                <td>作者：</td>
                <td><input type="text" id="author" name="author"
                           class="easyui-validatebox" required="true"/>
                </td>
            </tr>
            <tr>
                <td>ISBN码 ：</td>
                <td><input type="text" id="isbn" name="isbn"
                           class="easyui-validatebox" required="true"/>
                </td>
                <td>图片路径：</td>
                <td><input type="text" id="path" name="path"
                           class="easyui-validatebox" required="true"/>
                </td>
            </tr>
            <tr>
                <td>市场价：</td>
                <td><input type="text" id="marketPrice" name="marketPrice"
                           class="easyui-validatebox" required="true"/>
                </td>
                <td>页数：</td>
                <td><input type="text" id="pages" name="pages"
                           class="easyui-validatebox" required="true"/>
                </td>
            </tr>
            <tr>
                <td>出版社：</td>
                <td><input type="text" id="publisher" name="publisher"
                           class="easyui-validatebox" required="true"/>
                </td>
                <td>状态：</td>
                <td><input type="text" id="status" name="status"
                           class="easyui-validatebox" required="true"/>
                </td>
            </tr>
            <tr>
                <td>库存：</td>
                <td><input type="text" id="supply" name="supply"
                           class="easyui-validatebox" required="true"/>
                </td>
            </tr>
        </table>
    </form>
</div>

<div id="dlg-buttons">
    <a href="javascript:saveBook()" class="easyui-linkbutton"
       iconCls="icon-ok">保存</a> <a href="javascript:closeBookDialog()"
                                   class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
</div>

<div id="dlg_c" class="easyui-dialog"
     style="width: 300px;height:450px;padding: 10px 20px; position: relative; z-index:1000;"
     closed="true" buttons="#dlg_c-buttons">
    <form id="fm_c" method="post">
        <table cellspacing="8px" id="tab">
        </table>
    </form>
</div>

</body>
<script type="text/javascript">
    var url;

    function searchBook() {
        $("#dg").datagrid('load', {
            "title": $("#biaoti").val(),
            "author": $("#zuozhe").val(),
            "isbn": $("#bianma").val(),
        });
    }

    function openBookAddDialog() {
        $("#dlg").dialog("open").dialog("setTitle", "添加书籍");
        var html = '<img name="uploadify2" id="uploadify2"  type="file" />';
        $('#book').append(html);
        var imghtml = '<img src="images/back.jpg" width="110" height="110" id="img11"  style="display:none;"/><input type="text" id="input11" name="path" value="" style="display:none;" />';
        $('#book11').append(imghtml);
        //initUploadify();
        url = "${pageContext.request.contextPath}/book/save.do";
    }

    function openBookModifyDialog() {
        var selectedRows = $("#dg").datagrid('getSelections');
        if (selectedRows.length != 1) {
            $.messager.alert("系统提示", "请选择一条要编辑的数据！");
            return;
        }
        var row = selectedRows[0];
        var html = '<img name="uploadify2" id="uploadify2"  type="file" />';
        $('#book').append(html);
        var imghtml = '<img src="images/back.jpg" width="110" height="110" id="img11"  style="display:none;"/><input type="text" id="input11" name="path" value="' + row.path + '" style="display:none;" />';
        $('#book11').append(imghtml);

        //initUploadify();
        $("#dlg").dialog("open").dialog("setTitle", "修改信息");
        $('#fm').form('load', row);
        url = "${pageContext.request.contextPath}/book/save.do?id="
            + row.id;
    }


    function saveBook() {
        $("#fm").form("submit", {
            url: url,
            onSubmit: function () {
                return $(this).form("validate");
            },
            success: function (result) {
                if (result.success) {
                    $.messager.alert("系统提示", "保存成功");
                    $("#dlg").dialog("close");
                    $("#dg").datagrid("reload");
                    //  resetValue();
                } else {
                    $.messager.alert("系统提示", "保存失败");
                    window.location.reload();
                    return;
                }
            }
        });
    }

<<<<<<< HEAD
<<<<<<< HEAD

    function deleteBook() {
        var selectedRows = $("#dg").datagrid('getSelections');
        if (selectedRows.length == 0) {
            $.messager.alert("系统提示", "请选择要删除的数据！");
            return;
        }
        var strIds = [];
        for (var i = 0; i < selectedRows.length; i++) {
            strIds.push(selectedRows[i].id);
        }
        var ids = strIds.join(",");
        $.messager.confirm("系统提示", "您确认要删除这<font color=red>"
            + selectedRows.length + "</font>条数据吗？", function (r) {
            if (r) {
                $.post("${pageContext.request.contextPath}/book/delete.do",
                    {
                        ids: ids
                    }, function (result) {
                        if (result.success) {
                            $.messager.alert("系统提示", "数据已成功删除！");
                            $("#dg").datagrid("reload");
                        } else {
                            $.messager.alert("系统提示", "数据删除失败！");
                        }
                    }, "json");
            }
        });

    }

=======
>>>>>>> 885672411e49830e23c530542af763b8a444048e
=======
>>>>>>> 885672411e49830e23c530542af763b8a444048e
    function closeBookDialog() {
        $("#dlg").dialog("close");
        //  resetValue();
    }

    function resetValue() {
        $("#desc").val("");
        $("#path").val("");
        $('#picture').find('img').remove();
        $('#pic11').find('input').remove();
        $('#pic11').find('img').remove();
    }

    function openbookInfoPage(id) {
        window.parent.openTab('书籍摆放信息', 'storeInfo.jsp?id=' + id,
            'icon-shujias');
    }

    function formatProPic(val, row) {
        return "<img width=80 height=110 src='../" + val + "'>";
    }

    function formatStatus(val, row) {
        if (row.status == 1)
            return "<div style='color:red;'>已上架</div>";
        else
            return "<div style='color:gray;'>未上架</div>";
    }


    function initUploadify() {
        $("#uploadify2").uploadify({
            'uploader': 'swf/uploadify2.swf', 			//flash文件的相对路径
            'script': '../loadimg/upload.do',  				//后台处理程序的路径
            'fileDataName': 'file', 						//设置上传文件名称,默认为Filedata
            'cancelImg': 'images/cancel.png', 			//每一个文件上的关闭按钮图标
            'queueID': 'div_progress', 					//文件队列的ID，该ID与存放文件队列的div的ID一致
            'queueSizeLimit': 1, 							//当允许多文件生成时，设置选择文件的个数，默认值：999
            'fileDesc': '*.jpg;*.gif;*.png;*.ppt;*.pdf;*.jpeg', 	//用来设置选择文件对话框中的提示文本
            'fileExt': '*.jpg;*.gif;*.png;*.ppt;*.pdf;*.jpeg', 		//设置可以选择的文件的类型
            'auto': true, 								//设置为true当选择文件后就直接上传了，为false需要点击上传按钮才上传
            'multi': true, 								//设置为true时可以上传多个文件
            'simUploadLimit': 1, 						//允许同时上传的个数 默认值：1
            'sizeLimit': 2048000,						//上传文件的大小限制
            'buttonText': '上传图片',						//浏览按钮的文本，默认值：BROWSE
            'displayData': 'percentage',     			//上传队列显示的数据类型，percentage是百分比，speed是上传速度
            //回调函数
            'onComplete': function (evt, queueID, fileObj, response, data) {
                $("#img11").attr("src", "../" + response);
                $("#input11").val(response);
                $("#book11").removeAttr("style");
                $("#img11").removeAttr("style");
                return false;
            },
            'onError': function (event, queueID, fileObj, errorObj) {
                if (errorObj.type === "File Size") {
                    alert("文件最大为3M");
                    $("#uploadify").uploadifyClearQueue();
                }
            },
            'onQueueFull': function (event, queueSizeLimit) {
                alert("最多上传" + queueSizeLimit + "张图片");
                return false;
            }
        });
    }
</script>
</html>