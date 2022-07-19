.class final Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager$1;
.super Ljava/lang/Object;
.source "LogStrategyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->asyncRequestLogConfig(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    .line 756
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager$1;->c:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    iput-object p2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 759
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager$1;->c:Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager$1;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager$1;->b:Z

    # invokes: Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->syncRequestLogConfig(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->access$000(Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;Ljava/lang/String;Z)V

    .line 760
    return-void
.end method
