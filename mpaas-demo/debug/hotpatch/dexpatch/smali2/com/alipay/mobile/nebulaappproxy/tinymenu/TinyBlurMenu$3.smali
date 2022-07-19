.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;
.super Ljava/lang/Object;
.source "TinyBlurMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->init(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalAppId:Ljava/lang/String;

.field final synthetic val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field final synthetic val$optionContainer:Landroid/view/ViewGroup;

.field final synthetic val$rpcData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 546
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->val$finalAppId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->val$rpcData:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->val$optionContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "TinyBlurMenu"

    .line 549
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v1, "menuList":Ljava/util/List;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 552
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->menuStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$1200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 553
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->menuStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$1200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->val$finalAppId:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->parseRpcData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$1300(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 555
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 561
    goto :goto_0

    .line 557
    :catchall_0
    move-exception v2

    .line 558
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 560
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    const/4 v4, 0x0

    # setter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isMenuRpcSuccess:Z
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$1402(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Z)Z

    .line 563
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isMenuRpcSuccess:Z
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$1400(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->val$rpcData:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 564
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getHostAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "userId":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->val$rpcData:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 567
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;->val$rpcData:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuUtils;->putRpcDataCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 570
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "userId":Ljava/lang/String;
    :catchall_1
    move-exception v3

    goto :goto_2

    .line 572
    :cond_1
    :goto_1
    goto :goto_3

    .line 571
    .local v2, "e":Ljava/lang/Throwable;
    :goto_2
    const-string/jumbo v3, "menu cache failed"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    move-object v0, v1

    .line 575
    .local v0, "finalMenuList":Ljava/util/List;
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$3;Ljava/util/List;)V

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 610
    return-void
.end method
