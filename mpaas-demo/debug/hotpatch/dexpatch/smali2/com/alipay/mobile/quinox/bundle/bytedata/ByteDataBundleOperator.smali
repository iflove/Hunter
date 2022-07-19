.class public Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;
.super Ljava/lang/Object;
.source "ByteDataBundleOperator.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/IBundleOperator;


# static fields
.field public static final CFG_FORMAT:I = -0x2


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "rootDir"    # Ljava/io/File;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "rootDir"    # Ljava/io/File;
    .param p2, "versionName"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;->a:Ljava/io/File;

    .line 35
    if-nez p2, :cond_0

    .line 36
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ByteData:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;->b:Ljava/lang/String;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ByteData:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    iget-object v1, v1, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;->b:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getBundleType()Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;
    .locals 1

    .line 89
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ByteData:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    return-object v0
.end method

.method public readBundlesFromCfg(Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .param p1, "slinks"    # Ljava/util/List;
    .param p2, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/IBundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Delete the file:"

    const-string v1, "BundleOperator"

    .line 48
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;->a:Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 50
    .local v3, "file":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 57
    invoke-virtual {p0, v2, p1, p2}, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;->readBundlesFromInputStream(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 84
    return-void

    .line 71
    :catchall_0
    move-exception v4

    .line 72
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 76
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 79
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 58
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 63
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 66
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 70
    :cond_3
    nop

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local p1    # "slinks":Ljava/util/List;
    .end local p2    # "bundles":Ljava/util/Map;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local p1    # "slinks":Ljava/util/List;
    .restart local p2    # "bundles":Ljava/util/Map;
    :catchall_1
    move-exception v0

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    .line 51
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cfg file not exists:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBundlesFromInputStream(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;)V
    .locals 9
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "slinks"    # Ljava/util/List;
    .param p3, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/IBundle;",
            ">;)V"
        }
    .end annotation

    .line 96
    if-eqz p1, :cond_5

    .line 97
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-interface {p3}, Ljava/util/Map;->clear()V

    .line 100
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 104
    :cond_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 105
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    move-object v2, v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    .line 108
    .local v0, "format":I
    const/4 v3, -0x2

    if-ne v3, v0, :cond_2

    .line 109
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList2(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v1

    .local v1, "slinkList":Ljava/util/List;
    goto :goto_1

    .line 111
    .end local v1    # "slinkList":Ljava/util/List;
    :cond_2
    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 112
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v4, "slinkList":Ljava/util/List;
    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x0

    move v7, v6

    .line 116
    .local v7, "length":I
    move v7, v5

    new-array v5, v5, [B

    .line 117
    .local v1, "bytes":[B
    move-object v1, v5

    shr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    .line 118
    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x1

    aput-byte v5, v1, v6

    .line 120
    add-int/lit8 v5, v7, -0x2

    const/4 v6, 0x2

    invoke-virtual {v2, v1, v6, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 121
    new-instance v5, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 124
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v4

    .line 128
    .end local v3    # "size":I
    .end local v4    # "slinkList":Ljava/util/List;
    .end local v5    # "i":I
    .end local v7    # "length":I
    .local v1, "slinkList":Ljava/util/List;
    :goto_1
    if-eqz p2, :cond_4

    if-eqz v1, :cond_4

    .line 129
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :cond_4
    if-eqz p3, :cond_5

    .line 134
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v3

    .line 135
    .restart local v3    # "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_5

    .line 136
    new-instance v5, Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    invoke-direct {v5}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;-><init>()V

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object v5

    .line 137
    .local v5, "bundle":Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 141
    .end local v0    # "format":I
    .end local v1    # "slinkList":Ljava/util/List;
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v3    # "size":I
    .end local v4    # "i":I
    .end local v5    # "bundle":Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    :cond_5
    return-void
.end method

.method public writeBundlesToCfg(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "slinks"    # Ljava/util/List;
    .param p2, "bundles"    # Ljava/util/List;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/IBundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Delete the file:"

    const-string v1, "BundleOperator"

    .line 146
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;->a:Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 147
    .local v3, "file":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 151
    :cond_0
    const/4 v2, 0x0

    .line 153
    .local v2, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 154
    move-object v2, v4

    invoke-static {v4, p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    .line 155
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 156
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 157
    .local v4, "size":I
    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 158
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 159
    .local v6, "bundle":Lcom/alipay/mobile/quinox/bundle/IBundle;
    new-instance v7, Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    invoke-direct {v7, v6}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    .line 160
    nop

    .end local v6    # "bundle":Lcom/alipay/mobile/quinox/bundle/IBundle;
    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v4    # "size":I
    :cond_2
    nop

    :goto_1
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 172
    return-void

    .line 167
    :catchall_0
    move-exception v4

    .line 168
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 171
    nop

    .end local v4    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 163
    :catch_0
    move-exception v4

    .line 164
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 166
    nop

    .end local v2    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local p1    # "slinks":Ljava/util/List;
    .end local p2    # "bundles":Ljava/util/List;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local p1    # "slinks":Ljava/util/List;
    .restart local p2    # "bundles":Ljava/util/List;
    :catchall_1
    move-exception v0

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
.end method

.method public writeBundlesToCfg(Ljava/util/List;Ljava/util/List;Z)V
    .locals 8
    .param p1, "slinks"    # Ljava/util/List;
    .param p2, "bundles"    # Ljava/util/List;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/IBundle;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "Delete the file:"

    const-string v1, "BundleOperator"

    .line 184
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;->a:Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 185
    .local v3, "file":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 189
    :cond_0
    const/4 v2, 0x0

    .line 191
    .local v2, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 192
    move-object v2, v4

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 193
    invoke-static {v2, p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList2(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    .line 194
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 195
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 196
    .local v4, "size":I
    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 197
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 198
    .local v6, "bundle":Lcom/alipay/mobile/quinox/bundle/IBundle;
    new-instance v7, Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    invoke-direct {v7, v6}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    .line 199
    nop

    .end local v6    # "bundle":Lcom/alipay/mobile/quinox/bundle/IBundle;
    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v4    # "size":I
    :cond_2
    nop

    :goto_1
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 211
    return-void

    .line 206
    :catchall_0
    move-exception v4

    .line 207
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 210
    nop

    .end local v4    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 202
    :catch_0
    move-exception v4

    .line 203
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 205
    nop

    .end local v2    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local p1    # "slinks":Ljava/util/List;
    .end local p2    # "bundles":Ljava/util/List;
    .end local p3    # "force":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local p1    # "slinks":Ljava/util/List;
    .restart local p2    # "bundles":Ljava/util/List;
    .restart local p3    # "force":Z
    :catchall_1
    move-exception v0

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
.end method

.method public writeBundlesToCfg2(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "slinks"    # Ljava/util/List;
    .param p2, "bundles"    # Ljava/util/List;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/IBundle;",
            ">;)V"
        }
    .end annotation

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;->writeBundlesToCfg(Ljava/util/List;Ljava/util/List;Z)V

    .line 179
    return-void
.end method
