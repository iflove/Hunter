.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback$1;
.super Ljava/lang/Object;
.source "DynamicReleaseSyncCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;

    .line 89
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;->a:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_SYNC:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->trigDynamicRelease(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V

    .line 93
    return-void
.end method
