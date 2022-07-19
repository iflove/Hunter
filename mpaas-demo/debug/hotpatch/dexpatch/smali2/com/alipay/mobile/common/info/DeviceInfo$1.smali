.class Lcom/alipay/mobile/common/info/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/info/DeviceInfo;->refreashUtDid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/info/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/info/DeviceInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/info/DeviceInfo;

    .line 283
    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo$1;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 287
    const-string v0, "DeviceInfo"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "start refreashUtDid"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo$1;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$100(Lcom/alipay/mobile/common/info/DeviceInfo;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/utdid2/device/UTDevice;->getUtdidForUpdate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$002(Lcom/alipay/mobile/common/info/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo$1;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$000(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->setmDid(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "end refreashUtDid"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    goto :goto_0

    .line 291
    :catchall_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
