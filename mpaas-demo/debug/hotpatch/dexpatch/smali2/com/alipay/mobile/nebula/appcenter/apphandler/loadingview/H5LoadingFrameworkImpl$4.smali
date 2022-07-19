.class Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$4;
.super Ljava/lang/Object;
.source "H5LoadingFrameworkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->update(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

.field final synthetic val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    .line 216
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$4;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$4;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 220
    .local v1, "map":Ljava/util/Map;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$4;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    const-string v3, "UPDATE_APPEARANCE_LOADING_TEXT"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$4;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$4;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->slogan:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u672c\u5c0f\u7a0b\u5e8f\u7531\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$4;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->slogan:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\u63d0\u4f9b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UPDATE_APPEARANCE_LOADING_BOTTOM_TIP"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$4;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->setLoadingInfo(Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$400(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;Ljava/util/Map;)V

    .line 225
    return-void
.end method
