.class final Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$2;
.super Ljava/lang/Object;
.source "MonitorContextImpl.java"

# interfaces
.implements Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;

.field final synthetic b:Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;

    .line 108
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$2;->b:Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$2;->a:Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptTimeTicksMadly()V
    .locals 0

    .line 113
    return-void
.end method

.method public final getBundleByClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$2;->a:Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
