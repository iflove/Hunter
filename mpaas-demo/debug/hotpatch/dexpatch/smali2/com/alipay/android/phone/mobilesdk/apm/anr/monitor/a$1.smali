.class final Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a$1;
.super Ljava/lang/Object;
.source "TimeOuter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;

    .line 14
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/a;->a()V

    .line 18
    return-void
.end method
