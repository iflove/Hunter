.class Lcom/alipay/mobile/common/os/LoggingLifecycleCallback$1;
.super Landroid/content/BroadcastReceiver;
.source "LoggingLifecycleCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/common/os/LoggingLifecycleCallback$1;->this$0:Lcom/alipay/mobile/common/os/LoggingLifecycleCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 33
    if-nez p2, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->setForeground(Z)V

    .line 41
    :cond_1
    return-void
.end method
