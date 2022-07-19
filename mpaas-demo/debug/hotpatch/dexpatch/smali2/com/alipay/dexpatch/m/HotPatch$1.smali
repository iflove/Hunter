.class Lcom/alipay/dexpatch/m/HotPatch$1;
.super Ljava/lang/Object;
.source "HotPatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/dexpatch/m/HotPatch;->startHookBundlePreLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/dexpatch/m/HotPatch;


# direct methods
.method constructor <init>(Lcom/alipay/dexpatch/m/HotPatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/dexpatch/m/HotPatch;

    .line 319
    iput-object p1, p0, Lcom/alipay/dexpatch/m/HotPatch$1;->this$0:Lcom/alipay/dexpatch/m/HotPatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "DynamicRelease"

    .line 323
    :try_start_0
    const-string/jumbo v1, "startHookBundlePreLoad (AndFix) start."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 326
    iget-object v1, p0, Lcom/alipay/dexpatch/m/HotPatch$1;->this$0:Lcom/alipay/dexpatch/m/HotPatch;

    # getter for: Lcom/alipay/dexpatch/m/HotPatch;->a:Ljava/lang/Object;
    invoke-static {v1}, Lcom/alipay/dexpatch/m/HotPatch;->access$000(Lcom/alipay/dexpatch/m/HotPatch;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getPreLoadPatchNames"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const/4 v2, 0x0

    .line 328
    .local v2, "preLoadPatchNames":Ljava/util/Set;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 329
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

    .line 330
    .local v3, "preLoadPatchName":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/dexpatch/m/HotPatch$1;->this$0:Lcom/alipay/dexpatch/m/HotPatch;

    # getter for: Lcom/alipay/dexpatch/m/HotPatch;->d:Ljava/util/Set;
    invoke-static {v4}, Lcom/alipay/dexpatch/m/HotPatch;->access$100(Lcom/alipay/dexpatch/m/HotPatch;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 333
    invoke-static {}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getInstance()Lcom/alipay/mobile/quinox/api/QuinoxAgent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->findBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v4

    .line 334
    if-eqz v4, :cond_1

    .line 335
    invoke-static {}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getInstance()Lcom/alipay/mobile/quinox/api/QuinoxAgent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    .line 337
    .end local v3    # "preLoadPatchName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 340
    :cond_2
    const-string/jumbo v1, "startHookBundlePreLoad (AndFix) success."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .end local v2    # "preLoadPatchNames":Ljava/util/Set;
    return-void

    .line 341
    :catchall_0
    move-exception v1

    .line 342
    .local v1, "tr":Ljava/lang/Throwable;
    const-string/jumbo v2, "startHookBundlePreLoad (AndFix) error."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method
