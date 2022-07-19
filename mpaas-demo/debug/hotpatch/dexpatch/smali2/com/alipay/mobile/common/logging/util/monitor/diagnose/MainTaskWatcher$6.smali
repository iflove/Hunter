.class Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$6;
.super Ljava/lang/Object;
.source "MainTaskWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->shutdown()V
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

    .line 528
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$6;->this$0:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$6;->this$0:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    # invokes: Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b()V
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->access$600(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;)V

    .line 532
    return-void
.end method
