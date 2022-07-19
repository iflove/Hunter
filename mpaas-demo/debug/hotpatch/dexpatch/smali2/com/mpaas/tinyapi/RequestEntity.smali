.class public Lcom/mpaas/tinyapi/RequestEntity;
.super Ljava/lang/Object;
.source "RequestEntity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/mpaas/tinyapi/RequestModel;

.field private c:Lcom/mpaas/tinyapi/ResponseCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/tinyapi/RequestEntity;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Lcom/mpaas/tinyapi/RequestModel;Lcom/mpaas/tinyapi/ResponseCallback;)Lcom/mpaas/tinyapi/RequestEntity;
    .locals 2
    .param p0, "requestModel"    # Lcom/mpaas/tinyapi/RequestModel;
    .param p1, "response"    # Lcom/mpaas/tinyapi/ResponseCallback;

    .line 35
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Lcom/mpaas/tinyapi/RequestEntity;

    invoke-direct {v0}, Lcom/mpaas/tinyapi/RequestEntity;-><init>()V

    const/4 v1, 0x0

    .line 39
    .local v1, "entity":Lcom/mpaas/tinyapi/RequestEntity;
    move-object v1, v0

    iput-object p0, v0, Lcom/mpaas/tinyapi/RequestEntity;->b:Lcom/mpaas/tinyapi/RequestModel;

    .line 40
    iput-object p1, v1, Lcom/mpaas/tinyapi/RequestEntity;->c:Lcom/mpaas/tinyapi/ResponseCallback;

    .line 41
    return-object v1

    .line 36
    .end local v1    # "entity":Lcom/mpaas/tinyapi/RequestEntity;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request or response is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mpaas/tinyapi/RequestEntity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/mpaas/tinyapi/RequestType;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mpaas/tinyapi/RequestEntity;->b:Lcom/mpaas/tinyapi/RequestModel;

    invoke-virtual {v0}, Lcom/mpaas/tinyapi/RequestModel;->a()Lcom/mpaas/tinyapi/RequestType;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/mpaas/tinyapi/RequestModel;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mpaas/tinyapi/RequestEntity;->b:Lcom/mpaas/tinyapi/RequestModel;

    return-object v0
.end method

.method final d()Lcom/mpaas/tinyapi/ResponseCallback;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mpaas/tinyapi/RequestEntity;->c:Lcom/mpaas/tinyapi/ResponseCallback;

    return-object v0
.end method
