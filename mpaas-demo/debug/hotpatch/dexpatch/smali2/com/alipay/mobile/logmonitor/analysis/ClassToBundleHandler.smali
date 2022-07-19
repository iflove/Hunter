.class public Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;
.super Ljava/lang/Object;
.source "ClassToBundleHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;->a:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private static a(ILjava/io/DataInputStream;[Ljava/lang/String;[Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;)Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    .locals 10
    .param p0, "nodeIndex"    # I
    .param p1, "dataStream"    # Ljava/io/DataInputStream;
    .param p2, "bundleNames"    # [Ljava/lang/String;
    .param p3, "orderedNodes"    # [Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;

    .line 160
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 161
    .local v0, "fatherId":S
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 162
    .local v1, "bundleNameId":S
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 163
    new-array v2, v2, [B

    .line 164
    .local v2, "nodeNameData":[B
    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 166
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 167
    .local v3, "nodeName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 168
    .local v4, "bundleName":Ljava/lang/String;
    move-object v5, v3

    .line 169
    .local v5, "nodeKey":Ljava/lang/String;
    new-instance v6, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;-><init>(B)V

    .line 170
    .local v6, "childNode":Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    const/4 v7, 0x0

    .line 172
    .local v7, "fatherNode":Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 174
    and-int/lit16 v8, v1, 0x4000

    const/16 v9, 0x4000

    if-ne v8, v9, :cond_0

    .line 175
    and-int/lit16 v8, v1, -0x4001

    int-to-short v1, v8

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    :cond_0
    aget-object v4, p2, v1

    .line 181
    :cond_1
    if-eqz p0, :cond_3

    .line 182
    aget-object v8, p3, v0

    .line 183
    move-object v7, v8

    iget-object v8, v8, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;->d:Ljava/util/Map;

    if-nez v8, :cond_2

    .line 184
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v7, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;->d:Ljava/util/Map;

    .line 186
    :cond_2
    iget-object v8, v7, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;->d:Ljava/util/Map;

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_3
    iput-object v3, v6, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;->a:Ljava/lang/String;

    .line 190
    iput-object v4, v6, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;->b:Ljava/lang/String;

    .line 191
    iput-object v7, v6, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;->c:Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;

    .line 192
    aput-object v6, p3, p0

    .line 193
    return-object v6
.end method

.method private static a(Ljava/io/DataInputStream;)Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    .locals 10
    .param p0, "dataStream"    # Ljava/io/DataInputStream;

    .line 123
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 124
    .local v2, "nodeCount":S
    move v2, v0

    new-array v0, v0, [Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;

    .line 125
    .local v0, "orderedNodes":[Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    move v4, v1

    .line 126
    .local v4, "namesCount":S
    move v4, v3

    new-array v3, v3, [Ljava/lang/String;

    .line 127
    .local v3, "bundleNames":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 129
    .local v5, "rootNode":Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 130
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    .line 131
    .local v1, "bundleNameLen":S
    move v1, v7

    if-eqz v7, :cond_0

    .line 135
    new-array v7, v1, [B

    .line 136
    .local v7, "bundleNameData":[B
    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 137
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 138
    .local v8, "bundleName":Ljava/lang/String;
    aput-object v8, v3, v6

    .line 129
    .end local v1    # "bundleNameLen":S
    .end local v7    # "bundleNameData":[B
    .end local v8    # "bundleName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 141
    .end local v6    # "i":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 142
    invoke-static {v1, p0, v3, v0}, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;->a(ILjava/io/DataInputStream;[Ljava/lang/String;[Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;)Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;

    move-result-object v6

    .line 143
    .local v6, "parsedNode":Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    if-nez v1, :cond_2

    .line 144
    move-object v5, v6

    .line 141
    .end local v6    # "parsedNode":Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 149
    .local v1, "readEnd":I
    if-gez v6, :cond_4

    .line 153
    return-object v5

    .line 150
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "has not read the end"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private a()Z
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;->b:Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 91
    return v1

    .line 93
    :cond_0
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;->b:Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;

    if-eqz v0, :cond_1

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    return v1

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 100
    .local v0, "dataStream":Ljava/io/DataInputStream;
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "classes_tree"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 101
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 102
    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;->a(Ljava/io/DataInputStream;)Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;->b:Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v4, "ClassToBundleHandler"

    const-string/jumbo v5, "prepareMappingTree"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 103
    return v1

    .line 105
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v1

    .line 106
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ClassToBundleHandler"

    const-string/jumbo v4, "prepareMappingTree"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 110
    if-eqz v0, :cond_2

    .line 112
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 115
    goto :goto_1

    .line 113
    :catchall_2
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_6
    const-string v3, "ClassToBundleHandler"

    const-string/jumbo v4, "prepareMappingTree"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 107
    const/4 v2, 0x0

    return v2

    .line 110
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_3
    move-exception v1

    if-eqz v0, :cond_3

    .line 112
    :try_start_7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 115
    goto :goto_2

    .line 113
    :catchall_4
    move-exception v2

    .line 114
    .restart local v2    # "e":Ljava/lang/Throwable;
    :try_start_8
    const-string v3, "ClassToBundleHandler"

    const-string/jumbo v4, "prepareMappingTree"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    throw v1

    .line 118
    .end local v0    # "dataStream":Ljava/io/DataInputStream;
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "className"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;->a()Z

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;->b:Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;->d:Ljava/util/Map;

    if-nez v1, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    const/4 v1, 0x0

    .line 57
    .local v1, "dotStart":I
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler;->b:Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;

    .local v2, "fatherNode":Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    const/4 v3, 0x0

    move-object v4, v0

    .line 60
    :goto_0
    const/4 v5, 0x0

    .line 61
    .local v5, "isEnd":Z
    const/16 v6, 0x2e

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 62
    .local v3, "dotIndex":I
    move v3, v6

    if-gez v6, :cond_2

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 64
    const/4 v5, 0x1

    .line 67
    :cond_2
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "nodeName":Ljava/lang/String;
    add-int/lit8 v1, v3, 0x1

    .line 69
    if-eqz v5, :cond_3

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    :cond_3
    iget-object v7, v2, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;->d:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;

    .line 74
    .local v4, "childNode":Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    move-object v4, v7

    if-nez v7, :cond_4

    .line 75
    iget-object v0, v2, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;->b:Ljava/lang/String;

    return-object v0

    .line 78
    :cond_4
    iget-object v7, v4, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;->d:Ljava/util/Map;

    if-nez v7, :cond_5

    .line 79
    iget-object v0, v4, Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;->b:Ljava/lang/String;

    return-object v0

    .line 81
    :cond_5
    move-object v2, v4

    .line 83
    if-eqz v5, :cond_6

    .line 84
    return-object v0

    .line 86
    .end local v3    # "dotIndex":I
    .end local v4    # "childNode":Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    .end local v5    # "isEnd":Z
    .end local v6    # "nodeName":Ljava/lang/String;
    :cond_6
    goto :goto_0

    .line 53
    .end local v1    # "dotStart":I
    .end local v2    # "fatherNode":Lcom/alipay/mobile/logmonitor/analysis/ClassToBundleHandler$a;
    :cond_7
    :goto_1
    return-object v0

    .line 48
    :cond_8
    :goto_2
    return-object v0
.end method
