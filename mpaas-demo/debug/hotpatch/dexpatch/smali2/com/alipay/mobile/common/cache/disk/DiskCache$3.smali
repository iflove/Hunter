.class Lcom/alipay/mobile/common/cache/disk/DiskCache$3;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/cache/disk/DiskCache;->clear()V
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

    .line 552
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$3;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 556
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache$3;->this$0:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 557
    .local v2, "file":Ljava/io/File;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 559
    .local v1, "files":[Ljava/io/File;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 560
    return-void

    .line 562
    :cond_0
    array-length v0, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v3

    .line 563
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 562
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 566
    .end local v1    # "files":[Ljava/io/File;
    :cond_1
    return-void
.end method
