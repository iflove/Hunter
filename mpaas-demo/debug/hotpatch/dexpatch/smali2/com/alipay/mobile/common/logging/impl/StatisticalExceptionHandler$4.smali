.class final Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$4;
.super Ljava/lang/Object;
.source "StatisticalExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->ensureCrashSdk()V
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

    .line 559
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$4;->a:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$4;->a:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;Z)V

    .line 563
    return-void
.end method
