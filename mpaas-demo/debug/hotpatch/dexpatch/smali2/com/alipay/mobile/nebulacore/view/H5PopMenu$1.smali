.class Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;
.super Ljava/lang/Object;
.source "H5PopMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/view/H5PopMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 57
    .local v2, "tag":Ljava/lang/Object;
    move-object v2, v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 58
    return-void

    .line 60
    :cond_1
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 62
    .local v0, "position":I
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v3, v3, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    move-object v4, v1

    .line 63
    .local v4, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    move-object v4, v3

    const-string v5, "-1"

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->setRedDotNum(Ljava/lang/String;)V

    .line 64
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 65
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v3

    iget-object v5, v4, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v3, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v3, v4, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    const-string v5, "tag"

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v3, v4, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    const-string v5, "title"

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v3, v3, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v5, "url"

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-boolean v3, v3, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->f:Z

    if-eqz v3, :cond_2

    .line 70
    const-string v3, "popMenuType"

    const-string v5, "popmenu"

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->a:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v3, v3, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v5, "h5ToolbarMenuBt"

    invoke-interface {v3, v5, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 73
    return-void
.end method
