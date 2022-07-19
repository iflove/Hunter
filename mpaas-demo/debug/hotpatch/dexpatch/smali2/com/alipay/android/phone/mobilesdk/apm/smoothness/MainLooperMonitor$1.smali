.class final Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$1;
.super Ljava/lang/Object;
.source "MainLooperMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 156
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)V

    .line 160
    return-void
.end method
