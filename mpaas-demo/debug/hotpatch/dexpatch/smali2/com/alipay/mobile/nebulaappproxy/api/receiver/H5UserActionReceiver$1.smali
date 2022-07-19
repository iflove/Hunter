.class Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5UserActionReceiver$1;
.super Ljava/lang/Object;
.source "H5UserActionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5UserActionReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5UserActionReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5UserActionReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5UserActionReceiver;

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5UserActionReceiver$1;->a:Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5UserActionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "H5UserActionReceiver"

    .line 55
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5ClearPackageUtil;->clearUnusedAppPackage()V

    .line 61
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppInfoUploadUtil;->uploadAllAppInfo()V

    .line 64
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWifi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v2, 0x0

    .line 66
    .local v2, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    const-string v3, "h5_user_leave_config"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 68
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const/4 v3, 0x1

    .line 69
    .local v3, "checkDownloadDay":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    const-string v4, "checkDownloadDay"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 73
    :cond_0
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5UserActionReceiver;->a(I)V

    .line 75
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "configService":Lcom/alipay/mobile/base/config/ConfigService;
    .end local v3    # "checkDownloadDay":I
    return-void

    .line 76
    :cond_1
    const-string/jumbo v1, "not in wifi  not checkDownloadTime"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_2
    const-string v1, "is not isBackgroundRunning"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
