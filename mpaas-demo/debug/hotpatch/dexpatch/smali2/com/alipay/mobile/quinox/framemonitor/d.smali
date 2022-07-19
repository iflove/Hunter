.class public final Lcom/alipay/mobile/quinox/framemonitor/d;
.super Lcom/alipay/mobile/quinox/framemonitor/b;
.source "CpuSampler.java"


# instance fields
.field private final d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/alipay/mobile/quinox/framemonitor/cpu/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/alipay/mobile/quinox/framemonitor/tool/b;

.field private f:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/alipay/mobile/quinox/framemonitor/cpu/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    const-wide/16 v0, 0xde

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/b;-><init>(J)V

    .line 39
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/tool/b;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/framemonitor/tool/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->e:Lcom/alipay/mobile/quinox/framemonitor/tool/b;

    .line 44
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/tool/d;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/tool/d;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->d:Ljava/util/LinkedHashMap;

    .line 45
    return-void
.end method

.method private static a(Lcom/alipay/mobile/quinox/framemonitor/cpu/a;Lcom/alipay/mobile/quinox/framemonitor/cpu/a;)Lcom/alipay/mobile/quinox/framemonitor/cpu/c;
    .locals 16
    .param p0, "oldSample"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/a;
    .param p1, "newSample"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/a;

    .line 128
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/tool/c;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/framemonitor/tool/c;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 129
    .local v2, "parser":Lcom/alipay/mobile/quinox/framemonitor/tool/c;
    move-object v2, v0

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/quinox/framemonitor/tool/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/framemonitor/cpu/b;

    move-result-object v0

    .line 130
    .local v0, "oldCpuInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/b;
    move-object/from16 v4, p1

    iget-object v5, v4, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/quinox/framemonitor/tool/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/framemonitor/cpu/b;

    move-result-object v5

    .line 132
    .local v5, "newCpuInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/b;
    const-wide/16 v6, 0x0

    .line 133
    .local v6, "totalCpuTime":J
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/framemonitor/cpu/b;->a()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/cpu/b;->a()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 137
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/alipay/mobile/quinox/framemonitor/d;->c(Lcom/alipay/mobile/quinox/framemonitor/cpu/a;Lcom/alipay/mobile/quinox/framemonitor/cpu/a;)Ljava/util/List;

    move-result-object v8

    .line 138
    .local v8, "procInfoList":Ljava/util/List;
    invoke-static/range {p0 .. p1}, Lcom/alipay/mobile/quinox/framemonitor/d;->b(Lcom/alipay/mobile/quinox/framemonitor/cpu/a;Lcom/alipay/mobile/quinox/framemonitor/cpu/a;)Ljava/util/List;

    move-result-object v9

    .line 140
    .local v9, "threadInfoList":Ljava/util/List;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    .line 141
    .local v10, "myPid":I
    const-wide/16 v11, 0x0

    .line 142
    .local v11, "myProcessTotalCpuTime":J
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;

    .line 143
    .local v1, "procInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    move-object v1, v14

    iget v14, v14, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->a:I

    if-ne v14, v10, :cond_1

    .line 144
    iget-wide v13, v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->c:J

    move-object v15, v2

    .end local v2    # "parser":Lcom/alipay/mobile/quinox/framemonitor/tool/c;
    .local v15, "parser":Lcom/alipay/mobile/quinox/framemonitor/tool/c;
    iget-wide v2, v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->d:J

    add-long v11, v13, v2

    .line 145
    goto :goto_1

    .line 143
    .end local v15    # "parser":Lcom/alipay/mobile/quinox/framemonitor/tool/c;
    .restart local v2    # "parser":Lcom/alipay/mobile/quinox/framemonitor/tool/c;
    :cond_1
    move-object v15, v2

    .line 147
    .end local v1    # "procInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    .end local v2    # "parser":Lcom/alipay/mobile/quinox/framemonitor/tool/c;
    .restart local v15    # "parser":Lcom/alipay/mobile/quinox/framemonitor/tool/c;
    move-object/from16 v3, p0

    goto :goto_0

    .line 142
    .end local v15    # "parser":Lcom/alipay/mobile/quinox/framemonitor/tool/c;
    .restart local v2    # "parser":Lcom/alipay/mobile/quinox/framemonitor/tool/c;
    :cond_2
    move-object v15, v2

    .line 148
    .end local v2    # "parser":Lcom/alipay/mobile/quinox/framemonitor/tool/c;
    .restart local v15    # "parser":Lcom/alipay/mobile/quinox/framemonitor/tool/c;
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v3, v11, v1

    if-nez v3, :cond_3

    .line 149
    const-wide/16 v11, 0x1

    .line 152
    :cond_3
    new-instance v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

    invoke-direct {v1, v6, v7, v11, v12}, Lcom/alipay/mobile/quinox/framemonitor/cpu/c;-><init>(JJ)V

    .line 153
    .local v1, "cpuUsageInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/c;
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 154
    iget-object v2, v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/c;->c:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 157
    iget-object v2, v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/c;->d:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    :cond_5
    return-object v1
