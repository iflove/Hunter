.class public Lcom/alipay/mobile/framework/util/MetaInfoOperator;
.super Ljava/lang/Object;
.source "MetaInfoOperator.java"


# static fields
.field public static final METAINFO_MF:Ljava/lang/String; = "METAINFO.MF"

.field public static final META_INFO_CFG:Ljava/lang/String; = "metainfos.cfg"

.field public static final META_INFO_EXT_CFG:Ljava/lang/String; = "metainfos-ext.cfg"

.field public static final META_INF_METAINFO_MF:Ljava/lang/String; = "META-INF/METAINFO.MF"

.field public static final TAG:Ljava/lang/String; = "MetaInfoOperator"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;-><init>(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->a:Landroid/content/Context;

    .line 83
    return-void
.end method

.method private static a(Ljava/io/BufferedInputStream;)Ljava/util/List;
    .locals 7
    .param p0, "bis"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedInputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;"
        }
    .end annotation

    .line 98
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    .line 99
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 101
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readByte(Ljava/io/BufferedInputStream;)B

    move-result v4

    .line 104
    .local v3, "type":B
    move v3, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 118
    new-instance v4, Lcom/alipay/mobile/framework/PackageDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/PackageDescription;-><init>()V

    .line 119
    .local v4, "desc":Lcom/alipay/mobile/framework/MicroDescription;
    goto :goto_1

    .line 121
    .end local v4    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to create MicroDescription: type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "bis":Ljava/io/BufferedInputStream;
    throw v4

    .line 115
    .restart local p0    # "bis":Ljava/io/BufferedInputStream;
    :cond_1
    new-instance v4, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 116
    .restart local v4    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    goto :goto_1

    .line 112
    .end local v4    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    :cond_2
    new-instance v4, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 113
    .restart local v4    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    goto :goto_1

    .line 109
    .end local v4    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    :cond_3
    new-instance v4, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 110
    .restart local v4    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    goto :goto_1

    .line 106
    .end local v4    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    :cond_4
    new-instance v4, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 107
    .restart local v4    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    nop

    .line 123
    :goto_1
    invoke-virtual {v4, p0}, Lcom/alipay/mobile/framework/MicroDescription;->deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 124
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    nop

    .end local v3    # "type":B
    .end local v4    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "i":I
    :cond_5
    return-object v1

    .line 128
    .end local v0    # "N":I
    .end local v1    # "list":Ljava/util/List;
    :catchall_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MetaInfoOperator"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/io/BufferedOutputStream;)V
    .locals 3
    .param p1, "descs"    # Ljava/util/List;
    .param p2, "bos"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;",
            "Ljava/io/BufferedOutputStream;",
            ")V"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.doWriteMetaInfo.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 279
    invoke-static {p1, p2}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->b(Ljava/util/List;Ljava/io/BufferedOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1

    .line 284
    .end local v0    # "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :cond_0
    invoke-static {p1, p2}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->b(Ljava/util/List;Ljava/io/BufferedOutputStream;)V

    .line 286
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "descriptions"    # Ljava/util/Map;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .line 353
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 358
    .local v0, "entrySet":Ljava/util/Set;
    const/4 v1, 0x0

    .line 360
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 363
    move-object v1, v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 365
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 366
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 370
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 372
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 373
    .local v4, "descs":Ljava/util/List;
    invoke-direct {p0, v4, v1}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->a(Ljava/util/List;Ljava/io/BufferedOutputStream;)V

    .line 374
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "descs":Ljava/util/List;
    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .end local v2    # "iterator":Ljava/util/Iterator;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v2

    .line 354
    .end local v0    # "entrySet":Ljava/util/Set;
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    :cond_2
    :goto_1
    return-void
.end method

.method private static b(Ljava/util/List;Ljava/io/BufferedOutputStream;)V
    .locals 5
    .param p0, "descs"    # Ljava/util/List;
    .param p1, "bos"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;",
            "Ljava/io/BufferedOutputStream;",
            ")V"
        }
    .end annotation

    .line 289
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 291
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 293
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 294
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/MicroDescription;

    .line 297
    .local v1, "desc":Lcom/alipay/mobile/framework/MicroDescription;
    move-object v1, v2

    instance-of v2, v2, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    if-eqz v2, :cond_0

    .line 298
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    goto :goto_1

    .line 299
    :cond_0
    instance-of v2, v1, Lcom/alipay/mobile/framework/service/ServiceDescription;

    if-eqz v2, :cond_1

    .line 300
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    goto :goto_1

    .line 301
    :cond_1
    instance-of v2, v1, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    if-eqz v2, :cond_2

    .line 302
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    goto :goto_1

    .line 303
    :cond_2
    instance-of v2, v1, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    if-eqz v2, :cond_3

    .line 304
    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    goto :goto_1

    .line 305
    :cond_3
    instance-of v2, v1, Lcom/alipay/mobile/framework/PackageDescription;

    if-eqz v2, :cond_4

    .line 306
    const/4 v2, 0x5

    invoke-static {p1, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    .line 310
    :goto_1
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/MicroDescription;->serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 311
    .end local v1    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    goto :goto_0

    .line 308
    .restart local v1    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UnKnown MicroDescription : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 313
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "desc":Lcom/alipay/mobile/framework/MicroDescription;
    :cond_5
    return-void
.end method


# virtual methods
.method public readMetaInfo(Ljava/io/File;)Ljava/util/List;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;"
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x0

    .line 151
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 152
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->readMetaInfo(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 156
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 157
    goto :goto_1

    .line 153
    :catchall_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "MetaInfoOperator"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 158
    :goto_1
    return-object v0

    .line 156
    :catchall_1
    move-exception v2

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v2
.end method

.method public readMetaInfo(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;"
        }
    .end annotation

    .line 135
    if-nez p1, :cond_0

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-static {v0}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->a(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 141
    return-object v1

    .line 143
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1
.end method

.method public readMetaInfoCfg(Ljava/io/File;)Ljava/util/Map;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;"
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "map":Ljava/util/Map;
    const/4 v1, 0x0

    .line 227
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 228
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->readMetaInfoCfg(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 232
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 233
    goto :goto_1

    .line 229
    :catchall_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "MetaInfoOperator"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 234
    :goto_1
    return-object v0

    .line 232
    :catchall_1
    move-exception v2

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v2
.end method

.method public readMetaInfoCfg(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;"
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 202
    move-object v0, v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    .line 203
    .local v2, "N":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 205
    .local v3, "map":Ljava/util/Map;
    const/4 v4, 0x0

    move-object v5, v1

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 206
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "bundleName":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->a(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v7

    .line 208
    .local v5, "list":Ljava/util/List;
    move-object v5, v7

    if-eqz v7, :cond_0

    .line 211
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    nop

    .end local v5    # "list":Ljava/util/List;
    .end local v6    # "bundleName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 209
    .restart local v5    # "list":Ljava/util/List;
    .restart local v6    # "bundleName":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": empty MicroDescription List."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local p1    # "is":Ljava/io/InputStream;
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local v4    # "i":I
    .end local v5    # "list":Ljava/util/List;
    .end local v6    # "bundleName":Ljava/lang/String;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_1
    nop

    .line 217
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 213
    return-object v3

    .line 214
    .end local v2    # "N":I
    .end local v3    # "map":Ljava/util/Map;
    :catchall_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "MetaInfoOperator"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    .end local v2    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 218
    nop

    .line 219
    return-object v1

    .line 217
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1
.end method

.method public readMetaInfoCfgFromApk(Ljava/io/File;)Ljava/util/Map;
    .locals 6
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;"
        }
    .end annotation

    const-string v0, "MetaInfoOperator"

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "map":Ljava/util/Map;
    const/4 v2, 0x0

    .line 241
    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v2, v3

    .line 243
    :try_start_1
    const-string v3, "assets/metainfos.cfg"

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    const/4 v4, 0x0

    .line 244
    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v4, v3

    if-nez v3, :cond_0

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " can\'t read assets/metainfos.cfg"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 247
    :cond_0
    const/4 v3, 0x0

    .line 249
    .local v3, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 250
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->readMetaInfoCfg(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v5

    .line 254
    :try_start_3
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 255
    :goto_0
    goto :goto_1

    .line 251
    :catchall_0
    move-exception v5

    .line 252
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 254
    .end local v5    # "e":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .end local v1    # "map":Ljava/util/Map;
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .end local p1    # "apkFile":Ljava/io/File;
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 257
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "map":Ljava/util/Map;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local p1    # "apkFile":Ljava/io/File;
    :catchall_2
    move-exception v3

    .line 258
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "can\'t read assets/metainfos.cfg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 265
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 268
    :goto_2
    goto :goto_3

    .line 266
    :catchall_3
    move-exception v3

    .line 267
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 260
    :catchall_4
    move-exception v3

    .line 261
    .restart local v3    # "e":Ljava/lang/Throwable;
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to create ZipFile: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 263
    .end local v3    # "e":Ljava/lang/Throwable;
    if-eqz v2, :cond_1

    .line 265
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    .line 271
    :cond_1
    :goto_3
    return-object v1

    .line 263
    :catchall_5
    move-exception v3

    if-eqz v2, :cond_2

    .line 265
    :try_start_a
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 268
    goto :goto_4

    .line 266
    :catchall_6
    move-exception v4

    .line 267
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_4
    throw v3
.end method

.method public readMetaInfoFromZipFile(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .param p1, "location"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "MetaInfoOperator"

    .line 162
    const/4 v1, 0x0

    .line 164
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .line 166
    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v2, v3

    .line 168
    :try_start_1
    const-string v3, "META-INF/METAINFO.MF"

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    const/4 v4, 0x0

    .line 169
    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v4, v3

    if-nez v3, :cond_0

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " can\'t find META-INF/METAINFO.MF == null."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 172
    :cond_0
    const/4 v3, 0x0

    .line 174
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 175
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->readMetaInfo(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v5

    .line 177
    :try_start_3
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 178
    goto :goto_0

    .line 177
    :catchall_0
    move-exception v5

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .end local p1    # "location":Ljava/io/File;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "list":Ljava/util/List;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local p1    # "location":Ljava/io/File;
    :catchall_1
    move-exception v3

    .line 181
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " can\'t find META-INF/METAINFO.MF. \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 188
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 191
    :goto_1
    goto :goto_2

    .line 189
    :catchall_2
    move-exception v3

    .line 190
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 183
    :catchall_3
    move-exception v3

    .line 184
    .restart local v3    # "e":Ljava/lang/Throwable;
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to create ZipFile: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 186
    .end local v3    # "e":Ljava/lang/Throwable;
    if-eqz v2, :cond_1

    .line 188
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    .line 194
    :cond_1
    :goto_2
    return-object v1

    .line 186
    :catchall_4
    move-exception v3

    if-eqz v2, :cond_2

    .line 188
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 191
    goto :goto_3

    .line 189
    :catchall_5
    move-exception v4

    .line 190
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    throw v3
.end method

.method public writeMetaInfo(Ljava/util/List;Ljava/io/File;)V
    .locals 1
    .param p1, "descriptions"    # Ljava/util/List;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 331
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->writeMetaInfo(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 336
    return-void

    .line 332
    :cond_1
    :goto_0
    return-void
.end method

.method public writeMetaInfo(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "descriptions"    # Ljava/util/List;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .line 316
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    const/4 v0, 0x0

    .line 322
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 323
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->a(Ljava/util/List;Ljava/io/BufferedOutputStream;)V

    .line 324
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1

    .line 317
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_1
    :goto_0
    return-void
.end method

.method public writeMetaInfoCfg(Ljava/util/Map;Ljava/io/File;)V
    .locals 2
    .param p1, "descriptions"    # Ljava/util/Map;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 383
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    const/4 v0, 0x0

    .line 389
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 390
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->writeMetaInfoCfg(Ljava/util/Map;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 393
    return-void

    .line 392
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1

    .line 384
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void
.end method

.method public writeMetaInfoCfg(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "descriptions"    # Ljava/util/Map;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.writeMetaInfoCfg.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->a(Ljava/util/Map;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1

    .line 348
    .end local v0    # "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 350
    return-void
.end method
