.class final Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$3;
.super Ljava/lang/Object;
.source "AppHealthHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    .line 385
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;Z)V

    .line 389
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;)V

    .line 390
    return-void
.end method
