.class public Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;
.super Ljava/lang/Object;
.source "ProtobufBundleOperator.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/IBundleOperator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "rootDir"    # Ljava/io/File;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "rootDir"    # Ljava/io/File;
    .param p2, "versionName"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->d:Z

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->a:Ljava/io/File;

    .line 40
    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->b:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ProtoBuf:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->c:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getBundleType()Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;
    .locals 1

    .line 46
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ProtoBuf:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    return-object v0
.end method

.method public readBundlesFromCfg(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
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

    const-string v0, "BundleOperator"

    .line 87
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->a:Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 89
    .local v2, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 96
    invoke-virtual {p0, v1, p1, p2}, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->readBundlesFromInputStream(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 123
    return-void

    .line 110
    :catchall_0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 115
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 118
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 97
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 102
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 105
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 109
    :cond_3
    nop

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "file":Ljava/io/File;
    .end local p1    # "slinks":Ljava/util/List;
    .end local p2    # "bundles":Ljava/util/Map;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p1    # "slinks":Ljava/util/List;
    .restart local p2    # "bundles":Ljava/util/Map;
    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    .line 90
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "cfg file not exists:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBundlesFromInputStream(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;)V
    .locals 6
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

    .line 51
    if-eqz p1, :cond_5

    .line 52
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-interface {p3}, Ljava/util/Map;->clear()V

    .line 55
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 59
    :cond_1
    new-instance v0, Lcom/squareup/wire/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 60
    const-class v1, Lcom/alipay/mobile/quinox/bundle/protobuf/b;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/wire/Wire;->parseFrom(Ljava/io/InputStream;Ljava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/protobuf/b;

    const/4 v1, 0x0

    move-object v2, v1

    .line 62
    .local v2, "cfg":Lcom/alipay/mobile/quinox/bundle/protobuf/b;
    move-object v2, v0

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->d:Z

    .line 64
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "version name not mach, expect"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",but got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator$a;-><init>(Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 68
    iget-object v0, v2, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->d:Ljava/util/List;

    .line 69
    .local v1, "_slinks":Ljava/util/List;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    .end local v1    # "_slinks":Ljava/util/List;
    :cond_4
    if-eqz p3, :cond_5

    .line 75
    iget-object v0, v2, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->e:Ljava/util/List;

    .line 76
    .local v1, "_bundles":Ljava/util/List;
    move-object v1, v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 77
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    .line 78
    .local v3, "bundle":Lcom/alipay/mobile/quinox/bundle/protobuf/a;
    iget-object v4, v3, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->m:Ljava/lang/String;

    new-instance v5, Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    invoke-direct {v5, v3}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;-><init>(Lcom/alipay/mobile/quinox/bundle/protobuf/a;)V

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v3    # "bundle":Lcom/alipay/mobile/quinox/bundle/protobuf/a;
    goto :goto_1

    .line 83
    .end local v1    # "_bundles":Ljava/util/List;
    .end local v2    # "cfg":Lcom/alipay/mobile/quinox/bundle/protobuf/b;
    :cond_5
    return-void
.end method

.method public writeBundlesToCfg(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "slinks"    # Ljava/util/List;
    .param p2, "bundles"    # Ljava/util/List;
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

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->writeBundlesToCfg(Ljava/util/List;Ljava/util/List;Z)V

    .line 179
    return-void
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

    .line 128
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->d:Z

    const-string v1, "BundleOperator"

    if-eqz v0, :cond_1

    .line 129
    if-eqz p3, :cond_0

    .line 130
    const-string v0, "config say we can\'t prevent write cfg when version mismatch."

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "we can\'t write cfg when version mismatch!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->a:Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 137
    .local v3, "file":Ljava/io/File;
    move-object v3, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 141
    :cond_2
    const/4 v0, 0x0

    .line 143
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Lcom/alipay/mobile/quinox/bundle/protobuf/b;

    invoke-direct {v4}, Lcom/alipay/mobile/quinox/bundle/protobuf/b;-><init>()V

    .line 144
    .local v2, "cfg":Lcom/alipay/mobile/quinox/bundle/protobuf/b;
    move-object v2, v4

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->b:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->c:Ljava/lang/String;

    .line 146
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 147
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .local v4, "_slink":Ljava/util/List;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 149
    .local v6, "slink":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    nop

    .end local v6    # "slink":Ljava/lang/String;
    goto :goto_1

    .line 151
    :cond_3
    iput-object v4, v2, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->d:Ljava/util/List;

    .line 154
    .end local v4    # "_slink":Ljava/util/List;
    :cond_4
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 155
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .local v4, "_bundles":Ljava/util/List;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 157
    .local v6, "bundle":Lcom/alipay/mobile/quinox/bundle/IBundle;
    new-instance v7, Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    invoke-direct {v7, v6}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a()Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    nop

    .end local v6    # "bundle":Lcom/alipay/mobile/quinox/bundle/IBundle;
    goto :goto_2

    .line 159
    :cond_5
    iput-object v4, v2, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->e:Ljava/util/List;

    .line 162
    .end local v4    # "_bundles":Ljava/util/List;
    :cond_6
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 163
    move-object v0, v4

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 164
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v2    # "cfg":Lcom/alipay/mobile/quinox/bundle/protobuf/b;
    nop

    :goto_3
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 174
    return-void

    .line 169
    :catchall_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 173
    nop

    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_3

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 168
    nop

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local p1    # "slinks":Ljava/util/List;
    .end local p2    # "bundles":Ljava/util/List;
    .end local p3    # "force":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local p1    # "slinks":Ljava/util/List;
    .restart local p2    # "bundles":Ljava/util/List;
    .restart local p3    # "force":Z
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1
.end method

.method public writeBundlesToCfg2(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "slinks"    # Ljava/util/List;
    .param p2, "bundles"    # Ljava/util/List;
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

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->writeBundlesToCfg(Ljava/util/List;Ljava/util/List;)V

    .line 184
    return-void
.end method
