.class public Lcom/alipay/mobile/nebulax/NebulaXCompat;
.super Ljava/lang/Object;
.source "NebulaXCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/NebulaXCompat$Handler;,
        Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;
    }
.end annotation


# static fields
.field private static eventHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;",
            "Lcom/alipay/mobile/nebulax/NebulaXCompat$Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/NebulaXCompat;->eventHandlerMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerEvent(Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;Lcom/alipay/mobile/nebulax/NebulaXCompat$Handler;)V
    .locals 1
    .param p0, "event"    # Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;
    .param p1, "handler"    # Lcom/alipay/mobile/nebulax/NebulaXCompat$Handler;

    .line 26
    sget-object v0, Lcom/alipay/mobile/nebulax/NebulaXCompat;->eventHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public static sendEvent(Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "event"    # Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;
    .param p1, "extra"    # Landroid/os/Bundle;

    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/nebulax/NebulaXCompat;->eventHandlerMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/NebulaXCompat$Handler;

    .line 37
    .local v1, "handler":Lcom/alipay/mobile/nebulax/NebulaXCompat$Handler;
    move-object v1, v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p0, p1}, Lcom/alipay/mobile/nebulax/NebulaXCompat$Handler;->handleEvent(Lcom/alipay/mobile/nebulax/NebulaXCompat$Event;Landroid/os/Bundle;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 38
    .end local v1    # "handler":Lcom/alipay/mobile/nebulax/NebulaXCompat$Handler;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 37
    :cond_0
    return v0

    .line 39
    .local v1, "t":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method
