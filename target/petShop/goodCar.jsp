<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020-01-14
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <meta charset="utf-8" />
    <title>jQuery购物车</title>
</head>
<link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-3.3.4.css">
<style lang="scss">
    .shopping-car-container {
        padding: 50px 40px;
    }

    .shopping-car-container .car-headers-menu {
        border-bottom: 1px solid #f5f5f5;
        padding: 0 15px;
    }

    .shopping-car-container .panel-body {
        padding: 15px 0;
    }

    #checkAll {
        vertical-align: text-bottom;
    }

    .shopping-car-container .car-menu {
        text-align: center;
    }
    /*
     商品区
     * */

    .shopping-car-container .goods-content {
        margin-top: 15px;
    }

    .shopping-car-container .goods-content .goods-item {
        margin-top: 20px;
    }

    .shopping-car-container .goods-content .goods-item .car-goods-info {
        height: 150px;
        display: flex;
        align-items: center;
        justify-content: center;
        overflow: hidden;
    }

    .shopping-car-container .goods-content .goods-item .goods-image-column img,
    .shopping-car-container .goods-content .goods-item .goods-image-column span {
        display: block;
        float: left;
    }

    .shopping-car-container .goods-content .goods-item .goods-image-column span {
        width: calc(100% - 100px);
        box-sizing: border-box;
        text-indent: 2rem;
        line-height: 25px;
        padding: 10px;
    }

    .goods-price {
        color: red;
        font-weight: bolder;
    }

    .form-control {
        text-align: center;
    }

    .single-total {
        color: red;
        font-weight: bold;
    }

    .goods-params {
        color: darkgray;
    }

    .bottom-menu {
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .bottom-menu #checkAllBottom {
        vertical-align: text-bottom;
    }

    #deleteMulty {
        color: cornflowerblue;
        cursor: pointer;
        vertical-align: text-bottom;
    }

    .bottom-menu-include {
        background: #e5e5e5;
    }

    #selectGoodsCount {
        color: orangered;
        font-size: 16px;
        font-weight: bolder;
    }

    #selectGoodsMoney {
        color: orangered;
        font-size: 16px;
        font-weight: bolder;
    }

    .panel-default .submitData {
        background: orangered;
        font-size: 16px;
        color: white;
        cursor: pointer;
        font-weight: bolder;
        height: 58px;
        position: absolute;
        right: 0;
        top: 0;
    }

    .panel-default .submitDis {
        background: #B0B0B0;
        cursor: no-drop;
    }

    .shopping-car-container .panel-default {
        position: relative;
    }
    .back{
        text-align: center;
        color: white;
        background-color: red;
        float: right;
        border: 1px solid red;
        width: 60px;
        margin-top: 5px;
        height: 30px;
        line-height: 30px;
        cursor: pointer;
    }

</style>

