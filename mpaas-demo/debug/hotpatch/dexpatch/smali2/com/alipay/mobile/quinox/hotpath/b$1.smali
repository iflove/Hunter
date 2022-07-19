.class final Lcom/alipay/mobile/quinox/hotpath/b$1;
.super Ljava/lang/Object;
.source "HotPatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/hotpath/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/hotpath/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/hotpath/b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/hotpath/b;

    .line 325
    iput-object p1, p0, Lcom/alipay/mobile/quinox/hotpath/b$1;->a:Lcom/alipay/mobile/quinox/hotpath/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "DynamicRelease"

    .line 329
    :try_start_0
    const-string v1, "startHookBundlePreLoad (AndFix) start."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 332
    iget-object v1, p0, Lcom/alipay/mobile/quinox/hotpath/b$1;->a:Lcom/alipay/mobile/quinox/hotpath/b;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/hotpath/b;->a(Lcom/alipay/mobile/quinox/hotpath/b;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getPreLoadPatchNames"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const/4 v2, 0x0

    .line 334
    .local v2, "preLoadPatchNames":Ljava/util/Set;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 335
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 336
    .local v3, "preLoadPatchName":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/quinox/hotpath/b$1;->a:Lcom/alipay/mobile/quinox/hotpath/b;

    invoke-static {v4}, Lcom/alipay/mobile/quinox/hotpath/b;->b(Lcom/alipay/mobile/quinox/hotpath/b;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 339
    invoke-static {}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getInstance()Lcom/alipay/mobile/quinox/api/QuinoxAgent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->findBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v4

    .line 340
    if-eqz v4, :cond_1

    .line 341
    invoke-static {}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getInstance()Lcom/alipay/mobile/quinox/api/QuinoxAgent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    .line 343
    .end local v3    # "preLoadPatchName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 346
    :cond_2
    const-string v1, "startHookBundlePreLoad (AndFix) success."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v2    # "preLoadPatchNames":Ljava/util/Set;
    return-void

    .line 347
    :catchall_0
    move-exception v1

    .line 348
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "startHookBundlePreLoad (AndFix) error."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method
