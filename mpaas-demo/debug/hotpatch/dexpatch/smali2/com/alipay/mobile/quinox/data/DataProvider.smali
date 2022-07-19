.class public Lcom/alipay/mobile/quinox/data/DataProvider;
.super Ljava/lang/Object;
.source "DataProvider.java"


# static fields
.field public static final KEY_FIRST_CREATED_ACTIVITY_NAME:Ljava/lang/String; = "first_created_activity_name"

.field public static final KEY_FIRST_CREATED_ACTIVITY_REFER:Ljava/lang/String; = "first_created_activity_refer"

.field public static final KEY_LAST_ACTIVITY_STOP_TIME:Ljava/lang/String; = "last_activity_stop_time"

.field private static final sDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/data/DataProvider;->sDataMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/alipay/mobile/quinox/data/DataProvider;->sDataMap:Ljava/util/Map;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    .local v1, "data":Ljava/lang/Object;
    monitor-exit v0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 26
    .end local v1    # "data":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static putData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/alipay/mobile/quinox/data/DataProvider;->sDataMap:Ljava/util/Map;

    monitor-enter v0

    .line 18
    :try_start_0
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
