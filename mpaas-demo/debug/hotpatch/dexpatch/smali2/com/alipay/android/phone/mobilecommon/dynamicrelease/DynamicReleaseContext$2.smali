.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$2;
.super Ljava/lang/Object;
.source "DynamicReleaseContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->processRpcLimit(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    .line 217
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$2;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processRpcLimit : delay="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/HotPatchUtils;->sDelay:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/HotPatchUtils;->sDelay:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b;

    .line 222
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$2;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->e:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_BACKGROUND:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->trigDynamicRelease(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V

    .line 224
    return-void
.end method
