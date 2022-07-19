.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor$1;
.super Ljava/lang/Object;
.source "HotpatchProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->applyHotpatch(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;

.field final synthetic val$final_delaySetNeedRestart:Z

.field final synthetic val$final_delayTrigKillProcess:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;

    .line 404
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;

    iput-boolean p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor$1;->val$final_delaySetNeedRestart:Z

    iput-boolean p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor$1;->val$final_delayTrigKillProcess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 407
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor$1;->val$final_delaySetNeedRestart:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->setNeedRestart(Landroid/content/Context;Z)V

    .line 410
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor$1;->val$final_delayTrigKillProcess:Z

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->a:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->resumeKillProcess()Z

    .line 413
    :cond_1
    return-void
.end method
