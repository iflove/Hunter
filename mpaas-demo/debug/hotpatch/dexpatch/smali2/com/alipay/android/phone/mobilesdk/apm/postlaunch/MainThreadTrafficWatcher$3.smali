.class final Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$3;
.super Ljava/lang/Object;
.source "MainThreadTrafficWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    .line 130
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$3;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 133
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$3;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->removeMessageLogging(Landroid/util/Printer;)V

    .line 134
    return-void
.end method
