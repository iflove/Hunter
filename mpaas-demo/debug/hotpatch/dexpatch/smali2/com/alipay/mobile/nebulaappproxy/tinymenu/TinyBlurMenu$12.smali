.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$12;
.super Ljava/lang/Object;
.source "TinyBlurMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->showPopMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 1706
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$12;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1710
    const/4 v0, 0x0

    .line 1712
    .local v0, "recentUseApps":Ljava/util/List;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$12;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getRecentUseTinyAppList()Lcom/alibaba/fastjson/JSONArray;
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$3200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 1713
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuFunctionModel;->transfer(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 1716
    goto :goto_0

    .line 1714
    :catchall_0
    move-exception v1

    .line 1715
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "TinyBlurMenu"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1717
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    move-object v1, v0

    .line 1718
    .local v1, "finalRecentUseApps":Ljava/util/List;
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$12$1;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$12$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$12;Ljava/util/List;)V

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 1724
    return-void
.end method
