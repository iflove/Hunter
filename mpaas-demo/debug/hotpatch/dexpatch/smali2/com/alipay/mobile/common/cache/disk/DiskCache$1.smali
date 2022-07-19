.class Lcom/alipay/mobile/common/cache/disk/DiskCache$1;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/cache/disk/DiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

.field final synthetic val$data:[B

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/cache/disk/DiskCache;

    .line 172
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iput-object p2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "path":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->val$data:[B

    # invokes: Lcom/alipay/mobile/common/cache/disk/DiskCache;->a(Ljava/lang/String;[B)V
    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->access$000(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;[B)V

    .line 178
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    # invokes: Lcom/alipay/mobile/common/cache/disk/DiskCache;->a()V
    invoke-static {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->access$100(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    return-void

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Lcom/alipay/mobile/common/cache/disk/CacheException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fail to put cache:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DiskCache"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v1    # "e":Lcom/alipay/mobile/common/cache/disk/CacheException;
    return-void
.end method
