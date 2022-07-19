.class Lcom/alipay/mobile/common/info/DeviceInfo$2;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/info/DeviceInfo;->generateUtDid()V
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

    .line 315
    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo$2;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo$2;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->mDidGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$200(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo$2;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$100(Lcom/alipay/mobile/common/info/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/UtdidHelper;->isTemp(Landroid/content/Context;)Z

    move-result v0

    .line 320
    .local v0, "temp":Z
    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo$2;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$100(Lcom/alipay/mobile/common/info/DeviceInfo;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "did":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo$2;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEMP-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    # setter for: Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$002(Lcom/alipay/mobile/common/info/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo$2;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$000(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->setmDid(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo$2;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->mDidGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$200(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo$2;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$300(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 325
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/common/info/DeviceInfo$2;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$300(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 326
    monitor-exit v2

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
