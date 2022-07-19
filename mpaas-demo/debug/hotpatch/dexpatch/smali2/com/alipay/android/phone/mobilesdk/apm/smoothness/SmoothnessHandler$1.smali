.class final Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SmoothnessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 37
    if-nez p2, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-static {p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;->d(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRHandler;->b()V

    .line 45
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->onUserLeave()V

    .line 47
    :cond_1
    return-void
.end method