.end method

.method private static b(Lcom/alipay/mobile/quinox/framemonitor/cpu/a;Lcom/alipay/mobile/quinox/framemonitor/cpu/a;)Ljava/util/List;
    .locals 12
    .param p0, "oldSample"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/a;
    .param p1, "newSample"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/framemonitor/cpu/a;",
            "Lcom/alipay/mobile/quinox/framemonitor/cpu/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/framemonitor/cpu/e;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 168
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 169
    .local v0, "oldThreadInfoMap":Landroid/util/SparseArray;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/g;

    .line 170
    .local v3, "threadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/g;
    iget-object v5, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/g;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/quinox/framemonitor/tool/c;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/framemonitor/cpu/e;

    move-result-object v5

    .line 171
    .local v4, "parsedThreadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    move-object v4, v5

    if-eqz v5, :cond_1

    .line 172
    iget v5, v4, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->a:I

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    .end local v3    # "threadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/g;
    .end local v4    # "parsedThreadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    :cond_1
    goto :goto_0

    .line 175
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 176
    .local v1, "newThreadInfoMap":Landroid/util/SparseArray;
    iget-object v3, p1, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/g;

    .line 177
    .local v4, "threadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/g;
    iget-object v6, v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/g;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/mobile/quinox/framemonitor/tool/c;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/framemonitor/cpu/e;

    move-result-object v6

    .line 178
    .local v5, "parsedThreadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    move-object v5, v6

    if-eqz v6, :cond_3

    .line 179
    iget v6, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->a:I

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    .end local v4    # "threadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/g;
    .end local v5    # "parsedThreadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    :cond_3
    goto :goto_1

    .line 183
    :cond_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 184
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    .local v4, "diffThreadInfoList":Ljava/util/List;
    const/4 v5, 0x0

    move v6, v5

    move-object v5, v2

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_8

    .line 186
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;

    .line 187
    .local v7, "newProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    iget v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->a:I

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;

    .line 188
    .local v2, "oldProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    move-object v2, v8

    if-eqz v8, :cond_5

    iget v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->a:I

    iget v9, v2, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->a:I

    if-ne v8, v9, :cond_7

    .line 189
    :cond_5
    new-instance v8, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;

    invoke-direct {v8}, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;-><init>()V

    .line 190
    .local v5, "diffThreadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    move-object v5, v8

    iget v9, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->a:I

    iput v9, v8, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->a:I

    .line 191
    iget-object v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->b:Ljava/lang/String;

    iput-object v8, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->b:Ljava/lang/String;

    .line 192
    if-nez v2, :cond_6

    .line 193
    iget-wide v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->d:J

    iput-wide v8, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->d:J

    .line 194
    iget-wide v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->c:J

    iput-wide v8, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->c:J

    goto :goto_3

    .line 196
    :cond_6
    iget-wide v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->d:J

    iget-wide v10, v2, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->d:J

    sub-long/2addr v8, v10

    iput-wide v8, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->d:J

    .line 197
    iget-wide v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->c:J

    iget-wide v10, v2, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->c:J

    sub-long/2addr v8, v10

    iput-wide v8, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->c:J

    .line 199
    :goto_3
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v2    # "oldProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    .end local v5    # "diffThreadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    .end local v7    # "newProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 202
    .end local v6    # "i":I
    :cond_8
    new-instance v2, Lcom/alipay/mobile/quinox/framemonitor/d$2;

    invoke-direct {v2}, Lcom/alipay/mobile/quinox/framemonitor/d$2;-><init>()V

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    return-object v4

    .line 166
    .end local v0    # "oldThreadInfoMap":Landroid/util/SparseArray;
    .end local v1    # "newThreadInfoMap":Landroid/util/SparseArray;
    .end local v3    # "size":I
    .end local v4    # "diffThreadInfoList":Ljava/util/List;
    :cond_9
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/alipay/mobile/quinox/framemonitor/cpu/a;Lcom/alipay/mobile/quinox/framemonitor/cpu/a;)Ljava/util/List;
    .locals 12
    .param p0, "oldSample"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/a;
    .param p1, "newSample"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/framemonitor/cpu/a;",
            "Lcom/alipay/mobile/quinox/framemonitor/cpu/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/framemonitor/cpu/d;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 220
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 221
    .local v0, "oldProcInfoMap":Landroid/util/SparseArray;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/f;

    .line 222
    .local v3, "procInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/f;
    iget-object v5, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/f;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/quinox/framemonitor/tool/c;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/framemonitor/cpu/d;

    move-result-object v5

    .line 223
    .local v4, "parsedProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    move-object v4, v5

    if-eqz v5, :cond_1

    .line 224
    iget v5, v4, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->a:I

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    .end local v3    # "procInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/f;
    .end local v4    # "parsedProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    :cond_1
    goto :goto_0

    .line 227
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 228
    .local v1, "newProcInfoMap":Landroid/util/SparseArray;
    iget-object v3, p1, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/f;

    .line 229
    .local v4, "procInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/f;
    iget-object v6, v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/f;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/mobile/quinox/framemonitor/tool/c;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/framemonitor/cpu/d;

    move-result-object v6

    .line 230
    .local v5, "parsedProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    move-object v5, v6

    if-eqz v6, :cond_3

    .line 231
    iget v6, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->a:I

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    .end local v4    # "procInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/f;
    .end local v5    # "parsedProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    :cond_3
    goto :goto_1

    .line 235
    :cond_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 236
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .local v4, "diffProcInfoList":Ljava/util/List;
    const/4 v5, 0x0

    move v6, v5

    move-object v5, v2

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_8

    .line 238
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;

    .line 239
    .local v7, "newProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    iget v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->a:I

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;

    .line 241
    .local v2, "oldProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    move-object v2, v8

    if-eqz v8, :cond_5

    iget v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->a:I

    iget v9, v2, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->a:I

    if-ne v8, v9, :cond_7

    .line 242
    :cond_5
    new-instance v8, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;

    invoke-direct {v8}, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;-><init>()V

    .line 243
    .local v5, "diffProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    move-object v5, v8

    iget v9, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->a:I

    iput v9, v8, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->a:I

    .line 244
    iget-object v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->b:Ljava/lang/String;

    iput-object v8, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->b:Ljava/lang/String;

    .line 245
    if-nez v2, :cond_6

    .line 246
    iget-wide v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->d:J

    iput-wide v8, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->d:J

    .line 247
    iget-wide v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->c:J

    iput-wide v8, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->c:J

    goto :goto_3

    .line 249
    :cond_6
    iget-wide v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->d:J

    iget-wide v10, v2, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->d:J

    sub-long/2addr v8, v10

    iput-wide v8, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->d:J

    .line 250
    iget-wide v8, v7, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->c:J

    iget-wide v10, v2, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->c:J

    sub-long/2addr v8, v10

    iput-wide v8, v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->c:J

    .line 252
    :goto_3
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v2    # "oldProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    .end local v5    # "diffProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    .end local v7    # "newProcInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 255
    .end local v6    # "i":I
    :cond_8
    new-instance v2, Lcom/alipay/mobile/quinox/framemonitor/d$3;

    invoke-direct {v2}, Lcom/alipay/mobile/quinox/framemonitor/d$3;-><init>()V

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 264
    return-object v4

    .line 218
    .end local v0    # "oldProcInfoMap":Landroid/util/SparseArray;
    .end local v1    # "newProcInfoMap":Landroid/util/SparseArray;
    .end local v3    # "size":I
    .end local v4    # "diffProcInfoList":Ljava/util/List;
    :cond_9
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/alipay/mobile/quinox/framemonitor/cpu/c;
    .locals 6
    .param p1, "endTime"    # J

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->d:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 80
    .local v1, "entries":[Ljava/util/Map$Entry;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    array-length v0, v1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/d$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/framemonitor/d$1;-><init>(Lcom/alipay/mobile/quinox/framemonitor/d;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 91
    const/4 v0, -0x1

    .line 92
    .local v0, "lastIndex":I
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 93
    aget-object v3, v1, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-ltz v5, :cond_1

    .line 94
    move v0, v2

    .line 95
    goto :goto_1

    .line 92
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-gtz v0, :cond_3

    .line 99
    const/4 v0, 0x1

    .line 101
    :cond_3
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    .local v2, "oldSample":Ljava/util/Map$Entry;
    aget-object v3, v1, v0

    .line 102
    .local v3, "newSample":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/framemonitor/d;->a(Lcom/alipay/mobile/quinox/framemonitor/cpu/a;Lcom/alipay/mobile/quinox/framemonitor/cpu/a;)Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

    move-result-object v4

    return-object v4

    .line 80
    .end local v0    # "lastIndex":I
    .end local v1    # "entries":[Ljava/util/Map$Entry;
    .end local v2    # "oldSample":Ljava/util/Map$Entry;
    .end local v3    # "newSample":Ljava/util/Map$Entry;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final bridge synthetic a()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/alipay/mobile/quinox/framemonitor/b;->a()V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/alipay/mobile/quinox/framemonitor/b;->b()V

    return-void
.end method

.method protected final c()V
    .locals 6

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->e:Lcom/alipay/mobile/quinox/framemonitor/tool/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/tool/b;->a()Lcom/alipay/mobile/quinox/framemonitor/cpu/a;

    move-result-object v0

    .line 56
    .local v0, "cpuUsageSample":Lcom/alipay/mobile/quinox/framemonitor/cpu/a;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 57
    .local v1, "key":J
    iget-object v3, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->f:Landroid/util/Pair;

    if-nez v3, :cond_0

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->f:Landroid/util/Pair;

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->d:Ljava/util/LinkedHashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->d:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    .end local v0    # "cpuUsageSample":Lcom/alipay/mobile/quinox/framemonitor/cpu/a;
    .end local v1    # "key":J
    :catchall_1
    move-exception v0

    .line 64
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "CpuSampler"

    const-string v2, "fail do cpu sample"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public final d()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->f:Landroid/util/Pair;

    .line 49
    return-void
.end method

.method public final e()Lcom/alipay/mobile/quinox/framemonitor/cpu/c;
    .locals 5

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "lastestSample":Lcom/alipay/mobile/quinox/framemonitor/cpu/a;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->d:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;

    .line 115
    move-object v0, v3

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    .line 118
    .local v2, "sampleSize":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->f:Landroid/util/Pair;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v1, v0, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/d;->f:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/a;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/framemonitor/d;->a(Lcom/alipay/mobile/quinox/framemonitor/cpu/a;Lcom/alipay/mobile/quinox/framemonitor/cpu/a;)Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

    move-result-object v1

    return-object v1

    .line 120
    :cond_2
    :goto_1
    const-string v1, "CpuSampler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "not enough sample, size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x0

    return-object v1

    .line 118
    .end local v2    # "sampleSize":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
