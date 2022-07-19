.class Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;
.super Ljava/lang/Object;
.source "CpuInfoPolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CpuInfoSampling"
.end annotation


# instance fields
.field private final a:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;->a:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;->b:Ljava/util/List;

    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;->c:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 16
    .param p0, "freqList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 124
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v0, "topFreqList":Ljava/util/List;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 129
    .local v6, "pair":Landroid/util/Pair;
    const-wide/16 v7, -0x1

    .line 130
    .local v7, "max":J
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;

    iget-object v9, v9, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuCurrentFreq:[J

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_2

    aget-wide v12, v9, v11

    .line 131
    .local v4, "l":J
    move-wide v4, v12

    cmp-long v14, v12, v7

    if-lez v14, :cond_1

    .line 132
    move-wide v7, v4

    .line 130
    .end local v4    # "l":J
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 135
    :cond_2
    cmp-long v9, v7, v2

    if-lez v9, :cond_3

    .line 138
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v6    # "pair":Landroid/util/Pair;
    .end local v7    # "max":J
    goto :goto_0

    .line 140
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    return-void

    .line 144
    :cond_4
    const/4 v1, 0x0

    .line 145
    .local v1, "stage":I
    const-wide/16 v2, 0x0

    .line 146
    .local v2, "lastFreq":J
    const/4 v4, 0x0

    .line 147
    .local v4, "maxFreqStartIndex":I
    const/4 v5, 0x0

    .line 148
    .local v5, "maxFreqEndIndex":I
    const/4 v6, 0x0

    .line 149
    .local v6, "violationFound":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "CpuInfoPolling"

    if-ge v7, v8, :cond_d

    .line 150
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 151
    .local v8, "pair":Landroid/util/Pair;
    if-eqz v1, :cond_9

    const/4 v10, 0x1

    if-eq v1, v10, :cond_6

    const/4 v10, 0x2

    if-eq v1, v10, :cond_5

    .line 189
    const/4 v6, 0x1

    .line 190
    const-string v10, "invalid state"

    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 180
    :cond_5
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v12, v10, v2

    if-lez v12, :cond_c

    .line 183
    const/4 v6, 0x1

    .line 185
    goto :goto_3

    .line 168
    :cond_6
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v12, v10, v2

    if-nez v12, :cond_7

    .line 169
    move v5, v7

    goto :goto_3

    .line 170
    :cond_7
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v12, v10, v2

    if-gez v12, :cond_8

    .line 171
    const/4 v1, 0x2

    goto :goto_3

    .line 173
    :cond_8
    const/4 v6, 0x1

    .line 175
    goto :goto_3

    .line 154
    :cond_9
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v12, v10, v2

    if-lez v12, :cond_a

    .line 155
    move v4, v7

    .line 156
    move v5, v7

    goto :goto_3

    .line 157
    :cond_a
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v12, v10, v2

    if-nez v12, :cond_b

    .line 158
    move v5, v7

    .line 159
    const/4 v1, 0x1

    goto :goto_3

    .line 160
    :cond_b
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v12, v10, v2

    if-gez v12, :cond_c

    .line 161
    const/4 v1, 0x2

    .line 193
    :cond_c
    :goto_3
    if-nez v6, :cond_d

    .line 196
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 149
    .end local v8    # "pair":Landroid/util/Pair;
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 199
    .end local v7    # "i":I
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [J

    .line 200
    .local v7, "tmpArr":[J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    array-length v10, v7

    if-ge v8, v10, :cond_e

    .line 201
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v7, v8

    .line 200
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 203
    .end local v8    # "i":I
    :cond_e
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 204
    .local v8, "start":Landroid/util/Pair;
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    const/4 v11, 0x0

    .line 205
    .local v11, "end":Landroid/util/Pair;
    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v12, v14

    .line 206
    .local v12, "durationMs":J
    const-string v10, ", freq: "

    const-string v14, "Duration: "

    if-eqz v6, :cond_f

    .line 207
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", violation found, "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method


# virtual methods
.method public restart()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    return-void
.end method

.method public run()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;->a:Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->readCpuInfo()Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;

    move-result-object v0

    .line 103
    .local v0, "cpuInfo":Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dump cpu info: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CpuInfoPolling"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;->b:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;->a(Ljava/util/List;)V

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 110
    .local v2, "handler":Landroid/os/Handler;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 111
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling$CpuInfoSampling;->c:Landroid/os/Handler;

    .line 117
    return-void
.end method
