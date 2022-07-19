.class public Lcom/alipay/mobile/nebula/config/NebulaMetaInfoOperator;
.super Ljava/lang/Object;
.source "NebulaMetaInfoOperator.java"


# static fields
.field public static final META_INF_NEBULA_METAINFO_MF:Ljava/lang/String; = "META-INF/NEBULA-METAINFO.MF"

.field public static final NEBULA_METAINFO_MF:Ljava/lang/String; = "NEBULA-METAINFO.MF"

.field public static final TAG:Ljava/lang/String; = "NebulaMetaInfoOperator"

.field private static final TYPE_JS_EXTENSION:B = 0x2t

.field private static final TYPE_JS_PLUGIN:B = 0x1t


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoOperator;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoOperator;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private doReadMetaInfo(Ljava/io/BufferedInputStream;)Ljava/util/List;
    .locals 13
    .param p1, "bis"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedInputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
            "*>;>;"
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    .line 53
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 55
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readByte(Ljava/io/BufferedInputStream;)B

    move-result v3

    .line 56
    .local v3, "type":B
    const/4 v4, 0x0

    .line 57
    .local v4, "desc":Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    new-instance v5, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "bridge"

    const/4 v12, 0x1

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v5

    goto :goto_1

    .line 59
    :cond_1
    new-instance v5, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    invoke-direct {v5}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>()V

    move-object v4, v5

    .line 60
    nop

    .line 68
    :goto_1
    if-eqz v4, :cond_2

    .line 69
    invoke-virtual {v4, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;->deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    .line 70
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v3    # "type":B
    .end local v4    # "desc":Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "i":I
    :cond_3
    return-object v1

    .line 75
    .end local v0    # "N":I
    .end local v1    # "list":Ljava/util/List;
    :catchall_0
    move-exception v0

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method private doWriteMetaInfo(Ljava/util/List;Ljava/io/BufferedOutputStream;)V
    .locals 3
    .param p1, "descs"    # Ljava/util/List;
    .param p2, "bos"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
            "*>;>;",
            "Ljava/io/BufferedOutputStream;",
            ")V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoOperator;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/alipay/mobile/nebula/process/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoOperator;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.doWriteNebulaMetaInfo.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebula/process/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "processLock":Lcom/alipay/mobile/nebula/process/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/process/ProcessLock;->lock()V

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoOperator;->doWriteMetaInfoImpl(Ljava/util/List;Ljava/io/BufferedOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    throw v1

    .line 108
    .end local v0    # "processLock":Lcom/alipay/mobile/nebula/process/ProcessLock;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoOperator;->doWriteMetaInfoImpl(Ljava/util/List;Ljava/io/BufferedOutputStream;)V

    .line 110
    return-void
.end method

.method private doWriteMetaInfoImpl(Ljava/util/List;Ljava/io/BufferedOutputStream;)V
    .locals 3
    .param p1, "descs"    # Ljava/util/List;
    .param p2, "bos"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
            "*>;>;",
            "Ljava/io/BufferedOutputStream;",
            ")V"
        }
    .end annotation

    .line 113
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 117
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    .line 119
    .local v1, "desc":Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
    move-object v1, v2

    instance-of v2, v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    if-eqz v2, :cond_0

    .line 120
    const/4 v2, 0x1

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    goto :goto_1

    .line 121
    :cond_0
    instance-of v2, v1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    if-eqz v2, :cond_1

    .line 122
    const/4 v2, 0x2

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    .line 124
    :cond_1
    :goto_1
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;->serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    .line 125
    .end local v1    # "desc":Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
    goto :goto_0

    .line 127
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public readMetaInfo(Ljava/io/InputStream;)Ljava/util/List;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
            "*>;>;"
        }
    .end annotation

    .line 81
    if-nez p1, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoOperator;->doReadMetaInfo(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 87
    :goto_0
    return-object v1

    .line 89
    :catchall_0
    move-exception v1

    .line 91
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 93
    goto :goto_1

    .line 92
    :catch_1
    move-exception v2

    .line 93
    :goto_1
    throw v1
.end method

.method public writeMetaInfo(Ljava/util/List;Ljava/io/File;)V
    .locals 1
    .param p1, "descriptions"    # Ljava/util/List;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
            "*>;>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 151
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoOperator;->writeMetaInfo(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 156
    return-void

    .line 152
    :cond_1
    :goto_0
    return-void
.end method

.method public writeMetaInfo(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "descriptions"    # Ljava/util/List;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
            "*>;>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .line 130
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 136
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebula/config/NebulaMetaInfoOperator;->doWriteMetaInfo(Ljava/util/List;Ljava/io/BufferedOutputStream;)V

    .line 138
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    return-void

    .line 143
    :catch_0
    move-exception v1

    .line 145
    return-void

    .line 140
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 142
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    goto :goto_0

    .line 143
    :catch_1
    move-exception v2

    .line 145
    :cond_1
    :goto_0
    throw v1

    .line 131
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_2
    :goto_1
    return-void
.end method
