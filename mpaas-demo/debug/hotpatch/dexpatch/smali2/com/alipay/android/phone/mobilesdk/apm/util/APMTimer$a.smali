.class final Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer$a;
.super Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
.source "APMTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 34
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    .line 35
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer$a;->b:Ljava/lang/Runnable;

    .line 38
    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 40
    .local p1, "name":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer$a;->a(Ljava/lang/String;)V

    .line 42
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 49
    :cond_0
    return-void
.end method
