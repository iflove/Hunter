.class Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;
.super Ljava/lang/Object;
.source "TaskExecutorManager.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDoneObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    .line 504
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;->this$0:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .line 509
    return-void
.end method
