.class final Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a$1;
.super Ljava/lang/Object;
.source "AbstractWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    .line 29
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->c()V

    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;)I

    move-result v0

    const/16 v1, 0xb4

    if-le v0, v1, :cond_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->b()V

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->b(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;)I

    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->c(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->d(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->e(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    :cond_2
    return-void
.end method
