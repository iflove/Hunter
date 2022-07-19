.class final Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;
.super Ljava/lang/Object;
.source "MainThreadSensitiveWatcher.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;

    .line 34
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;)V
    .locals 2
    .param p1, "delicious"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;

    .line 38
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1$1;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method