<body>
<div class="shopping-car-container">
    <div class="car-headers-menu">
        <div class="row">
            <div class="col-md-1 car-menu">
                <label><input type="checkbox" id="check-goods-all" /><span id="checkAll">全选</span></label>
            </div>
            <div class="col-md-3 car-menu">商品信息</div>
            <div class="col-md-3 car-menu">商品参数</div>
            <div class="col-md-1 car-menu">单价</div>
            <div class="col-md-1 car-menu">数量</div>
            <div class="col-md-1 car-menu">金额</div>
            <div class="col-md-2 car-menu">操作</div>
        </div>
    </div>
    <div class="goods-content">
        <!--goods display-->
    </div>
    <div class="panel panel-default">
        <div class="panel-body bottom-menu-include">
            <div class="col-md-1 check-all-bottom bottom-menu">
                <label>
                    <input type="checkbox" id="checked-all-bottom" />
                    <span id="checkAllBottom">全选</span>
                </label>
            </div>
            <div class="col-md-1 bottom-menu">
						<span id="deleteMulty">
								删除
						</span>
            </div>
            <div class="col-md-6 bottom-menu">

            </div>
            <div class="col-md-2 bottom-menu">
                <span>已选商品 <span id="selectGoodsCount">0</span> 件</span>
            </div>
            <div class="col-md-1 bottom-menu">
                <span>合计：<span id="selectGoodsMoney">0.00</span></span>
            </div>
            <div class="col-md-1 bottom-menu submitData submitDis">
                结算
            </div>
        </div>
    </div>
    <span onclick="window.history.back()" class="back">返回</span>
    <!--删除确认弹框-->
    <div class="modal fade" tabindex="-1" role="dialog" id="deleteItemTip" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                </div>
                <div class="modal-body">
                    确认删除此商品？
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary deleteSure">确定</button>
                </div>
            </div>
        </div>
    </div>
    <!--是否勾选商品提示-->
    <div class="modal fade" tabindex="-1" role="dialog" id="selectItemTip" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                </div>
                <div class="modal-body">
                    请选择要删除的商品！
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
                </div>
            </div>
        </div>
    </div>
    <!--批量删除商品-->
    <div class="modal fade" tabindex="-1" role="dialog" id="deleteMultyTip" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                </div>
                <div class="modal-body">
                    确认删除选择的商品！
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary deleteMultySure">确定</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="https://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
<script type="text/javascript">
    var goodsList = [{
        id: 1234567876,
        imgUrl: 'img/other/other3.jpg',
        goodsInfo: '号地块健身房回复的科技示范户快速坚实的看了看大家发快递了很费劲的开始放假',
        goodsParams: '四季度后付款的酸辣粉',
        price: 199,
        goodsCount: 1,
        singleGoodsMoney: 199
    },
        {
            id: 145564876,
            imgUrl: 'img/other/other4.jpg',
            goodsInfo: '号地块健身房回复的科技示范户快速坚实的看了看大家发快递了很费劲的开始放假',
            goodsParams: '四季度后付款的酸辣粉',
            price: 299,
            goodsCount: 2,
            singleGoodsMoney: 598
        },
        {
            id: 1234564876,
            imgUrl: 'img/other/other5.jpg',
            goodsInfo: '号地块健身房回复的科技示范户快速坚实的看了看大家发快递了很费劲的开始放假',
            goodsParams: '块电费简单来说记录',
            price: 399,
            goodsCount: 1,
            singleGoodsMoney: 399
        },
        {
            id: 12345623876,
            imgUrl: 'img/other/other1.jpg',
            goodsInfo: '号地块健身房回复的科技示范户快速坚实的看了看大家发快递了很费劲的开始放假',
            goodsParams: '块电费简单来说记录',
            price: 399,
            goodsCount: 1,
            singleGoodsMoney: 399
        }
    ]
    var deleteGoods = null
    loadGoods()

    function loadGoods() {
        $.each(goodsList, function(i, item) {
            var goodsHtml = '<div class="goods-item">' +
                '<div class="panel panel-default">' +
                '<div class="panel-body">' +
                '<div class="col-md-1 car-goods-info">' +
                '<label><input type="checkbox" class="goods-list-item"/></label>' +
                '</div>' +
                '<div class="col-md-3 car-goods-info goods-image-column">' +
                '<img class="goods-image" src="' + item.imgUrl + '" style="width: 100px; height: 100px;" />' +
                '<span id="goods-info">' +
                item.goodsInfo +
                '</span>' +
                '</div>' +
                '<div class="col-md-3 car-goods-info goods-params">' + item.goodsParams + '</div>' +
                '<div class="col-md-1 car-goods-info goods-price"><span>￥</span><span class="single-price">' + item.price + '</span></div>' +
                '<div class="col-md-1 car-goods-info goods-counts">' +
                '<div class="input-group">' +
                '<div class="input-group-btn">' +
                '<button type="button" class="btn btn-default car-decrease">-</button>' +
                '</div>' +
                '<input type="text" class="form-control goods-count" value="' + item.goodsCount + '">' +
                '<div class="input-group-btn">' +
                '<button type="button" class="btn btn-default car-add">+</button>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '<div class="col-md-1 car-goods-info goods-money-count"><span>￥</span><span class="single-total">' + item.singleGoodsMoney + '</span></div>' +
                '<div class="col-md-2 car-goods-info goods-operate">' +
                '<button type="button" class="btn btn-danger item-delete">删除</button>' +
                '</div>' +
                '</div>' +
                '</div>' +
                '</div>'
            $('.goods-content').append(goodsHtml)
        })
    }

    function ShoppingCarObserver(elInput, isAdd) {
        if(elInput) {
            this.elInput = elInput
            this.parents = this.elInput.parents('.goods-item')
            this.count = parseInt(this.elInput.val())
            this.singlePrice = parseFloat(this.parents.find('.single-price').text())
        }
        if (isAdd) {
            this.isAdd = isAdd
        }
        this.computeGoodsMoney = function() { //计算商品价格
            var moneyCount = this.count * this.singlePrice
            var singleTotalEl = this.parents.find('.single-total')
            console.log(moneyCount)
            singleTotalEl.empty().append(moneyCount)
        }
        this.showCount = function() { // 计算商品选中数量
            var isChecked = this.parents.find('.goods-list-item')[0].checked
            var GoodsTotalMoney = parseFloat($('#selectGoodsMoney').text())
            var goodsTotalCount = parseInt($('#selectGoodsCount').text())
            if(this.elInput) {
                if(this.isAdd) {
                    ++this.count
                    if(isChecked) {
                        $('#selectGoodsMoney').empty().append(GoodsTotalMoney + this.singlePrice)
                        $('#selectGoodsCount').empty().append(goodsTotalCount + 1)
                    }
                } else {
                    if(parseInt(this.count) <= 1) {
                        return
                    } else {
                        --this.count
                        if(isChecked) {
                            $('#selectGoodsMoney').empty().append(GoodsTotalMoney - this.singlePrice)
                            $('#selectGoodsCount').empty().append(goodsTotalCount - 1)
                        }
                    }
                }
                this.elInput.val(this.count)
            }
        }
        this.checkIsAll = function() { //全选
            var checkLen = $('.goods-list-item:checked').length
            if(checkLen > 0) {
                $('.submitData').removeClass('submitDis')
            } else {
                $('.submitData').addClass('submitDis')
            }
            if($('.goods-item').length === checkLen && checkLen > 0) {
                $('#checked-all-bottom, #check-goods-all').prop('checked', true)
            } else {
                $('#checked-all-bottom, #check-goods-all').prop('checked', false)
            }
        }
        this.checkedChange = function(isChecked) { //选中状态改变， isChecked为选中状态
            if(isChecked === undefined) {
                var isChecked = this.parents.find('.goods-list-item')[0].checked
            }
            var itemTotalMoney = parseFloat(this.parents.find('.single-total').text())
            var GoodsTotalMoney = parseFloat($('#selectGoodsMoney').text())
            var itemCount = parseInt(this.parents.find('.goods-count').val())
            var goodsTotalCount = parseInt($('#selectGoodsCount').text())
            if(isChecked) {
                $('#selectGoodsMoney').empty().append(itemTotalMoney + GoodsTotalMoney)
                $('#selectGoodsCount').empty().append(itemCount + goodsTotalCount)
            } else {
                if(GoodsTotalMoney - itemTotalMoney === 0) {
                    $('#selectGoodsMoney').empty().append('0.00')
                    if(!$('.submitData').hasClass('submitDis')) {
                        $('.submitData').addClass('submitDis')
                    }
                } else {
                    $('#selectGoodsMoney').empty().append(GoodsTotalMoney - itemTotalMoney)
                }
                $('#selectGoodsCount').empty().append(goodsTotalCount - itemCount)
            }
        }
        this.deleteGoods = function() { //删除商品
            var isChecked = this.parents.find('.goods-list-item')[0].checked
            if(isChecked) {
                this.checkedChange(false)
            }
            this.parents.remove()
            this.checkOptions()
        }
        this.checkOptions = function() {
            if($('#check-goods-all')[0].checked) {
                if($('.goods-list-item').length <= 0) {
                    $('#checked-all-bottom, #check-goods-all').prop('checked', false)
                }
            } else {
                this.checkIsAll()
            }
        }
    }

    function checkedAll(_this) {
        if($('.goods-item').length <= 0) {
            $('.submitData').addClass('submitDis')
        } else {
            $('.submitData').removeClass('submitDis')
        }
        for(var i = 0; i < $('.goods-item').length; i++) {
            var elInput = $('.goods-item').eq(i).find('.goods-list-item')
            var isChecked = $('.goods-item').eq(i).find('.goods-list-item')[0].checked
            var checkAllEvent = new ShoppingCarObserver(elInput, null)
            if(_this.checked) {
                if(!isChecked) {
                    elInput.prop('checked', true)
                    checkAllEvent.checkedChange(true)
                }
            } else {
                if(!$('.submitData').hasClass('submitDis')) {
                    $('.submitData').addClass('submitDis')
                }
                if(isChecked) {
                    elInput.prop('checked', false)
                    checkAllEvent.checkedChange(false)
                }
            }
        }
    }
    $('#check-goods-all').on('change', function() {
        if(this.checked) {
            $('#checked-all-bottom').prop('checked', true)
        } else {
            $('#checked-all-bottom').prop('checked', false)
        }
        checkedAll(this)
    })
    $('#checked-all-bottom').on('change', function() {
        if(this.checked) {
            $('#check-goods-all').prop('checked', true)
        } else {
            $('#check-goods-all').prop('checked', false)
        }
        checkedAll(this)
    })
    $('.goods-list-item').on('change', function() {
        var tmpCheckEl = $(this)
        var checkEvent = new ShoppingCarObserver(tmpCheckEl, null)
        checkEvent.checkedChange()
        checkEvent.checkIsAll()
    })
    $('.goods-content').on('click', '.car-decrease', function() {
        var goodsInput = $(this).parents('.input-group').find('.goods-count')
        var decreaseCount = new ShoppingCarObserver(goodsInput, false)
        decreaseCount.showCount()
        decreaseCount.computeGoodsMoney()
    })
    $('.goods-content').on('click', '.car-add', function() {
        var goodsInput = $(this).parents('.input-group').find('.goods-count')
        var addCount = new ShoppingCarObserver(goodsInput, true)
        addCount.showCount()
        addCount.computeGoodsMoney()
    })
    $('.goods-content').on('click', '.item-delete', function() {
        var goodsInput = $(this).parents('.goods-item').find('.goods-list-item')
        deleteGoods = new ShoppingCarObserver(goodsInput, null)
        $('#deleteItemTip').modal('show')
    })
    $('.deleteSure').on('click', function() {
        if(deleteGoods !== null) {
            deleteGoods.deleteGoods()
        }
        $('#deleteItemTip').modal('hide')
    })
    $('#deleteMulty').on('click', function() {
        if($('.goods-list-item:checked').length <= 0) {
            $('#selectItemTip').modal('show')
        } else {
            $('#deleteMultyTip').modal('show')
        }
    })
    $('.deleteMultySure').on('click', function() {
        for(var i = 0; i < $('.goods-list-item:checked').length; i++) {
            var multyDelete = new ShoppingCarObserver($('.goods-list-item:checked').eq(i), null)
            multyDelete.deleteGoods()
            i--
        }
        var checkCount = new ShoppingCarObserver()
        checkCount.checkOptions()
        $('#deleteMultyTip').modal('hide')
    })
</script>

</html>
