.class public abstract Lcom/mpaas/tinyapi/RequestProcessor;
.super Ljava/lang/Object;
.source "RequestProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/mpaas/tinyapi/ResponseModel;)V
    .locals 4
    .param p1, "response"    # Lcom/mpaas/tinyapi/ResponseModel;

    .line 16
    invoke-virtual {p1}, Lcom/mpaas/tinyapi/ResponseModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mpaas/tinyapi/a;->a(Ljava/lang/String;)Lcom/mpaas/tinyapi/RequestEntity;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 17
    .local v2, "entity":Lcom/mpaas/tinyapi/RequestEntity;
    move-object v2, v0

    const-string v3, "RequestProcessor"

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no request is associated with response "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mpaas/tinyapi/ResponseModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void

    .line 22
    :cond_0
    invoke-virtual {v2}, Lcom/mpaas/tinyapi/RequestEntity;->d()Lcom/mpaas/tinyapi/ResponseCallback;

    move-result-object v0

    .line 23
    .local v1, "callback":Lcom/mpaas/tinyapi/ResponseCallback;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 24
    const-string v0, "entity callback is null."

    invoke-static {v3, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void

    .line 28
    :cond_1
    invoke-interface {v1, p1}, Lcom/mpaas/tinyapi/ResponseCallback;->onResponse(Lcom/mpaas/tinyapi/ResponseModel;)V

    .line 30
    const-string v0, "response is handled."

    invoke-static {v3, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public abstract a(Landroid/content/Context;Lcom/mpaas/tinyapi/RequestEntity;)Z
.end method
