.class public Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;->a:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;->b:Ljava/util/HashMap;

    .line 11
    const-wide/32 v0, 0x1b7740

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;->c:Ljava/lang/Long;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;
    .locals 2

    .line 18
    sget-object v0, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;->d:Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;->d:Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;

    invoke-direct {v1}, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;-><init>()V

    sput-object v1, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;->d:Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;->d:Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;

    return-object v0
.end method


# virtual methods
.method public trigger(Ljava/lang/String;)Z
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 30
    .local v0, "l":J
    iget-object v2, p0, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    move-object v4, v3

    .line 31
    .local v4, "integer":Ljava/lang/Long;
    move-object v4, v2

    const/4 v5, 0x1

    if-nez v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;->b:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return v5

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 38
    .local v3, "intervalTime":Ljava/lang/Long;
    move-object v3, v2

    if-nez v2, :cond_1

    .line 40
    iget-object v3, p0, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;->c:Ljava/lang/Long;

    .line 42
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v0, v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/mpaas/mpaasadapter/api/MPaaSIntervalUtil;->b:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return v5

    .line 48
    .end local v3    # "intervalTime":Ljava/lang/Long;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method
