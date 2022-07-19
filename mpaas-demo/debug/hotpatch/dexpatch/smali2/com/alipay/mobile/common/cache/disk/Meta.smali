.class public Lcom/alipay/mobile/common/cache/disk/Meta;
.super Ljava/lang/Object;
.source "Meta.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V
    .locals 2
    .param p1, "diskCache"    # Lcom/alipay/mobile/common/cache/disk/DiskCache;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/Meta;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/Meta;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_meta"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/Meta;->b:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 28
    .param p1, "line"    # Ljava/lang/String;

    .line 90
    move-object/from16 v0, p1

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 91
    .local v2, "parts":[Ljava/lang/String;
    move-object v2, v1

    array-length v1, v1

    const/16 v3, 0x9

    if-lt v1, v3, :cond_0

    .line 95
    const/4 v1, 0x0

    aget-object v1, v2, v1

    .line 96
    .local v1, "owner":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v16, v2, v3

    .line 97
    .local v16, "group":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v17, v2, v3

    .line 98
    .local v17, "url":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 99
    .local v18, "usedTime":I
    const/4 v3, 0x4

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 100
    .local v19, "size":J
    const/4 v3, 0x5

    aget-object v21, v2, v3

    .line 101
    .local v21, "path":Ljava/lang/String;
    const/4 v3, 0x6

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 102
    .local v22, "createTime":J
    const/4 v3, 0x7

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 103
    .local v24, "period":J
    const/16 v3, 0x8

    aget-object v26, v2, v3

    .line 105
    .local v26, "contentType":Ljava/lang/String;
    new-instance v27, Lcom/alipay/mobile/common/cache/disk/Entity;

    move-object/from16 v3, v27

    move-object v4, v1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move-wide/from16 v8, v19

    move-object/from16 v10, v21

    move-wide/from16 v11, v22

    move-wide/from16 v13, v24

    move-object/from16 v15, v26

    invoke-direct/range {v3 .. v15}, Lcom/alipay/mobile/common/cache/disk/Entity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JJLjava/lang/String;)V

    .line 108
    .local v3, "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/alipay/mobile/common/cache/disk/Meta;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->addEntity(Lcom/alipay/mobile/common/cache/disk/Entity;)V

    .line 109
    return-void

    .line 92
    .end local v1    # "owner":Ljava/lang/String;
    .end local v3    # "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    .end local v16    # "group":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    .end local v18    # "usedTime":I
    .end local v19    # "size":J
    .end local v21    # "path":Ljava/lang/String;
    .end local v22    # "createTime":J
    .end local v24    # "period":J
    .end local v26    # "contentType":Ljava/lang/String;
    :cond_0
    move-object/from16 v4, p0

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unexpected meta line: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method init()V
    .locals 12

    const-string v0, ", "

    const-string v1, "DiskCache"

    .line 47
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/common/cache/disk/Meta;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 48
    .local v4, "file":Ljava/io/File;
    move-object v4, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    return-void

    .line 52
    :cond_0
    const/4 v2, 0x0

    .line 54
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 55
    move-object v2, v5

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "magic":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 57
    .local v6, "version":I
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 58
    .local v7, "maxsize":J
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "blank":Ljava/lang/String;
    const-string v10, "alipay.diskcache"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    .line 63
    const/4 v0, 0x1

    if-gt v6, v0, :cond_2

    move-object v0, v3

    .line 68
    .local v0, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    if-eqz v3, :cond_1

    .line 69
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/cache/disk/Meta;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    .end local v0    # "line":Ljava/lang/String;
    .end local v5    # "magic":Ljava/lang/String;
    .end local v6    # "version":I
    .end local v7    # "maxsize":J
    .end local v9    # "blank":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    return-void

    .line 64
    .restart local v5    # "magic":Ljava/lang/String;
    .restart local v6    # "version":I
    .restart local v7    # "maxsize":J
    .restart local v9    # "blank":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "Unexpected meta file version:"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    throw v0

    .line 61
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unexpected cache meta file: ["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .end local v5    # "magic":Ljava/lang/String;
    .end local v6    # "version":I
    .end local v7    # "maxsize":J
    .end local v9    # "blank":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 73
    iget-object v3, p0, Lcom/alipay/mobile/common/cache/disk/Meta;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->clear()V

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    .end local v0    # "exception":Ljava/lang/Exception;
    if-eqz v2, :cond_4

    .line 79
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 84
    return-void

    .line 87
    :cond_4
    return-void

    .line 77
    :goto_1
    if-eqz v2, :cond_5

    .line 79
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 84
    goto :goto_2

    .line 81
    :catch_2
    move-exception v3

    .line 82
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :goto_2
    throw v0
.end method

.method writeMeta(Ljava/util/HashMap;)V
    .locals 9
    .param p1, "metaMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/cache/disk/Entity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Meta"

    const-string v1, "   "

    .line 116
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/common/cache/disk/Meta;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 119
    .local v3, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 120
    move-object v3, v4

    const-string v5, "alipay.diskcache"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 121
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 122
    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 124
    iget-object v5, p0, Lcom/alipay/mobile/common/cache/disk/Meta;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getMaxsize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 126
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(I)V

    .line 127
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 129
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;
    const/4 v6, 0x0

    .line 131
    .local v6, "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 132
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/cache/disk/Entity;

    move-object v6, v7

    .line 133
    invoke-virtual {v6}, Lcom/alipay/mobile/common/cache/disk/Entity;->getOwner()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v6}, Lcom/alipay/mobile/common/cache/disk/Entity;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v6}, Lcom/alipay/mobile/common/cache/disk/Entity;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v6}, Lcom/alipay/mobile/common/cache/disk/Entity;->getUsedTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v6}, Lcom/alipay/mobile/common/cache/disk/Entity;->getSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v6}, Lcom/alipay/mobile/common/cache/disk/Entity;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v6}, Lcom/alipay/mobile/common/cache/disk/Entity;->getCreateTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v6}, Lcom/alipay/mobile/common/cache/disk/Entity;->getPeriod()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v6}, Lcom/alipay/mobile/common/cache/disk/Entity;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v5    # "iterator":Ljava/util/Iterator;
    .end local v6    # "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    return-void

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v1    # "e":Ljava/io/IOException;
    return-void

    .line 158
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 153
    :catch_1
    move-exception v1

    .line 154
    .local v1, "exception":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fail to write meta file:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 154
    :goto_1
    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v4, p0, Lcom/alipay/mobile/common/cache/disk/Meta;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .end local v1    # "exception":Ljava/io/IOException;
    if-eqz v3, :cond_2

    .line 160
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 165
    :cond_2
    return-void

    .line 159
    :goto_2
    if-eqz v3, :cond_3

    .line 160
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 163
    :catch_2
    move-exception v4

    .line 164
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 165
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    nop

    :goto_4
    throw v1
.end method
