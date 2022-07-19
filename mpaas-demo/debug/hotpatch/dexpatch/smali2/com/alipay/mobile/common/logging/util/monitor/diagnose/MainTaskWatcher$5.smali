.class Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$5;
.super Ljava/lang/Object;
.source "MainTaskWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->clearAllCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    .line 498
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$5;->this$0:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$5;->this$0:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    # invokes: Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->a()V
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->access$500(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;)V

    .line 502
    return-void
.end method
