.class Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;
.super Ljava/util/LinkedHashMap;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcom/alipay/mobile/common/cache/disk/Entity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;IFZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;
    .param p2, "x0"    # I
    .param p3, "x1"    # F
    .param p4, "x2"    # Z

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 5
    .param p1, "eldest"    # Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/cache/disk/Entity;",
            ">;)Z"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    # getter for: Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->mSize:J
    invoke-static {v0}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->access$000(Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    # getter for: Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->mMaxsize:J
    invoke-static {v2}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->access$100(Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    # getter for: Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->mSize:J
    invoke-static {v0}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->access$400(Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;)J

    move-result-wide v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/cache/disk/Entity;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/cache/disk/Entity;->getSize()J

    move-result-wide v3

    sub-long/2addr v1, v3

    # setter for: Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->mSize:J
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->access$302(Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;J)J

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->a(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->access$500(Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x1

    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
