.class public Lcom/mpaas/tinyapi/ApiExecutor;
.super Ljava/lang/Object;
.source "ApiExecutor.java"


# static fields
.field private static b:Lcom/mpaas/tinyapi/ApiExecutor;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mpaas/tinyapi/RequestProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/mpaas/tinyapi/ApiExecutor;

    invoke-direct {v0}, Lcom/mpaas/tinyapi/ApiExecutor;-><init>()V

    sput-object v0, Lcom/mpaas/tinyapi/ApiExecutor;->b:Lcom/mpaas/tinyapi/ApiExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mpaas/tinyapi/ApiExecutor;->a:Ljava/util/List;

    .line 18
    invoke-static {}, Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;->a()Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {}, Lcom/mpaas/tinyapi/city/ChooseCityProcessor;->a()Lcom/mpaas/tinyapi/city/ChooseCityProcessor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mpaas/tinyapi/RequestModel;Lcom/mpaas/tinyapi/ResponseCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/mpaas/tinyapi/RequestModel;
    .param p2, "callback"    # Lcom/mpaas/tinyapi/ResponseCallback;

    .line 23
    invoke-static {p1, p2}, Lcom/mpaas/tinyapi/RequestEntity;->a(Lcom/mpaas/tinyapi/RequestModel;Lcom/mpaas/tinyapi/ResponseCallback;)Lcom/mpaas/tinyapi/RequestEntity;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    .local v1, "entity":Lcom/mpaas/tinyapi/RequestEntity;
    move-object v1, v0

    invoke-static {v0}, Lcom/mpaas/tinyapi/a;->a(Lcom/mpaas/tinyapi/RequestEntity;)V

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "handled":Z
    sget-object v2, Lcom/mpaas/tinyapi/ApiExecutor;->b:Lcom/mpaas/tinyapi/ApiExecutor;

    iget-object v2, v2, Lcom/mpaas/tinyapi/ApiExecutor;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mpaas/tinyapi/RequestProcessor;

    .line 27
    invoke-virtual {v3, p0, v1}, Lcom/mpaas/tinyapi/RequestProcessor;->a(Landroid/content/Context;Lcom/mpaas/tinyapi/RequestEntity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 33
    invoke-virtual {v1}, Lcom/mpaas/tinyapi/RequestEntity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mpaas/tinyapi/a;->a(Ljava/lang/String;)Lcom/mpaas/tinyapi/RequestEntity;

    .line 35
    :cond_2
    return-void
.end method
