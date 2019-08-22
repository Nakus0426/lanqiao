function loadVendor(ele) {
    const mgrSelect = $('#'+ele);
    $.get('loadVen.do',{},function (res) {
        res.forEach((ven, i) => {
            const option = '<option value="' + ven.venId + '">' + ven.venName + '</option>';
            mgrSelect.append(option);
        });

    },'json')

}


function loadStock(ele) {
    const mgrSelect = $('#'+ele);
    $.get('loadStock.do',{},function (res) {
        res.forEach((ven, i) => {
            const option = '<option value="' + ven.stkId + '">' + ven.stkName + '</option>';
            mgrSelect.append(option);
        });

    },'json')

}



