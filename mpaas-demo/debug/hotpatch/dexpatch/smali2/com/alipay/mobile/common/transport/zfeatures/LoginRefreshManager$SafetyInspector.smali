.class Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;
.super Ljava/lang/Object;
.source "LoginRefreshManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SafetyInspector"
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;
    .param p2, "loginRefreshManager"    # Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    .line 274
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;->this$0:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    .line 276
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    # getter for: Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->access$000(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    # getter for: Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->access$100(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 283
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    # invokes: Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->f()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->access$200(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)V

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    # getter for: Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->access$000(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    # getter for: Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->access$100(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    # invokes: Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->b()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->access$300(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)V

    .line 291
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    # invokes: Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->d()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->access$400(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    return-void

    .line 295
    :catchall_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "LoginRefreshManager"

    const-string v2, "SafetyInspector. execute error. "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
