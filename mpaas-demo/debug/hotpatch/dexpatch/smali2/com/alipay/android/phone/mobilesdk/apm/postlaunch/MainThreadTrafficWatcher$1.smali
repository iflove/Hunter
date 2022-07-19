.class final Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$1;
.super Ljava/lang/Object;
.source "MainThreadTrafficWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->println(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    .line 58
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$1;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    iput-wide p2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 61
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$1;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$1;->a:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;-><init>(JJ)V

    .line 62
    .local v0, "data":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$1;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->b(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$1;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->c(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$1;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->d(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;)Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$1;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->d(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;)Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

    move-result-object v1

    iput-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->e:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$1;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;)Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

    .line 68
    return-void
.end method
