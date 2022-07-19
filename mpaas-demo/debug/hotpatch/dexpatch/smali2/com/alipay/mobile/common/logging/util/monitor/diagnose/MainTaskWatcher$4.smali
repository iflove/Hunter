.class Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$4;
.super Ljava/lang/Object;
.source "MainTaskWatcher.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->println(Ljava/lang/String;)V
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

    .line 292
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$4;->this$0:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$4;->this$0:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->i:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->access$202(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;Z)Z

    .line 297
    return v1
.end method
