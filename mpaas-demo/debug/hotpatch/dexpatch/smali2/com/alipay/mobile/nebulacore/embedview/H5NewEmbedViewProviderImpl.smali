.class public Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;
.super Ljava/lang/Object;
.source "H5NewEmbedViewProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/h5container/api/H5Page;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    .line 31
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;

    .line 252
    invoke-static {}, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewConfigManager;->getConfig(Ljava/lang/String;)Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewConfig;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 253
    .local v2, "config":Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 254
    return-object v1

    .line 256
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->getBundleName()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "bundleName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "clazzName":Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v5, v1

    .line 259
    .local v5, "clazz":Ljava/lang/Class;
    move-object v5, v4

    const-string v6, "H5NewEmbedViewProviderImpl"

    if-nez v4, :cond_1

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "generateNewEmbedViewWrapper reflect clazz == null "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-object v1

    .line 264
    :cond_1
    :try_start_0
    const-class v4, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 265
    return-object v1

    .line 267
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    move-object v7, v1

    .line 268
    .local v7, "embedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v7, v4

    if-nez v4, :cond_3

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "generateNewEmbedViewWrapper reflect embedView == null "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-object v1

    .line 272
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v7, v4, v8}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onCreate(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    return-object v7

    .line 274
    .end local v7    # "embedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    :catchall_0
    move-exception v4

    .line 275
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "generateNewEmbedViewWrapper reflect catch exception "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    return-object v1
.end method


# virtual methods
.method public clearAllView()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 234
    :cond_0
    return-void
.end method

.method public deleteView(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteView id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedViewProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    const/4 v2, 0x0

    .line 211
    .local v2, "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onEmbedViewDestory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v2    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    :cond_0
    return-void

    .line 215
    :catchall_0
    move-exception v0

    .line 216
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "deleteView catch throwable "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public getEmbedView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    const-string v0, "H5NewEmbedViewProviderImpl"

    .line 36
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    const-string v2, "H5NewEmbedViewProviderImpl getEmbedView init"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    move-result-object v2

    move-object v3, v1

    .line 39
    .local v3, "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 43
    .end local v3    # "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    :cond_0
    goto :goto_0

    .line 44
    :cond_1
    const-string v2, "H5NewEmbedViewProviderImpl getEmbedView reuse"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    move-object v3, v1

    .line 46
    .restart local v3    # "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v3, v2

    if-eqz v2, :cond_2

    .line 47
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->getView()Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 52
    .end local v3    # "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    :cond_2
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v2

    .line 51
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "getEmbedView catch throwable "

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method

.method public getNewEmbedViewById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    return-object v0
.end method

.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 1

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public onEmbedViewAttachedToWebView()V
    .locals 5

    .line 58
    const-string v0, "H5NewEmbedViewProviderImpl"

    const-string v1, "onEmbedViewAttachedToWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 61
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    .local v3, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    .line 63
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 64
    nop

    .line 65
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onEmbedViewAttachedToWebView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .end local v3    # "item":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 71
    :cond_1
    return-void

    .line 69
    :catchall_0
    move-exception v1

    .line 70
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onEmbedViewAttachedToWebView catch throwable "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public onEmbedViewDestory()V
    .locals 6

    .line 94
    const-string v0, "H5NewEmbedViewProviderImpl"

    const-string v1, "onEmbedViewDestory"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 97
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 98
    .local v4, "item":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    .line 99
    .local v3, "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v3, v5

    if-eqz v5, :cond_0

    .line 100
    nop

    .line 101
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onEmbedViewDestory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v3    # "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .end local v4    # "item":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 107
    :cond_1
    goto :goto_1

    .line 105
    :catchall_0
    move-exception v2

    .line 106
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "onEmbedViewDestory catch throwable "

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_2

    .line 111
    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->setNewEmbedViewRoot(Landroid/view/View;)V

    .line 113
    :cond_2
    return-void
.end method

.method public onEmbedViewDetachedFromWebView()V
    .locals 5

    .line 76
    const-string v0, "H5NewEmbedViewProviderImpl"

    const-string v1, "onEmbedViewDetachedFromWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    .local v3, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    .line 81
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 82
    nop

    .line 83
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onEmbedViewDetachedFromWebView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .end local v3    # "item":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 89
    :cond_1
    return-void

    .line 87
    :catchall_0
    move-exception v1

    .line 88
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onEmbedViewDetachedFromWebView catch throwable "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public onEmbedViewParamChanged()V
    .locals 5

    .line 117
    const-string v0, "H5NewEmbedViewProviderImpl"

    const-string v1, "onEmbedViewParamChanged"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 120
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 121
    .local v3, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    .line 122
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 123
    nop

    .line 124
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onEmbedViewParamChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .end local v3    # "item":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 130
    :cond_1
    return-void

    .line 128
    :catchall_0
    move-exception v1

    .line 129
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onEmbedViewParamChanged catch throwable "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public onEmbedViewVisibilityChanged()V
    .locals 5

    .line 135
    const-string v0, "H5NewEmbedViewProviderImpl"

    const-string v1, "onEmbedViewVisibilityChanged"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 138
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    .local v3, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    .line 140
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 141
    nop

    .line 142
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onEmbedViewVisibilityChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .end local v3    # "item":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    return-void

    .line 146
    :catchall_0
    move-exception v1

    .line 147
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onEmbedViewVisibilityChanged catch throwable "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public onWebViewDestory()V
    .locals 5

    .line 189
    const-string v0, "H5NewEmbedViewProviderImpl"

    const-string v1, "onWebViewDestory"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 192
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 193
    .local v3, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    .line 194
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 195
    nop

    .line 196
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onWebViewDestory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .end local v3    # "item":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 202
    :cond_1
    return-void

    .line 200
    :catchall_0
    move-exception v1

    .line 201
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onWebViewDestory catch throwable "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public onWebViewPause()V
    .locals 5

    .line 171
    const-string v0, "H5NewEmbedViewProviderImpl"

    const-string v1, "onWebViewPause"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 174
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    .line 176
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 177
    nop

    .line 178
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onWebViewPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .end local v3    # "item":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 184
    :cond_1
    return-void

    .line 182
    :catchall_0
    move-exception v1

    .line 183
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onWebViewPause catch throwable "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public onWebViewResume()V
    .locals 5

    .line 153
    const-string v0, "H5NewEmbedViewProviderImpl"

    const-string v1, "onWebViewResume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 157
    .local v3, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    .line 158
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 159
    nop

    .line 160
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onWebViewResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .end local v3    # "item":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 166
    :cond_1
    return-void

    .line 164
    :catchall_0
    move-exception v1

    .line 165
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onWebViewResume catch throwable "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public releaseView()V
    .locals 2

    .line 222
    const-string v0, "H5NewEmbedViewProviderImpl"

    const-string v1, "releaseView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->c:Ljava/util/Map;

    .line 225
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 226
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;->a:Landroid/content/Context;

    .line 227
    return-void
.end method

.method public triggerPreSnapshot()V
    .locals 0

    .line 249
    return-void
.end method
