.class Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "FgBgMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->registerScreenReceiverIfNot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    .line 115
    iput-object p1, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$1;->this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 118
    if-eqz p2, :cond_1

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$1;->this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    # invokes: Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->notifyScreenInteractive()V
    invoke-static {v0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->access$000(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;)V

    return-void

    .line 121
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$1;->this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    # invokes: Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->notifyScreenUninteractive()V
    invoke-static {v0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->access$100(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;)V

    .line 125
    :cond_1
    return-void
.end method
