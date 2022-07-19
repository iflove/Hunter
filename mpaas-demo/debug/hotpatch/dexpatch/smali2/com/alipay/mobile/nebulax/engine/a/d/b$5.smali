.class Lcom/alipay/mobile/nebulax/engine/a/d/b$5;
.super Ljava/lang/Object;
.source "NXH5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/a/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V
    .locals 0

    .line 2196
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$5;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2200
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->getAllThreadsTraces()Ljava/util/List;

    move-result-object v0

    .line 2201
    if-eqz v0, :cond_0

    .line 2202
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$5;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v1, v1, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All Threads Traces: ###"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2204
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$5;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v2, v2, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    goto :goto_0

    .line 2207
    :cond_0
    return-void
.end method
