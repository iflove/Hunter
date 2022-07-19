.class public Lcom/alipay/mobile/common/logging/helper/YearClass;
.super Ljava/lang/Object;
.source "YearClass.java"


# static fields
.field public static final CLASS_2008:I = 0x7d8

.field public static final CLASS_2009:I = 0x7d9

.field public static final CLASS_2010:I = 0x7da

.field public static final CLASS_2011:I = 0x7db

.field public static final CLASS_2012:I = 0x7dc

.field public static final CLASS_2013:I = 0x7dd

.field public static final CLASS_2014:I = 0x7de

.field public static final CLASS_2015:I = 0x7df

.field public static final CLASS_UNKNOWN:I = -0x1

.field private static volatile a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 2

    .line 128
    const/4 v0, 0x0

    .local v0, "cores":I
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getNumberOfCPUCores()I

    move-result v1

    .line 129
    move v0, v1

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 130
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v1, 0x7d8

    return v1

    .line 131
    :cond_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    const/16 v1, 0x7db

    return v1

    .line 132
    :cond_2
    const/16 v1, 0x7dc

    return v1
.end method

.method private static a(Landroid/content/Context;)I
    .locals 7
    .param p0, "c"    # Landroid/content/Context;

    .line 65
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 66
    .local v2, "totalRam":J
    move-wide v2, v0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 67
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/helper/YearClass;->b(Landroid/content/Context;)I

    move-result v0

    return v0

    .line 70
    :cond_0
    const-wide/32 v0, 0x30000000

    cmp-long v4, v2, v0

    if-gtz v4, :cond_2

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getNumberOfCPUCores()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    const/16 v0, 0x7d9

    return v0

    :cond_1
    const/16 v0, 0x7da

    return v0

    .line 73
    :cond_2
    const-wide/32 v0, 0x40000000

    const/16 v4, 0x7dc

    cmp-long v5, v2, v0

    if-gtz v5, :cond_4

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getCPUMaxFreqKHz()I

    move-result v0

    const v1, 0x13d620

    if-ge v0, v1, :cond_3

    const/16 v0, 0x7db

    return v0

    :cond_3
    return v4

    .line 76
    :cond_4
    const-wide/32 v0, 0x60000000

    const/16 v5, 0x7dd

    cmp-long v6, v2, v0

    if-gtz v6, :cond_6

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getCPUMaxFreqKHz()I

    move-result v0

    const v1, 0x1b7740

    if-ge v0, v1, :cond_5

    return v4

    :cond_5
    return v5

    .line 79
    :cond_6
    const-wide v0, 0x80000000L

    cmp-long v4, v2, v0

    if-gtz v4, :cond_7

    .line 80
    return v5

    .line 82
    :cond_7
    const-wide v0, 0xc0000000L

    cmp-long v4, v2, v0

    if-gtz v4, :cond_8

    const/16 v0, 0x7de

    return v0

    :cond_8
    const/16 v0, 0x7df

    return v0
.end method

.method private static a(Ljava/util/ArrayList;I)V
    .locals 1
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 53
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void
.end method

.method private static b()I
    .locals 7

    .line 156
    const-wide/16 v0, 0x0

    .local v0, "clockSpeedKHz":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getCPUMaxFreqKHz()I

    move-result v2

    int-to-long v2, v2

    .line 157
    move-wide v0, v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v2, -0x1

    return v2

    .line 160
    :cond_0
    const-wide/32 v2, 0x80e80

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const/16 v2, 0x7d8

    return v2

    .line 161
    :cond_1
    const-wide/32 v2, 0x975e0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    const/16 v2, 0x7d9

    return v2

    .line 162
    :cond_2
    const-wide/32 v2, 0xf9060

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    const/16 v2, 0x7da

    return v2

    .line 163
    :cond_3
    const-wide/32 v2, 0x129da0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    const/16 v2, 0x7db

    return v2

    .line 164
    :cond_4
    const-wide/32 v2, 0x173180

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    const/16 v2, 0x7dc

    return v2

    .line 165
    :cond_5
    const-wide/32 v2, 0x1ed2a0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_6

    const/16 v2, 0x7dd

    return v2

    .line 166
    :cond_6
    const/16 v2, 0x7de

    return v2
.end method

.method private static b(Landroid/content/Context;)I
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 95
    .local v1, "componentYears":Ljava/util/ArrayList;
    move-object v1, v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/YearClass;->a()I

    move-result v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/helper/YearClass;->a(Ljava/util/ArrayList;I)V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/helper/YearClass;->b()I

    move-result v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/helper/YearClass;->a(Ljava/util/ArrayList;I)V

    .line 97
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/helper/YearClass;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/helper/YearClass;->a(Ljava/util/ArrayList;I)V

    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, -0x1

    return v0

    .line 100
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 102
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 104
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v2

    .line 106
    .local v0, "baseIndex":I
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    .line 107
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 106
    return v2
.end method

.method private static c(Landroid/content/Context;)I
    .locals 7
    .param p0, "c"    # Landroid/content/Context;

    .line 190
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 191
    .local v4, "totalRam":J
    move-wide v4, v0

    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    const/4 v0, -0x1

    return v0

    .line 192
    :cond_0
    const-wide/32 v0, 0xc000000

    cmp-long v2, v4, v0

    if-gtz v2, :cond_1

    const/16 v0, 0x7d8

    return v0

    .line 193
    :cond_1
    const-wide/32 v0, 0x12200000

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    const/16 v0, 0x7d9

    return v0

    .line 194
    :cond_2
    const-wide/32 v0, 0x20000000

    cmp-long v2, v4, v0

    if-gtz v2, :cond_3

    const/16 v0, 0x7da

    return v0

    .line 195
    :cond_3
    const-wide/32 v0, 0x40000000

    cmp-long v2, v4, v0

    if-gtz v2, :cond_4

    const/16 v0, 0x7db

    return v0

    .line 196
    :cond_4
    const-wide/32 v0, 0x60000000

    cmp-long v2, v4, v0

    if-gtz v2, :cond_5

    const/16 v0, 0x7dc

    return v0

    .line 197
    :cond_5
    const-wide v0, 0x80000000L

    cmp-long v2, v4, v0

    if-gtz v2, :cond_6

    const/16 v0, 0x7dd

    return v0

    .line 198
    :cond_6
    const/16 v0, 0x7de

    return v0
.end method

.method public static get(Landroid/content/Context;)I
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 42
    sget-object v0, Lcom/alipay/mobile/common/logging/helper/YearClass;->a:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/alipay/mobile/common/logging/helper/YearClass;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/helper/YearClass;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 45
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/helper/YearClass;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/logging/helper/YearClass;->a:Ljava/lang/Integer;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/logging/helper/YearClass;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
