.class public Lcom/linearallocpatch/c;
.super Ljava/lang/Object;
.source "LinearAllocPatch.java"


# static fields
.field private static a:Z

.field private static b:Lcom/linearallocpatch/b;

.field private static c:Lcom/linearallocpatch/a;

.field private static d:Ljava/lang/String;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/linearallocpatch/c;->a:Z

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/linearallocpatch/c;->b:Lcom/linearallocpatch/b;

    .line 46
    sput-object v0, Lcom/linearallocpatch/c;->c:Lcom/linearallocpatch/a;

    .line 47
    sput-object v0, Lcom/linearallocpatch/c;->d:Ljava/lang/String;

    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/linearallocpatch/c;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/linearallocpatch/e;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spKey"    # Ljava/lang/String;

    .line 85
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p0}, Lcom/linearallocpatch/c;->d(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x4

    const-string v4, "LinearAllocPatch"

    if-nez v2, :cond_0

    .line 86
    const-string v2, "LinearAllocPatch switch if off"

    invoke-static {v3, v4, v2}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/linearallocpatch/e;->i:Lcom/linearallocpatch/e;

    return-object v2

    .line 90
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/linearallocpatch/c;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 91
    .local v2, "lastPatchResult":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lastPatchResult is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static/range {p0 .. p0}, Lcom/linearallocpatch/c;->b(Landroid/content/Context;)Z

    move-result v5

    .line 94
    const-string v6, "PatchEnd"

    const-string v7, "Msg"

    const-string v8, "Error"

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v5, :cond_3

    .line 95
    const-string v5, "needReportLastTimeEnd."

    invoke-static {v3, v4, v5}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eq v2, v13, :cond_2

    if-eq v2, v9, :cond_1

    if-eq v2, v10, :cond_2

    if-eq v2, v3, :cond_1

    .line 107
    sget-object v5, Lcom/linearallocpatch/e;->t:Lcom/linearallocpatch/e;

    .local v5, "lastPR":Lcom/linearallocpatch/e;
    goto :goto_0

    .line 104
    .end local v5    # "lastPR":Lcom/linearallocpatch/e;
    :cond_1
    sget-object v5, Lcom/linearallocpatch/e;->e:Lcom/linearallocpatch/e;

    .line 105
    .restart local v5    # "lastPR":Lcom/linearallocpatch/e;
    goto :goto_0

    .line 100
    .end local v5    # "lastPR":Lcom/linearallocpatch/e;
    :cond_2
    sget-object v5, Lcom/linearallocpatch/e;->a:Lcom/linearallocpatch/e;

    .line 101
    .restart local v5    # "lastPR":Lcom/linearallocpatch/e;
    nop

    .line 110
    :goto_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object v15, v12

    .line 111
    .local v15, "paramMap":Ljava/util/Map;
    move-object v15, v14

    iget v10, v5, Lcom/linearallocpatch/e;->u:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v14, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v10, v5, Lcom/linearallocpatch/e;->v:Ljava/lang/String;

    invoke-interface {v15, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {v4, v6, v12, v15}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->apm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 114
    invoke-static {v0, v11, v13}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 94
    .end local v5    # "lastPR":Lcom/linearallocpatch/e;
    .end local v15    # "paramMap":Ljava/util/Map;
    :cond_3
    move-object v5, v12

    move-object v15, v5

    .line 118
    :goto_1
    if-ne v3, v2, :cond_4

    .line 119
    sget-object v3, Lcom/linearallocpatch/e;->e:Lcom/linearallocpatch/e;

    return-object v3

    .line 122
    :cond_4
    if-ne v9, v2, :cond_5

    .line 124
    invoke-static {v0, v1, v11}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 125
    const-string v5, "restore patch result to NO_PATCH"

    invoke-static {v3, v4, v5}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v3, Lcom/linearallocpatch/e;->e:Lcom/linearallocpatch/e;

    return-object v3

    .line 130
    :cond_5
    if-eq v2, v13, :cond_6

    const/4 v9, 0x3

    if-eq v2, v9, :cond_6

    .line 131
    const-string v9, "PatchStart"

    invoke-static {v4, v9, v12, v12}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->apm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 132
    invoke-static {v0, v13, v13}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;ZZ)V

    .line 135
    :cond_6
    const-string v9, "before call patch."

    invoke-static {v3, v4, v9}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eq v2, v13, :cond_7

    const/4 v9, 0x3

    if-eq v2, v9, :cond_7

    const/4 v9, 0x1

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :goto_2
    invoke-static {v0, v1, v9}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/linearallocpatch/e;

    move-result-object v9

    .line 137
    .local v5, "result":Lcom/linearallocpatch/e;
    move-object v5, v9

    iget-object v9, v9, Lcom/linearallocpatch/e;->v:Ljava/lang/String;

    invoke-static {v9}, Lcom/linearallocpatch/c;->d(Ljava/lang/String;)V

    .line 138
    const-string v9, "after call patch."

    invoke-static {v3, v4, v9}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eq v2, v13, :cond_8

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    .line 141
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v9, v15

    .line 142
    .local v9, "paramMap":Ljava/util/Map;
    move-object v9, v3

    iget v10, v5, Lcom/linearallocpatch/e;->u:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v3, v5, Lcom/linearallocpatch/e;->v:Ljava/lang/String;

    invoke-interface {v9, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v4, v6, v12, v9}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->apm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 145
    invoke-static {v0, v11, v11}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;ZZ)V

    .line 148
    .end local v9    # "paramMap":Ljava/util/Map;
    :cond_8
    return-object v5
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/linearallocpatch/e;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "needFusing"    # Z

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p1}, Lcom/linearallocpatch/c;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/linearallocpatch/e;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 153
    .local v4, "preCheckResult":Lcom/linearallocpatch/e;
    move-object v4, v2

    sget-object v5, Lcom/linearallocpatch/e;->j:Lcom/linearallocpatch/e;

    if-eq v2, v5, :cond_0

    .line 154
    return-object v4

    .line 159
    :cond_0
    invoke-static {}, Lcom/linearallocpatch/d;->a()Ljava/util/List;

    move-result-object v2

    move-object v5, v3

    .line 161
    .local v5, "mapList":Ljava/util/List;
    move-object v5, v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 162
    sget-object v2, Lcom/linearallocpatch/e;->f:Lcom/linearallocpatch/e;

    return-object v2

    .line 165
    :cond_1
    invoke-static {v5}, Lcom/linearallocpatch/d;->a(Ljava/util/List;)V

    .line 167
    const-string v2, "[heap]"

    invoke-static {v5, v2}, Lcom/linearallocpatch/d;->a(Ljava/util/List;Ljava/lang/String;)Lcom/linearallocpatch/d;

    move-result-object v2

    move-object v6, v3

    .line 169
    .local v6, "heapMap":Lcom/linearallocpatch/d;
    move-object v6, v2

    if-nez v2, :cond_2

    .line 170
    sget-object v2, Lcom/linearallocpatch/e;->g:Lcom/linearallocpatch/e;

    return-object v2

    .line 173
    :cond_2
    const-string v2, "dalvik-LinearAlloc"

    invoke-static {v5, v2}, Lcom/linearallocpatch/d;->a(Ljava/util/List;Ljava/lang/String;)Lcom/linearallocpatch/d;

    move-result-object v2

    move-object v7, v3

    .line 175
    .local v7, "linearAllocMap":Lcom/linearallocpatch/d;
    move-object v7, v2

    if-nez v2, :cond_3

    .line 176
    sget-object v2, Lcom/linearallocpatch/e;->h:Lcom/linearallocpatch/e;

    return-object v2

    .line 179
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 180
    invoke-virtual {v6}, Lcom/linearallocpatch/d;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v2, v9

    invoke-virtual {v6}, Lcom/linearallocpatch/d;->c()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v2, v10

    .line 179
    const-string v8, "Process Heap found! 0x%x -> 0x%x"

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/linearallocpatch/c;->d(Ljava/lang/String;)V

    .line 182
    new-array v2, v10, [Ljava/lang/Object;

    .line 183
    invoke-virtual {v7}, Lcom/linearallocpatch/d;->b()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v9

    .line 182
    const-string v8, "LinearAlloc found! started at 0x%x"

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/linearallocpatch/c;->d(Ljava/lang/String;)V

    .line 185
    if-eqz p2, :cond_4

    .line 186
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 189
    :cond_4
    const-string v2, "native_patch begin"

    invoke-static {v2}, Lcom/linearallocpatch/c;->d(Ljava/lang/String;)V

    .line 190
    nop

    .line 191
    invoke-virtual {v6}, Lcom/linearallocpatch/d;->b()J

    move-result-wide v11

    .line 192
    invoke-virtual {v6}, Lcom/linearallocpatch/d;->c()J

    move-result-wide v13

    .line 193
    invoke-virtual {v7}, Lcom/linearallocpatch/d;->b()J

    move-result-wide v15

    const/high16 v17, 0x1000000

    .line 190
    invoke-static/range {v11 .. v17}, Lcom/linearallocpatch/NativeCall;->native_patch(JJJI)I

    move-result v2

    .line 195
    .local v2, "patchRet":I
    const-string v8, "native_patch end"

    invoke-static {v8}, Lcom/linearallocpatch/c;->d(Ljava/lang/String;)V

    .line 197
    invoke-static {v2}, Lcom/linearallocpatch/e;->a(I)Lcom/linearallocpatch/e;

    move-result-object v8

    .line 199
    .local v3, "result":Lcom/linearallocpatch/e;
    move-object v3, v8

    sget-object v9, Lcom/linearallocpatch/e;->a:Lcom/linearallocpatch/e;

    if-ne v8, v9, :cond_6

    .line 201
    if-eqz p2, :cond_5

    .line 202
    invoke-static {v0, v1, v10}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 206
    :cond_5
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/linearallocpatch/c$1;

    invoke-direct {v9, v0, v1}, Lcom/linearallocpatch/c$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 219
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 222
    :cond_6
    return-object v3
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 590
    const-string v0, "LinearAllocPatch"

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 591
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    new-array v1, v1, [B

    .line 592
    .local v1, "fileContent":[B
    const/4 v2, 0x0

    .line 594
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v3, 0x6

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 595
    move-object v2, v4

    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    :goto_0
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 600
    goto :goto_1

    .line 596
    :catchall_0
    move-exception v4

    .line 597
    .local v4, "tr":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v4    # "tr":Ljava/lang/Throwable;
    goto :goto_0

    .line 602
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v4

    .line 603
    :catchall_1
    move-exception v4

    .line 604
    .restart local v4    # "tr":Ljava/lang/Throwable;
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, ""

    return-object v0

    .line 599
    .end local v4    # "tr":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static a([Ljava/io/File;)Ljava/util/List;
    .locals 2
    .param p0, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 519
    .local v1, "sortFiles":Ljava/util/List;
    move-object v1, v0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 520
    new-instance v0, Lcom/linearallocpatch/c$2;

    invoke-direct {v0}, Lcom/linearallocpatch/c$2;-><init>()V

    .line 528
    .local v0, "comparator":Ljava/util/Comparator;
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 529
    return-object v1
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 422
    const-class v0, Lcom/linearallocpatch/c;

    monitor-enter v0

    .line 423
    :try_start_0
    sget-object v1, Lcom/linearallocpatch/c;->b:Lcom/linearallocpatch/b;

    if-nez v1, :cond_0

    .line 424
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    :cond_0
    invoke-interface {v1, p0, p1, p2}, Lcom/linearallocpatch/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 428
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "result"    # I

    .line 309
    sput p2, Lcom/linearallocpatch/c;->e:I

    .line 310
    invoke-static {p0}, Lcom/linearallocpatch/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 311
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 312
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static a(Landroid/content/Context;ZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "need"    # Z
    .param p2, "sync"    # Z

    .line 250
    invoke-static {p0}, Lcom/linearallocpatch/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 252
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kNeedMonEnd"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    if-eqz p2, :cond_0

    .line 254
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 256
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    return-void
.end method

.method public static a(Lcom/linearallocpatch/a;)V
    .locals 2
    .param p0, "libLoader"    # Lcom/linearallocpatch/a;

    .line 446
    const-class v0, Lcom/linearallocpatch/c;

    monitor-enter v0

    .line 447
    :try_start_0
    sput-object p0, Lcom/linearallocpatch/c;->c:Lcom/linearallocpatch/a;

    .line 448
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Lcom/linearallocpatch/b;)V
    .locals 2
    .param p0, "logger"    # Lcom/linearallocpatch/b;

    .line 440
    const-class v0, Lcom/linearallocpatch/c;

    monitor-enter v0

    .line 441
    :try_start_0
    sput-object p0, Lcom/linearallocpatch/c;->b:Lcom/linearallocpatch/b;

    .line 442
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 30
    invoke-static {p0}, Lcom/linearallocpatch/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    sget-object v0, Lcom/linearallocpatch/c;->c:Lcom/linearallocpatch/a;

    const-string v1, "linearallocpatch"

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, v1}, Lcom/linearallocpatch/a;->loadLib(Ljava/lang/String;)Z

    move-result v0

    .line 55
    sput-boolean v0, Lcom/linearallocpatch/c;->a:Z

    return v0

    .line 60
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    sput-boolean v0, Lcom/linearallocpatch/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot load the library: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/linearallocpatch/c;->c(Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    sput-boolean v2, Lcom/linearallocpatch/c;->a:Z

    .line 67
    :try_start_1
    const-string v5, "plugins_lib"

    invoke-virtual {p0, v5, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 68
    .local v5, "file":Ljava/io/File;
    :try_start_2
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "liblinearallocpatch.so"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 70
    sput-boolean v0, Lcom/linearallocpatch/c;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    .end local v5    # "file":Ljava/io/File;
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    :goto_0
    move-object v0, v5

    .line 72
    .local v0, "e2":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/linearallocpatch/c;->c(Ljava/lang/String;)V

    .line 73
    sput-boolean v2, Lcom/linearallocpatch/c;->a:Z

    .line 76
    .end local v0    # "e2":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    sget-boolean v0, Lcom/linearallocpatch/c;->a:Z

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crashFile"    # Ljava/io/File;

    .line 533
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    invoke-static {p0}, Lcom/linearallocpatch/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 538
    .local v1, "blackCrashPattern":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    const/4 v0, 0x6

    const-string v2, "LinearAllocPatch"

    const-string v3, "noBlackCrashPattern set, return match."

    invoke-static {v0, v2, v3}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v1, ".*(signal 6|signal 11).*"

    .line 543
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 534
    .end local v1    # "blackCrashPattern":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crashFile"    # Ljava/io/File;
    .param p2, "blackCrashPattern"    # Ljava/lang/String;

    const-string v0, "LinearAllocPatch"

    .line 548
    const/4 v1, 0x6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/linearallocpatch/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 550
    .local v4, "crashInfo":Ljava/lang/String;
    move-object v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mPaaSProductVersion: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/linearallocpatch/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 551
    const-string v3, "isCrashPatternMatch fail cause mPaaSProductVersion not this."

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return v2

    .line 556
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Process Name: \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 557
    const-string v3, "isCrashPatternMatch fail cause Process Name not this."

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return v2

    .line 562
    :cond_1
    const-string v3, "Thread Name: \'RenderThread\'"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "Thread Name: \'Renderer\'"

    .line 563
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 569
    :cond_2
    const-string v3, "/system/lib/libdvm.so (dvmAbort"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "/system/lib/libdvm.so (_Z14dvmLinearAllocP6Objectj"

    .line 570
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "LinearAlloc exceeded capacity"

    .line 571
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 572
    :cond_4
    const-string v3, "isCrashPatternMatch fail cause is LA Crash."

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return v2

    .line 577
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 578
    .local v5, "time":J
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 579
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 580
    .local v3, "isFind":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 581
    .end local v5    # "time":J
    .local v7, "time":J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isBlackCrashPattern spend "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v0, v5}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 582
    return v3

    .line 564
    .end local v3    # "isFind":Z
    .end local v7    # "time":J
    :cond_6
    :goto_0
    const-string v3, "isCrashPatternMatch fail cause is Render Crash."

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    return v2

    .line 583
    .end local v4    # "crashInfo":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 584
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 585
    return v2
.end method

.method private static a(Landroid/content/Context;ZLjava/util/List;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldStopLinearAlloc"    # Z
    .param p2, "sortFiles"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, "count":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 502
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 506
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CrashSDK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jni.log"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    invoke-static {p0, v2}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    const/4 p1, 0x1

    .line 509
    goto :goto_1

    .line 511
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 513
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 514
    :cond_2
    :goto_1
    return p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spKey"    # Ljava/lang/String;

    .line 465
    invoke-static {p0, p1}, Lcom/linearallocpatch/c;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 467
    .local v1, "lastPatchResult":I
    move v1, v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    invoke-static {p0}, Lcom/linearallocpatch/c;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    invoke-static {p0, p1, v0}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 477
    :cond_1
    return-void

    .line 471
    :cond_2
    :goto_0
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 261
    invoke-static {p0}, Lcom/linearallocpatch/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 262
    const-string v1, "kNeedMonEnd"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "need":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3
    .param p0, "switchItem"    # Ljava/lang/String;

    .line 366
    const-string v0, "master:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "master:off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    return v1

    .line 369
    :cond_0
    const-string v0, "blackModel:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 372
    .local v0, "model":Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 374
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 375
    return v1

    .line 379
    .end local v0    # "model":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LinearAllocPatch"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/linearallocpatch/c;->d(Ljava/lang/String;)V

    .line 381
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-static {p0, p1}, Lcom/linearallocpatch/c;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 321
    sget-object v0, Lcom/linearallocpatch/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 325
    .local v1, "mPackageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/linearallocpatch/c;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v1    # "mPackageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot get app version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/linearallocpatch/c;->c(Ljava/lang/String;)V

    .line 331
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lcom/linearallocpatch/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 432
    const/4 v0, 0x6

    const-string v1, "LinearAllocPatch"

    invoke-static {v0, v1, p0}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method static synthetic d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 436
    const/4 v0, 0x4

    const-string v1, "LinearAllocPatch"

    invoke-static {v0, v1, p0}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 340
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 341
    return v0

    .line 344
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/linearallocpatch/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 345
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "kLAPatchSwitch"

    const-string v5, "master:on"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    .line 347
    .local v4, "switchKey":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 348
    return v5

    .line 350
    :cond_1
    const-string v1, ";"

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 351
    array-length v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v1, v7

    .line 352
    .local v2, "switchItem":Ljava/lang/String;
    move-object v2, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 355
    invoke-static {v2}, Lcom/linearallocpatch/c;->b(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_2

    .line 356
    return v5

    .line 351
    .end local v2    # "switchItem":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 361
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v4    # "switchKey":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LinearAllocPatch"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/linearallocpatch/c;->c(Ljava/lang/String;)V

    .line 362
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)Lcom/linearallocpatch/e;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spKey"    # Ljava/lang/String;

    .line 226
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isArt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "VM is art, no need to patch LinearAlloc"

    invoke-static {v0}, Lcom/linearallocpatch/c;->d(Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/linearallocpatch/e;->b:Lcom/linearallocpatch/e;

    return-object v0

    .line 235
    :cond_0
    invoke-static {p0, p1}, Lcom/linearallocpatch/c;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 236
    .local v1, "storedPatchResult":I
    move v1, v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    sget-boolean v0, Lcom/linearallocpatch/c;->a:Z

    if-nez v0, :cond_2

    .line 242
    invoke-static {p0}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    sget-object v0, Lcom/linearallocpatch/e;->d:Lcom/linearallocpatch/e;

    return-object v0

    .line 246
    :cond_2
    sget-object v0, Lcom/linearallocpatch/e;->j:Lcom/linearallocpatch/e;

    return-object v0

    .line 238
    :cond_3
    :goto_0
    sget-object v0, Lcom/linearallocpatch/e;->e:Lcom/linearallocpatch/e;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "LinearAllocPatch"

    .line 390
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 391
    return-object v1

    .line 394
    :cond_0
    const/16 v2, 0xa

    :try_start_0
    invoke-static {p0}, Lcom/linearallocpatch/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object v4, v1

    .line 395
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "kLAPatchSwitch"

    const-string v6, "master:on"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v1

    .line 397
    .local v5, "switchKey":Ljava/lang/String;
    move-object v5, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    return-object v1

    .line 400
    :cond_1
    const-string v3, ";"

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 401
    array-length v6, v3

    const/4 v7, 0x0

    move-object v8, v1

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v9, v3, v7

    .line 402
    .local v8, "switchItem":Ljava/lang/String;
    move-object v8, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 405
    const-string v9, "blackCrash:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_2

    .line 407
    const/16 v9, 0xb

    :try_start_1
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 408
    :catchall_0
    move-exception v9

    .line 409
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/linearallocpatch/c;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 401
    .end local v8    # "switchItem":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 415
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v5    # "switchKey":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 413
    :catch_0
    move-exception v3

    .line 414
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linearallocpatch/c;->c(Ljava/lang/String;)V

    .line 417
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spKey"    # Ljava/lang/String;

    .line 274
    sget v0, Lcom/linearallocpatch/c;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 275
    return v0

    .line 278
    :cond_0
    invoke-static {p0}, Lcom/linearallocpatch/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 279
    .local v1, "sp":Landroid/content/SharedPreferences;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/linearallocpatch/c;->e:I

    .line 281
    const-string v0, "kAppVer"

    const-string v3, ""

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "hisVer":Ljava/lang/String;
    invoke-static {p0}, Lcom/linearallocpatch/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "currVer":Ljava/lang/String;
    sget v5, Lcom/linearallocpatch/c;->e:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    if-nez v5, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 294
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    sput v2, Lcom/linearallocpatch/c;->e:I

    .line 297
    :cond_2
    sget v0, Lcom/linearallocpatch/c;->e:I

    return v0

    .line 287
    :cond_3
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 288
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    :cond_4
    sget v0, Lcom/linearallocpatch/c;->e:I

    return v0
.end method

.method private static f(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 457
    const-string v0, "linearallocpatch"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, "shouldStopLinearAlloc":Z
    :try_start_0
    const-string v1, "crash"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 483
    .local v4, "root":Ljava/io/File;
    move-object v4, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 485
    .local v3, "files":[Ljava/io/File;
    move-object v3, v1

    if-eqz v1, :cond_0

    array-length v1, v3

    if-lez v1, :cond_0

    .line 486
    invoke-static {v3}, Lcom/linearallocpatch/c;->a([Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 487
    .local v1, "sortFiles":Ljava/util/List;
    invoke-static {p0, v2, v1}, Lcom/linearallocpatch/c;->a(Landroid/content/Context;ZLjava/util/List;)Z

    move-result v2

    move v0, v2

    .line 489
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->traceNativeCrash()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    .end local v1    # "sortFiles":Ljava/util/List;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "root":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 492
    :catchall_0
    move-exception v1

    .line 493
    .local v1, "tr":Ljava/lang/Throwable;
    const/4 v2, 0x6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LinearAllocPatch"

    invoke-static {v2, v4, v3}, Lcom/linearallocpatch/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 495
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method
