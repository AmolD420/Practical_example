var API_Path = "https://localhost:44395/api/";

function CallAjaxAsync(type, FuncSuccess, FuncError, url, param) {
    if (param != '') {
        param = JSON.stringify(param)
    }
    $.ajax({
        type: type,
        url: url,
        data: param,
        async: true,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: FuncSuccess,
        error: FuncError
    });
}

$(document).ready(function () {
    GetPlanData();
    GetProductDetails();
    $('#ddlPlant').change(function () {
        debugger;
        if ($('#ddlPlant').val() != 0) {
            var objParam = {};
            id = parseInt($('#ddlPlant').val());
            CallAjaxAsync("GET", onSuccessMachineData, APIError, API_Path + "Common/GetPlantMachine?id=" + id + "", objParam);
        }
    });
});
function GetPlanData() {
    var objParam = {};
    CallAjaxAsync("GET", onSuccessPlanData, APIError, API_Path + "Common/GetPlantName", objParam);
}
function onSuccessPlanData(data) {
    $('#ddlPlant').append('<option value="0">Select</option>');
    if (data.length > 0) {
        jQuery.each(data, function (i, val) {
            $('#ddlPlant').append('<option value="' + val.id + '">' + val.name + '</option>');
        });
    }
}

function onSuccessMachineData(data) {
    debugger;
    var dataval = data;
    if (data.length > 0) {
        $('#ddlPlantMachine').empty();
        $('#ddlPlantMachine').append('<option value="0">Select</option>');
        jQuery.each(data, function (i, val) {
            $('#ddlPlantMachine').append('<option value="' + val.id + '">' + val.name + '</option>');
        });
    }
}
function GetProductDetails() {
    debugger;
    var objParam = {};
    CallAjaxAsync("GET", onSuccessData, APIError, API_Path + "Common/GetProductDetails", objParam);
}
function onSuccessData(data) {
    debugger;
    var dataval = data;
    if (dataval.length > 0) {
        strHtml = "";
        jQuery.each(data, function (i, val) {
            strHtml = strHtml + '<tr><td>' + val.name + '</td >';

            if (val.fieldType.toLowerCase() == "textbox") {
                if (val.id == 1) {
                    for (var i = 1; i < 17; i++) {
                        strHtml = strHtml + '<td><input type="text" class="form-control numeric" maxlength="2" onkeyup="return isNumber(event,this,5,11)" title="Enter only Minimum 5 and Maximum 11 value."/></td>';
                    }
                }
                else if (val.id == 2) {
                    for (var i = 1; i < 17; i++) {
                        strHtml = strHtml + '<td><input type="text" class="form-control decimal" maxlength="3" onkeyup="return isNumberDecimal(event,this,5.5,10.5)" title="Enter only Minimum 5.5 and Maximum 10.5 value."/></td>';
                    }
                }
                else {
                    for (var i = 1; i < 17; i++) {
                        strHtml = strHtml + '<td><input type="text" class="form-control alphanumeric" maxlength="3" onkeypress="return isAlphanumericVal(event)" title="Enter only alphanumeric values."/></td>';
                    }
                }
                strHtml = strHtml + '</tr>';
            }
            else if (val.fieldType.toLowerCase() == "toggleswitch") {
                for (var i = 1; i < 17; i++) {
                    if (val.value1 == "0" && i==1)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value1 == "1" && i == 1)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value2 == "0" && i == 2)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value2 == "1" && i == 2)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value3 == "0" && i == 3)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value3 == "1" && i == 3)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value4 == "0" && i == 4)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value4 == "1" && i == 4)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value5 == "0" && i == 5)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value5 == "1" && i == 5)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value6 == "0" && i == 6)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value6 == "1" && i == 6)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value7 == "0" && i == 7)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value7 == "1" && i == 7)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value8 == "0" && i == 8)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value8 == "1" && i == 8)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value9 == "0" && i == 9)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value9 == "1" && i == 9)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value10 == "0" && i == 10)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value10 == "1" && i == 10)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value11 == "0" && i == 11)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value11 == "1" && i == 11)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value12 == "0" && i == 12)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value12 == "1" && i == 12)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value13 == "0" && i == 13)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value13 == "1" && i == 13)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value14 == "0" && i == 14)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value14 == "1" && i == 14)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value15 == "0" && i == 15)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value15 == "1" && i == 15)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                    else if (val.value16 == "0" && i == 16)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox"><span class="slider round"></span></label ></td>';
                    else if (val.value16 == "1" && i == 16)
                        strHtml = strHtml + '<td><label class="switch"><input type="checkbox" checked><span class="slider round"></span></label ></td>';
                }
                strHtml = strHtml + '</tr>';
            }
        });
        $('.tblData').append(strHtml);
    } else {
        $('.tblData').append('<tr><td colspan="17">No Records Found!</td></tr>');
        $('.tblData').css("text-align", "center");
    }

}
function isNumber(event, thisval, min, max) {
    //paste event
    var currentval = $(thisval).val();
    if (event.type === "paste") {
        event.preventDefault();
        $(thisval).css("border-color", "");
    } else {

        if (event.which < 48 || event.which > 57) {
            event.preventDefault();
            $(thisval).val('');
            $(thisval).css("border-color", "");
        }
        else if (currentval < min || currentval > max) {
            $(thisval).css("border-color", "red");
        } else {
            $(thisval).css("border-color", "");
        }
    }

};
function isNumberDecimal(evt, thisval, min, max) {
    var self = $(thisval)
    self.val(self.val().replace(/[^0-9\.]/g, ''));
    if ((evt.which != 46 || self.val().indexOf('.') != -1) && (evt.which < 48 || evt.which > 57)) {
        evt.preventDefault();
        $(thisval).css("border-color", "");
    } else if (self.val() < min || self.val() > max) {
        $(thisval).css("border-color", "red");
    } else {
        $(thisval).css("border-color", "");
    }

}
function isAlphanumericVal(e) {
    var regex = new RegExp("^[a-zA-Z0-9]+$");
    var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
    if (regex.test(str)) {
        return true;
    }

    e.preventDefault();
    return false;
};
function ValidateNumRange(evt, value, min, max) {
    if (parseInt(value) < min || isNaN(value))
        return true;
    else if (parseInt(value) > max) {
        $(evt).css("border-color", "red");
        return false
    }
    else return false;
}
//*ends - number range validation
function APIError(data) {

}