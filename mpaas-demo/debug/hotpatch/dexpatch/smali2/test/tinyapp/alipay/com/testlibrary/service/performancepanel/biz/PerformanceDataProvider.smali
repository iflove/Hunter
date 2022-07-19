.class public Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;
.super Ljava/lang/Object;
.source "PerformanceDataProvider.java"

# interfaces
.implements Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider$ParseException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider<",
        "Ljava/util/List<",
        "Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static e:Ljava/util/concurrent/atomic/AtomicLong;

.field private static f:Ljava/util/concurrent/atomic/AtomicLong;

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->b:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->c:Ljava/util/Map;

    return-void
.end method

.method private static a()J
    .locals 2

    .line 84
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/Object;)J
    .locals 5
    .param p0, "source"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")J"
        }
    .end annotation

    .line 360
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 361
    .local v3, "value":Ljava/lang/Object;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_2

    instance-of v2, v3, Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 364
    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 366
    :cond_1
    return-wide v0

    .line 362
    :cond_2
    :goto_0
    move-object v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 369
    .end local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PerformanceDataProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-wide v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 300
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 303
    array-length v2, v1

    const/4 v3, 0x0

    move-object v5, v0

    move-object v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v7, v1, v4

    .line 304
    .local v5, "field":Ljava/lang/reflect/Field;
    move-object v5, v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 312
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/util/Map;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 313
    const-string v7, "com.alipay.mobile.liteprocess.perf.PerformanceLogger$TrackType"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 314
    .local v7, "trackType":Ljava/lang/Class;
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 315
    .local v6, "trackInfoMap":Ljava/util/Map;
    move-object v6, v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 316
    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_0

    .line 317
    return-object v6

    .line 303
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "trackInfoMap":Ljava/util/Map;
    .end local v7    # "trackType":Ljava/lang/Class;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 323
    :cond_1
    goto :goto_1

    .line 322
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    :goto_1
    return-object v0
.end method

.method public static a(I)V
    .locals 1
    .param p0, "time"    # I

    .line 88
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 89
    return-void
.end method

.method public static a(J)V
    .locals 1
    .param p0, "time"    # J

    .line 80
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 81
    return-void
.end method

