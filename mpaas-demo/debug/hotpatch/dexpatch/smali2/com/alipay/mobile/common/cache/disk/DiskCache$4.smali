.class Lcom/alipay/mobile/common/cache/disk/DiskCache$4;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/cache/disk/DiskCache;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/cache/disk/DiskCache;

    .line 639
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "copyEntities":Ljava/util/HashMap;
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iget-object v1, v1, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    monitor-enter v1

    .line 647
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iget-object v2, v2, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 649
    goto :goto_0

    .line 648
    :catchall_0
    move-exception v2

    .line 650
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 651
    if-eqz v0, :cond_0

    .line 652
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iget-object v1, v1, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mMeta:Lcom/alipay/mobile/common/cache/disk/Meta;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/cache/disk/Meta;->writeMeta(Ljava/util/HashMap;)V

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    # getter for: Lcom/alipay/mobile/common/cache/disk/DiskCache;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->access$200(Lcom/alipay/mobile/common/cache/disk/DiskCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 655
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    # getter for: Lcom/alipay/mobile/common/cache/disk/DiskCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->access$300(Lcom/alipay/mobile/common/cache/disk/DiskCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    # invokes: Lcom/alipay/mobile/common/cache/disk/DiskCache;->a()V
    invoke-static {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->access$100(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V

    .line 659
    :cond_1
    return-void

    .line 650
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method
