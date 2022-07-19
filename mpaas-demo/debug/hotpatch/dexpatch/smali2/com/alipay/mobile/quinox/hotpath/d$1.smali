.class final Lcom/alipay/mobile/quinox/hotpath/d$1;
.super Ljava/lang/Object;
.source "InstantRun.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/hotpath/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/hotpath/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/hotpath/d;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/hotpath/d;

    .line 179
    iput-object p1, p0, Lcom/alipay/mobile/quinox/hotpath/d$1;->a:Lcom/alipay/mobile/quinox/hotpath/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "IR.InstantRun.Quinox"

    .line 183
    :try_start_0
    const-string v1, "startHookBundlePreLoad (InstantRun) start."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 186
    iget-object v1, p0, Lcom/alipay/mobile/quinox/hotpath/d$1;->a:Lcom/alipay/mobile/quinox/hotpath/d;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/hotpath/d;->a(Lcom/alipay/mobile/quinox/hotpath/d;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.alipay.instantrun.compat.AInstantRunManager"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 187
    .local v3, "clazzAInstantRunManager":Ljava/lang/Class;
    const-string v4, "getInstance"

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    const-string v4, "getPreLoadPatchNames"

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 190
    .local v2, "preLoadPatchNames":Ljava/util/Set;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 191
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 192
    .local v4, "preLoadPatchName":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/quinox/hotpath/d$1;->a:Lcom/alipay/mobile/quinox/hotpath/d;

    invoke-static {v5}, Lcom/alipay/mobile/quinox/hotpath/d;->b(Lcom/alipay/mobile/quinox/hotpath/d;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    invoke-static {}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getInstance()Lcom/alipay/mobile/quinox/api/QuinoxAgent;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->findBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v5

    .line 196
    if-eqz v5, :cond_1

    .line 197
    invoke-static {}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getInstance()Lcom/alipay/mobile/quinox/api/QuinoxAgent;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    .line 199
    .end local v4    # "preLoadPatchName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 202
    :cond_2
    const-string v1, "startHookBundlePreLoad (InstantRun) success."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v2    # "preLoadPatchNames":Ljava/util/Set;
    .end local v3    # "clazzAInstantRunManager":Ljava/lang/Class;
    return-void

    .line 203
    :catchall_0
    move-exception v1

    .line 204
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "startHookBundlePreLoad (InstantRun) error."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method
