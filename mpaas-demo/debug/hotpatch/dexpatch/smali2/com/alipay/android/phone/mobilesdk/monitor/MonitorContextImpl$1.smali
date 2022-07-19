.class final Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "MonitorContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;

    .line 86
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 89
    invoke-static {p2}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->a(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
