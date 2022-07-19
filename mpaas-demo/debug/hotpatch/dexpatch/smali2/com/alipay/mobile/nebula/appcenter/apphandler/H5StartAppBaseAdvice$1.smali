.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;
.super Ljava/lang/Object;
.source "H5StartAppBaseAdvice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;

.field final synthetic val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;

    .line 147
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 151
    const-string v0, "appId"

    const-string v1, "Advice.syncApp"

    const/4 v2, 0x0

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    sget-object v4, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_SyncApp:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 153
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    sget-object v4, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_SyncApp:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 155
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 154
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    sget-object v4, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Resource_Sync_Count:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 157
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getSyncCount()I

    move-result v5

    .line 156
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->syncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v3

    .line 161
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "H5StartAppAdvice"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    throw v3
.end method
