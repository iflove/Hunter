.class final Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher$1;
.super Ljava/lang/Object;
.source "HomePageRenderWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;

    .line 22
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/HomePageRenderWatcher;Ljava/util/concurrent/atomic/AtomicLong;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    return-void
.end method
