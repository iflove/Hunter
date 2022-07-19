.class public Lcom/alipay/mobile/quinox/BundleContext;
.super Ljava/lang/Object;
.source "BundleContext.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Quinox_BundleContext"


# instance fields
.field private final a:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 0
    .param p1, "launcherApplication"    # Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 38
    return-void
.end method

.method private varargs a(Landroid/content/Context;Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p3, "bundleNames"    # [Ljava/lang/String;

    .line 227
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getResourcesManager()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    move-object v3, v1

    .line 230
    .local v3, "resourcesManager":Lcom/alipay/mobile/quinox/resources/ResourcesManager;
    invoke-interface {v2, p2, p3}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->getResourcesByBundle(Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)Landroid/content/res/Resources;

    .line 231
    nop

    .end local v3    # "resourcesManager":Lcom/alipay/mobile/quinox/resources/ResourcesManager;
    return-void

    .line 232
    :cond_0
    instance-of v2, p1, Lcom/alipay/mobile/quinox/activity/QuinoxContext;

    if-eqz v2, :cond_1

    .line 233
    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/quinox/activity/QuinoxContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object p1, v2

    .line 235
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mResources"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v3, v1

    .line 236
    .local v3, "field":Ljava/lang/reflect/Field;
    move-object v3, v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 238
    iget-object v2, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getResourcesManager()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    .line 239
    invoke-interface {v2, p2, p3}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->getResourcesByBundle(Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 240
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    return-void

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "context="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", bundle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", bundleNames="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-static {p3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    const-string v4, "Replace mResource error"

    invoke-static {v4, v2, v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 245
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 246
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 248
    .end local v2    # "e":Ljava/lang/Exception;
    return-void
.end method


# virtual methods
.method public addExternalBundle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 104
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 109
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 110
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs appendResourcesByBundleName(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundleNames"    # [Ljava/lang/String;

    const-string v0, "mResources"

    .line 193
    instance-of v1, p1, Landroid/content/ContextWrapper;

    const-string v2, ")"

    const-string v3, ", bundleNames="

    const-string v4, "Can\'t appendResourcesByBundleName(context="

    const-string v5, "Quinox_BundleContext"

    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v6, 0x0

    move-object v7, v6

    .line 195
    .local v7, "resources":Landroid/content/res/Resources;
    move-object v7, v1

    instance-of v1, v1, Lcom/alipay/mobile/quinox/resources/BundleResources;

    if-eqz v1, :cond_1

    .line 196
    move-object v1, v7

    check-cast v1, Lcom/alipay/mobile/quinox/resources/BundleResources;

    .line 198
    .local v1, "oldResources":Lcom/alipay/mobile/quinox/resources/BundleResources;
    iget-object v2, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getResourcesManager()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    .line 199
    invoke-interface {v2, v1, p2}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->appendResourcesByBundleName(Lcom/alipay/mobile/quinox/resources/BundleResources;[Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object v3, v6

    .line 201
    .local v3, "newResources":Landroid/content/res/Resources;
    move-object v3, v2

    if-eqz v2, :cond_0

    if-eq v1, v3, :cond_0

    .line 203
    :try_start_0
    const-class v2, Landroid/view/ContextThemeWrapper;

    invoke-static {v2, p1, v0, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    goto :goto_0

    .line 204
    :catchall_0
    move-exception v2

    move-object v6, v2

    .line 205
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    move-object v2, p1

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object v4, v6

    .line 210
    .local v4, "base":Landroid/content/Context;
    move-object v4, v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v4, v0, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    .end local v4    # "base":Landroid/content/Context;
    return-void

    .line 211
    :catchall_1
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "oldResources":Lcom/alipay/mobile/quinox/resources/BundleResources;
    .end local v3    # "newResources":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 216
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .end local v7    # "resources":Landroid/content/res/Resources;
    return-void

    .line 220
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    return-void
.end method

.method public findBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 57
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getHostClassLoader()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;Z)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public findPackagesByBundleName(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "bundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "rets":Ljava/util/Set;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 73
    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 74
    .local v3, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageNames()Ljava/util/List;

    move-result-object v1

    move-object v4, v2

    .line 76
    .local v4, "strings":Ljava/util/List;
    move-object v4, v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, v1

    .line 78
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 79
    .local v2, "string":Ljava/lang/String;
    move-object v2, v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 80
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 85
    .end local v4    # "strings":Ljava/util/List;
    :cond_1
    return-object v0

    .line 68
    .end local v0    # "rets":Ljava/util/Set;
    .end local v3    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bundleName can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllBundleNames()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 42
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->m()Ljava/util/Collection;

    move-result-object v0

    .line 44
    .local v0, "bundles":Ljava/util/Collection;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 45
    .local v2, "_bundles":Ljava/util/List;
    move-object v2, v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .local v1, "bundleNames":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 50
    .local v4, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v4    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    goto :goto_0

    .line 52
    :cond_0
    return-object v1
.end method

.method public getBundleFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "artifactId"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 100
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBundleNameByComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "component"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 90
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 91
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 92
    .local v2, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 93
    return-object v1

    .line 95
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 8
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    const/4 v2, 0x0

    move-object v3, v2

    .line 259
    .local v3, "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    move-object v3, v1

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    return-object v1

    .line 262
    :cond_0
    invoke-interface {v3, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v1

    move-object v4, v2

    .line 263
    .local v4, "resBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v4, v1

    if-nez v1, :cond_1

    .line 265
    const-string v1, "merged-slink-bundles-res"

    invoke-interface {v3, v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v4

    .line 267
    :cond_1
    const-string v1, "]"

    const-string v5, "Quinox_BundleContext"

    if-eqz v4, :cond_2

    .line 269
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/LauncherApplication;->getResourcesManager()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    .line 270
    .local v2, "resourcesManager":Lcom/alipay/mobile/quinox/resources/ResourcesManager;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v4, v7}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->getResourcesByBundle(Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    move-object v0, v6

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bundle=["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "], founded by bundleName: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    nop

    .end local v2    # "resourcesManager":Lcom/alipay/mobile/quinox/resources/ResourcesManager;
    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "replace mResource error"

    invoke-static {v5, v2, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 276
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t find Bundle by bundleName ["

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    return-object v0
.end method

.method public init(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 143
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 144
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 145
    .local v0, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 146
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getHostClassLoader()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 147
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;Z)Ljava/lang/ClassLoader;

    .line 148
    return-object v0
.end method

.method public isLazyBundleByBundleName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 293
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getInitLevel()I

    move-result v0

    const v1, 0xa98670

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNotQuinoxMode()Z
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    const/4 v1, 0x0

    .line 299
    .local v1, "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x1

    return v0

    .line 302
    :cond_0
    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->r()Z

    move-result v0

    return v0
.end method

.method public registerBundleObserver(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 283
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V

    .line 284
    return-void
.end method

.method public removeExternalBundle(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 115
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 116
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->d(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public varargs replaceResources(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "bundleNames"    # [Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    const/4 v1, 0x0

    move-object v2, v1

    .line 159
    .local v2, "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    move-object v2, v0

    invoke-interface {v0, p2}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 160
    .local v1, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 162
    const-string v0, "merged-slink-bundles-res"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v1

    .line 164
    :cond_0
    const-string v0, "]"

    const-string v3, "Quinox_BundleContext"

    if-eqz v1, :cond_1

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bundle=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], founded by component: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p1, v1, p3}, Lcom/alipay/mobile/quinox/BundleContext;->a(Landroid/content/Context;Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)V

    return-void

    .line 168
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t find Bundle by component ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public varargs replaceResourcesByBundleName(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "bundleNames"    # [Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    const/4 v1, 0x0

    move-object v2, v1

    .line 180
    .local v2, "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    move-object v2, v0

    invoke-interface {v0, p2}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 181
    .local v1, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 183
    const-string v0, "merged-slink-bundles-res"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v1

    .line 185
    :cond_0
    if-eqz v1, :cond_1

    .line 186
    invoke-direct {p0, p1, v1, p3}, Lcom/alipay/mobile/quinox/BundleContext;->a(Landroid/content/Context;Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)V

    return-void

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find Bundle by bundleName ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Quinox_BundleContext"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public revertBundles(Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .param p1, "bundleNames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 137
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 138
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public unregisterBundleObserver(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 288
    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V

    .line 289
    return-void
.end method

.method public updateBundles(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .locals 2
    .param p1, "updatePaths"    # Ljava/util/List;
    .param p2, "removeNames"    # Ljava/util/List;
    .param p3, "bundleNames"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 121
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 126
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 127
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method
