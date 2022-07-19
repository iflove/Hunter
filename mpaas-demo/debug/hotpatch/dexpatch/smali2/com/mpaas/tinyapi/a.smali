.class final Lcom/mpaas/tinyapi/a;
.super Ljava/lang/Object;
.source "RequestEntityPool.java"


# static fields
.field private static b:Lcom/mpaas/tinyapi/a;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mpaas/tinyapi/RequestEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/mpaas/tinyapi/a;

    invoke-direct {v0}, Lcom/mpaas/tinyapi/a;-><init>()V

    sput-object v0, Lcom/mpaas/tinyapi/a;->b:Lcom/mpaas/tinyapi/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mpaas/tinyapi/a;->a:Ljava/util/Map;

    .line 14
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/mpaas/tinyapi/RequestEntity;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/mpaas/tinyapi/a;->b:Lcom/mpaas/tinyapi/a;

    iget-object v0, v0, Lcom/mpaas/tinyapi/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mpaas/tinyapi/RequestEntity;

    return-object v0
.end method

.method static a(Lcom/mpaas/tinyapi/RequestEntity;)V
    .locals 2
    .param p0, "entity"    # Lcom/mpaas/tinyapi/RequestEntity;

    .line 17
    sget-object v0, Lcom/mpaas/tinyapi/a;->b:Lcom/mpaas/tinyapi/a;

    iget-object v0, v0, Lcom/mpaas/tinyapi/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mpaas/tinyapi/RequestEntity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method
