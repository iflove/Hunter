.class final Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl$a;
.super Landroid/content/BroadcastReceiver;
.source "MpaasTrafficMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl$a;->a:Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;

    .line 188
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl$a;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    const-string v1, "com.mpaas.monitor.traffic.broadcast.ACTION_SEND_TRAFFIC"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v0, "traffic"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    const/4 v1, 0x0

    .line 195
    .local v1, "traffic":Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl$a;->a:Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;->a(Lcom/alipay/android/phone/mobilesdk/monitor/traffic/MpaasTrafficMonitorImpl;Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V

    .line 199
    .end local v1    # "traffic":Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;
    :cond_0
    return-void
.end method
