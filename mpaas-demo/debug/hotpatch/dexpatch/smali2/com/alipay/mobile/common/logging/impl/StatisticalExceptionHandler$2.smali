.class final Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$2;
.super Ljava/lang/Object;
.source "StatisticalExceptionHandler.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/util/perf/EventTrigger$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$2;->a:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    const-string v0, "clientLaunchFinish"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$2;->a:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->ensureCrashSdk()V

    .line 108
    :cond_0
    return-void
.end method
