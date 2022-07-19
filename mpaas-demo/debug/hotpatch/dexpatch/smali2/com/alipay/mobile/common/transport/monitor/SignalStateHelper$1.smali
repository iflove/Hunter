.class Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$1;
.super Ljava/lang/Object;
.source "SignalStateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    .line 106
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$1;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$1;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$InnerPhoneStateListener;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$1;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$InnerPhoneStateListener;-><init>(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)V

    # setter for: Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->b:Landroid/telephony/PhoneStateListener;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->access$002(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$1;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    # getter for: Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->a:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->access$100(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$1;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    # getter for: Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->b:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->access$000(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 111
    return-void
.end method
