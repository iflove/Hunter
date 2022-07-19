.class Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$3;
.super Ljava/lang/Object;
.source "MainTaskWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->stop(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

.field final synthetic val$sectionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    .line 204
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$3;->this$0:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    iput-object p2, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$3;->val$sectionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$3;->this$0:Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher$3;->val$sectionName:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->b(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->access$400(Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;Ljava/lang/String;)V

    .line 208
    return-void
.end method