.method private a(Ljava/util/Map;Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;)V
    .locals 3
    .param p1, "performanceData"    # Ljava/util/Map;
    .param p2, "userAction"    # Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;",
            ")V"
        }
    .end annotation

    .line 145
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider$1;->a:[I

    invoke-virtual {p2}, Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "startup_time"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void

    .line 148
    :cond_2
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->c:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method private static a(Ljava/util/Map;[Ljava/lang/Enum;)V
    .locals 4
    .param p0, "source"    # Ljava/util/Map;
    .param p1, "trackTypeConstants"    # [Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum;",
            ">;[",
            "Ljava/lang/Enum;",
            ")V"
        }
    .end annotation

    .line 334
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    array-length v2, p1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 336
    :goto_1
    if-eqz v0, :cond_2

    .line 337
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 338
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 339
    .local v2, "trackType":Ljava/lang/Enum;
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .end local v2    # "trackType":Ljava/lang/Enum;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 342
    :cond_2
    return-void
.end method

.method public static a(Z)V
    .locals 1
    .param p0, "cached"    # Z

    .line 108
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    return-void
.end method

.method private static a(Ljava/util/Map;)Z
    .locals 1
    .param p0, "performanceData"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 162
    const-string v0, "startup_time"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "page_switch_time"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "cache_size"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 162
    return v0
.end method

.method private static b()I
    .locals 1

    .line 92
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private static b(Ljava/util/Map;)Ljava/util/List;
    .locals 8
    .param p0, "performanceData"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "displayItemInfoList":Ljava/util/List;
    const-string v1, "\u542f\u52a8\u548c\u5207\u6362"

    .line 271
    .local v1, "categoryStartup":Ljava/lang/String;
    invoke-static {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->a(Ljava/lang/String;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const-string v2, "startup_time"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    .local v2, "startupTime":Ljava/lang/String;
    nop

    .line 274
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "--"

    const-string v6, "ms"

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    :goto_0
    const-string v7, "\u542f\u52a8\u8017\u65f6: "

    invoke-static {v1, v7, v4}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    const-string v4, "page_switch_time"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 276
    .local v4, "switchPageTime":Ljava/lang/String;
    nop

    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 276
    :goto_1
    const-string v3, "\u5207\u9875\u9762\u8017\u65f6: "

    invoke-static {v1, v3, v5}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v3, "\u5176\u5b83"

    .line 282
    .local v3, "categoryOther":Ljava/lang/String;
    invoke-static {v3}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->a(Ljava/lang/String;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    const-string v6, "cache_size"

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    const-string v6, "\u6570\u636e\u7f13\u5b58: "

    invoke-static {v3, v6, v5}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    return-object v0
.end method

.method public static b(J)V
    .locals 1
    .param p0, "time"    # J

    .line 96
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 97
    return-void
.end method

.method private static c()J
    .locals 2

    .line 100
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private static d()Z
    .locals 1

    .line 104
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static e()Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    .local v0, "obj":Ljava/lang/Object;
    const-string v1, "com.alipay.mobile.liteprocess.perf.PerformanceLogger"

    const-string v2, "getPerformanceData"

    invoke-static {v1, v2}, Ltest/tinyapp/alipay/com/testlibrary/util/ReflectUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    move-object v0, v1

    if-eqz v1, :cond_5

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_0

    move-object/from16 v16, v0

    goto/16 :goto_0

    .line 173
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 174
    .local v3, "performanceDataMap":Ljava/util/Map;
    move-object v3, v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 175
    sget-object v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->b:Ljava/util/Map;

    return-object v1

    .line 179
    :cond_1
    const-string v1, "open_app_time"

    invoke-static {v3, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ljava/util/Map;Ljava/lang/Object;)J

    move-result-wide v4

    .line 180
    .local v4, "openAppTime":J
    const-string v1, "preload_complete_cost"

    invoke-static {v3, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ljava/util/Map;Ljava/lang/Object;)J

    move-result-wide v6

    .line 181
    .local v6, "preLoadedTime":J
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 184
    .local v8, "startupTime":J
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->b()I

    move-result v1

    int-to-long v10, v1

    const-wide/16 v12, 0x0

    move-wide v14, v12

    .line 185
    .local v14, "pageSwitchTime":J
    move-wide v14, v10

    .line 186
    .local v10, "tempTime":J
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->c()J

    move-result-wide v16

    cmp-long v1, v16, v12

    if-eqz v1, :cond_2

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->c()J

    move-result-wide v18

    sub-long v14, v16, v18

    .line 189
    :cond_2
    cmp-long v1, v14, v12

    if-gtz v1, :cond_3

    .line 190
    move-wide v14, v10

    .line 193
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getCurrentStorageSize()I

    move-result v1

    .line 195
    .local v1, "cacheSize":I
    cmp-long v16, v8, v12

    if-gtz v16, :cond_4

    .line 196
    sget-object v2, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->b:Ljava/util/Map;

    return-object v2

    .line 199
    :cond_4
    new-instance v12, Ljava/util/HashMap;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 200
    .local v2, "performanceData":Ljava/util/Map;
    move-object v2, v12

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v0

    .end local v0    # "obj":Ljava/lang/Object;
    .local v16, "obj":Ljava/lang/Object;
    const-string v0, "startup_time"

    invoke-interface {v12, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v12, "page_switch_time"

    invoke-interface {v2, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v12, "pre_loaded_time"

    invoke-interface {v2, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v12, "cache_size"

    invoke-interface {v2, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-object v2

    .line 169
    .end local v1    # "cacheSize":I
    .end local v2    # "performanceData":Ljava/util/Map;
    .end local v3    # "performanceDataMap":Ljava/util/Map;
    .end local v4    # "openAppTime":J
    .end local v6    # "preLoadedTime":J
    .end local v8    # "startupTime":J
    .end local v10    # "tempTime":J
    .end local v14    # "pageSwitchTime":J
    .end local v16    # "obj":Ljava/lang/Object;
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_5
    move-object/from16 v16, v0

    .line 170
    .end local v0    # "obj":Ljava/lang/Object;
    .restart local v16    # "obj":Ljava/lang/Object;
    :goto_0
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->b:Ljava/util/Map;

    return-object v0
.end method

.method private static f()Ljava/util/Map;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    const-string v0, "com.alipay.mobile.liteprocess.perf.PerformanceLogger"

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 210
    .local v1, "trackInfoMap":Ljava/util/Map;
    const-string v0, "com.alipay.mobile.liteprocess.perf.PerformanceLogger$TrackType"

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/util/ReflectUtil;->a(Ljava/lang/String;)[Ljava/lang/Enum;

    move-result-object v2

    .line 212
    .local v2, "trackTypeConstants":[Ljava/lang/Enum;
    const/4 v0, 0x0

    .line 214
    .local v0, "foundError":Z
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 215
    :cond_0
    const/4 v0, 0x1

    .line 219
    :cond_1
    if-nez v0, :cond_2

    invoke-static {v2}, Ltest/tinyapp/alipay/com/testlibrary/util/CollectionsUtil;->a([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    const/4 v0, 0x1

    move v3, v0

    goto :goto_0

    .line 223
    :cond_2
    move v3, v0

    .end local v0    # "foundError":Z
    .local v3, "foundError":Z
    :goto_0
    if-eqz v3, :cond_3

    .line 225
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->b:Ljava/util/Map;

    return-object v0

    .line 229
    :cond_3
    sget-object v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a:Ljava/util/Map;

    invoke-static {v0, v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ljava/util/Map;[Ljava/lang/Enum;)V

    .line 232
    :try_start_0
    const-string v5, "STARTUP_OPEN"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 233
    .local v5, "openAppTimeKey":Ljava/lang/Enum;
    :try_start_1
    invoke-static {v1, v5}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ljava/util/Map;Ljava/lang/Object;)J

    move-result-wide v6

    .line 235
    .local v6, "openAppTime":J
    const-string v8, "STARTUP_DOM_READY"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Enum;

    .line 236
    .local v8, "domReadyTimeKey":Ljava/lang/Enum;
    invoke-static {v1, v8}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ljava/util/Map;Ljava/lang/Object;)J

    move-result-wide v9

    .line 238
    .local v9, "domReadyTime":J
    const-string v11, "STARTUP_PAGE_FINISH"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Enum;

    .line 239
    .local v11, "pageFinishTimeKey":Ljava/lang/Enum;
    invoke-static {v1, v11}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ljava/util/Map;Ljava/lang/Object;)J

    move-result-wide v12

    .line 241
    .local v12, "pageFinish":J
    const-string v14, "STARTUP_APP_LOADED"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Enum;

    .line 242
    .local v14, "appLoadedTimeKey":Ljava/lang/Enum;
    invoke-static {v1, v14}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ljava/util/Map;Ljava/lang/Object;)J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 244
    .local v17, "appLoadedTime":J
    const-string v15, "STARTUP_PROCESS_LAUNCH_TIME"

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 245
    .local v0, "tinyProcessPreLoadedKey":Ljava/lang/Enum;
    invoke-static {v1, v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ljava/util/Map;Ljava/lang/Object;)J

    move-result-wide v15

    .line 248
    .local v15, "tinyProcessPreLoadedTime":J
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->b()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v21, v0

    move-object/from16 v20, v1

    .end local v0    # "tinyProcessPreLoadedKey":Ljava/lang/Enum;
    .end local v1    # "trackInfoMap":Ljava/util/Map;
    .local v20, "trackInfoMap":Ljava/util/Map;
    .local v21, "tinyProcessPreLoadedKey":Ljava/lang/Enum;
    int-to-long v0, v4

    .line 251
    .local v0, "pageSwitchTime":J
    move-object v4, v2

    move/from16 v22, v3

    .end local v2    # "trackTypeConstants":[Ljava/lang/Enum;
    .end local v3    # "foundError":Z
    .local v4, "trackTypeConstants":[Ljava/lang/Enum;
    .local v22, "foundError":Z
    :try_start_2
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v24, v4

    move-object/from16 v23, v5

    move-wide/from16 v4, v17

    .end local v5    # "openAppTimeKey":Ljava/lang/Enum;
    .end local v17    # "appLoadedTime":J
    .local v4, "appLoadedTime":J
    .local v23, "openAppTimeKey":Ljava/lang/Enum;
    .local v24, "trackTypeConstants":[Ljava/lang/Enum;
    :try_start_3
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v2, v6

    .line 253
    .local v2, "startupTime":J
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->getCurrentStorageSize()I

    move-result v17

    .line 255
    .local v17, "cacheSize":I
    move-wide/from16 v25, v4

    .end local v4    # "appLoadedTime":J
    .local v25, "appLoadedTime":J
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v5, 0x0

    .line 256
    .local v5, "performanceData":Ljava/util/Map;
    move-object v5, v4

    move-wide/from16 v18, v6

    .end local v6    # "openAppTime":J
    .local v18, "openAppTime":J
    const-string v6, "startup_time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v4, "page_switch_time"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v4, "pre_loaded_time"

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v4, "cache_size"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 260
    return-object v5

    .line 261
    .end local v0    # "pageSwitchTime":J
    .end local v2    # "startupTime":J
    .end local v5    # "performanceData":Ljava/util/Map;
    .end local v8    # "domReadyTimeKey":Ljava/lang/Enum;
    .end local v9    # "domReadyTime":J
    .end local v11    # "pageFinishTimeKey":Ljava/lang/Enum;
    .end local v12    # "pageFinish":J
    .end local v14    # "appLoadedTimeKey":Ljava/lang/Enum;
    .end local v15    # "tinyProcessPreLoadedTime":J
    .end local v17    # "cacheSize":I
    .end local v18    # "openAppTime":J
    .end local v21    # "tinyProcessPreLoadedKey":Ljava/lang/Enum;
    .end local v23    # "openAppTimeKey":Ljava/lang/Enum;
    .end local v25    # "appLoadedTime":J
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v24    # "trackTypeConstants":[Ljava/lang/Enum;
    .local v4, "trackTypeConstants":[Ljava/lang/Enum;
    :catch_1
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v23, v5

    .end local v4    # "trackTypeConstants":[Ljava/lang/Enum;
    .restart local v24    # "trackTypeConstants":[Ljava/lang/Enum;
    goto :goto_1

    .end local v20    # "trackInfoMap":Ljava/util/Map;
    .end local v22    # "foundError":Z
    .end local v24    # "trackTypeConstants":[Ljava/lang/Enum;
    .restart local v1    # "trackInfoMap":Ljava/util/Map;
    .local v2, "trackTypeConstants":[Ljava/lang/Enum;
    .restart local v3    # "foundError":Z
    :catch_2
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v24, v2

    move/from16 v22, v3

    move-object/from16 v23, v5

    .end local v1    # "trackInfoMap":Ljava/util/Map;
    .end local v2    # "trackTypeConstants":[Ljava/lang/Enum;
    .end local v3    # "foundError":Z
    .restart local v20    # "trackInfoMap":Ljava/util/Map;
    .restart local v22    # "foundError":Z
    .restart local v24    # "trackTypeConstants":[Ljava/lang/Enum;
    :goto_1
    move-object/from16 v4, v23

    goto :goto_2

    .end local v20    # "trackInfoMap":Ljava/util/Map;
    .end local v22    # "foundError":Z
    .end local v24    # "trackTypeConstants":[Ljava/lang/Enum;
    .restart local v1    # "trackInfoMap":Ljava/util/Map;
    .restart local v2    # "trackTypeConstants":[Ljava/lang/Enum;
    .restart local v3    # "foundError":Z
    :catch_3
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v24, v2

    move/from16 v22, v3

    const/4 v5, 0x0

    .end local v1    # "trackInfoMap":Ljava/util/Map;
    .end local v2    # "trackTypeConstants":[Ljava/lang/Enum;
    .end local v3    # "foundError":Z
    .restart local v20    # "trackInfoMap":Ljava/util/Map;
    .restart local v22    # "foundError":Z
    .restart local v24    # "trackTypeConstants":[Ljava/lang/Enum;
    move-object v4, v5

    :goto_2
    move-object v0, v4

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->b:Ljava/util/Map;

    return-object v1
.end method

.method private static g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;",
            ">;"
        }
    .end annotation

    .line 290
    const/4 v0, 0x0

    .local v0, "performanceData":Ljava/util/Map;
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 291
    move-object v0, v1

    const-string v2, "startup_time"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v1, "page_switch_time"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "pre_loaded_time"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "cache_size"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final a(Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;)Ljava/util/List;
    .locals 4
    .param p1, "userAction"    # Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;",
            ")",
            "Ljava/util/List<",
            "Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/bean/DisplayItemInfo;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    .line 116
    const-class v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataSource;

    const/4 v1, 0x0

    move-object v2, v1

    .line 117
    .local v2, "performanceDataSource":Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataSource;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 119
    .local v3, "runInWallet":Z
    :goto_0
    move v3, v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->e()Ljava/util/Map;

    move-result-object v0

    .line 122
    .local v1, "performanceData":Ljava/util/Map;
    move-object v1, v0

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/util/CollectionsUtil;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->f()Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 127
    .end local v1    # "performanceData":Ljava/util/Map;
    :cond_1
    invoke-interface {v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataSource;->a()Ljava/util/Map;

    move-result-object v1

    .line 130
    .restart local v1    # "performanceData":Ljava/util/Map;
    :cond_2
    :goto_1
    invoke-static {v1}, Ltest/tinyapp/alipay/com/testlibrary/util/CollectionsUtil;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->g()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 135
    :cond_3
    if-nez v3, :cond_4

    invoke-static {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 136
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->g()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 139
    :cond_4
    invoke-direct {p0, v1, p1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ljava/util/Map;Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;)V

    .line 141
    invoke-static {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
