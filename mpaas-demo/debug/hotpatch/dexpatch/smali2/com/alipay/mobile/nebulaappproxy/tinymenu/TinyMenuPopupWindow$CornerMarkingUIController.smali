.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;
.super Ljava/lang/Object;
.source "TinyMenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CornerMarkingUIController"
.end annotation


# instance fields
.field private mCornerMarkingDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V
    .locals 0

    .line 1068
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;
    .param p2, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$1;

    .line 1068
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)V

    return-void
.end method


# virtual methods
.method public interceptClickEventForCornerMarking(Landroid/view/View;)Z
    .locals 7
    .param p1, "itemView"    # Landroid/view/View;

    .line 1105
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1106
    return v0

    .line 1108
    :cond_0
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_item_corner_marking:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;

    const/4 v2, 0x0

    move-object v3, v2

    .line 1109
    .local v3, "cornerMarkingView":Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 1110
    return v0

    .line 1112
    :cond_1
    invoke-virtual {v3}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;

    if-nez v1, :cond_2

    .line 1113
    return v0

    .line 1115
    :cond_2
    invoke-virtual {v3}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;

    .line 1116
    .local v1, "data":Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    .line 1117
    .local v5, "appId":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1118
    return v0

    .line 1120
    :cond_3
    const-string v0, "TinyMenuPopupWindow"

    const-string v4, "intercept click event for corner marking"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->mCornerMarkingDataList:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 1122
    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1124
    :cond_4
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;

    invoke-direct {v4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;-><init>()V

    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->noticeId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;->click(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->toJavaScript()Ljava/lang/String;

    move-result-object v4

    .line 1126
    .local v4, "javaScript":Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1128
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 1131
    :cond_5
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->setTag(Ljava/lang/Object;)V

    .line 1132
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1133
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1134
    .local v0, "index":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    if-ltz v0, :cond_6

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1135
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenus:Ljava/util/List;
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->inflateMenuItemView(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Landroid/view/View;)V
    invoke-static {v2, v6, p1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1900(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuItemData;Landroid/view/View;)V

    .line 1138
    .end local v0    # "index":I
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setDataProvider(Ljava/util/List;)V
    .locals 0
    .param p1, "dataProvider"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;",
            ">;)V"
        }
    .end annotation

    .line 1074
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->mCornerMarkingDataList:Ljava/util/List;

    .line 1075
    return-void
.end method

.method public syncCornerMarkingDataToUI()V
    .locals 10

    .line 1078
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->mCornerMarkingDataList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->mCornerMarkingDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;

    .line 1082
    .local v1, "item":Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;
    move-object v1, v6

    iget-object v6, v6, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->mid:Ljava/lang/String;

    .line 1083
    .local v2, "mid":Ljava/lang/String;
    move-object v2, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1086
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$CornerMarkingUIController;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mMenuItemViewByMid:Ljava/util/Map;
    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1700(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1087
    .local v3, "itemView":Landroid/view/View;
    move-object v3, v6

    if-eqz v6, :cond_1

    .line 1090
    sget v6, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_item_badge:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .line 1091
    .local v4, "badgeView":Lcom/alipay/mobile/antui/badge/AUBadgeView;
    move-object v4, v6

    if-eqz v6, :cond_2

    .line 1092
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    .line 1094
    :cond_2
    sget v6, Lcom/alipay/mobile/nebulaappproxy/R$id;->menu_item_corner_marking:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;

    .line 1095
    .local v5, "cornerMarkingView":Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;
    move-object v5, v6

    if-eqz v6, :cond_4

    .line 1096
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->setVisibility(I)V

    .line 1097
    invoke-virtual {v5, v1}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->setTag(Ljava/lang/Object;)V

    .line 1098
    iget-object v7, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->superscript:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->superscript:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-le v7, v8, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->superscript:Ljava/lang/String;

    const/4 v9, 0x4

    .line 1099
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->superscript:Ljava/lang/String;

    .line 1098
    :goto_1
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    .end local v1    # "item":Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;
    .end local v2    # "mid":Ljava/lang/String;
    .end local v3    # "itemView":Landroid/view/View;
    .end local v4    # "badgeView":Lcom/alipay/mobile/antui/badge/AUBadgeView;
    .end local v5    # "cornerMarkingView":Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;
    :cond_4
    goto :goto_0

    .line 1102
    :cond_5
    return-void

    .line 1079
    :cond_6
    :goto_2
    return-void
.end method
