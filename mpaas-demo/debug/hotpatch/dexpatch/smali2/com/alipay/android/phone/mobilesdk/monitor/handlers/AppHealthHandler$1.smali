.class final Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$1;
.super Ljava/lang/Object;
.source "AppHealthHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    .line 94
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$1;->b:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler$1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/AppHealthHandler;->a(Ljava/lang/String;I)V

    .line 99
    return-void
.end method
