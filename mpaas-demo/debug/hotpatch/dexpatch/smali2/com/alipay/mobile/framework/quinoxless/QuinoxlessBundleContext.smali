.class Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;
.super Ljava/lang/Object;
.source "QuinoxlessBundleContext.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static isDebug:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->isDebug:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->a:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private a()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "slinks":Ljava/util/List;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v1, "_bundles":Ljava/util/Map;
    new-instance v2, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->a(Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/IBundleOperator;)Z

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->b:Ljava/util/Map;

    .line 132
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 133
    .local v3, "entry":Ljava/util/Map$Entry;
    iget-object v4, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-direct {v6, v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v3    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 136
    .end local v0    # "slinks":Ljava/util/List;
    .end local v1    # "_bundles":Ljava/util/Map;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->b:Ljava/util/Map;

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/IBundleOperator;)Z
    .locals 5
    .param p1, "slinks"    # Ljava/util/List;
    .param p2, "bundles"    # Ljava/util/Map;
    .param p3, "bundleOperator"    # Lcom/alipay/mobile/quinox/bundle/IBundleOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/IBundle;",
            ">;",
            "Lcom/alipay/mobile/quinox/bundle/IBundleOperator;",
            ")Z"
        }
    .end annotation

    .line 140
    invoke-interface {p3}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator;->getBundleType()Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "assetName":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->a:Landroid/content/Context;

    new-instance v3, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext$1;

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext$1;-><init>(Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;Lcom/alipay/mobile/quinox/bundle/IBundleOperator;Ljava/util/List;Ljava/util/Map;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->readAssets(Landroid/content/Context;Ljava/lang/String;ZLcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;)Z

    move-result v1

    .line 160
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v4
.end method


# virtual methods
.method public addExternalBundle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addExternalBundle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs appendResourcesByBundleName(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundleNames"    # [Ljava/lang/String;

    .line 108
    sget-boolean v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->isDebug:Z

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appendResourcesByBundleName bundleNames="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :cond_0
    return-void
.end method

.method public findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

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

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/Bundle;

    const/4 v1, 0x0

    move-object v2, v1

    .line 45
    .local v2, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageNames()Ljava/util/List;

    move-result-object v0

    move-object v3, v1

    .line 47
    .local v3, "strings":Ljava/util/List;
    move-object v3, v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 49
    .local v0, "rets":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 50
    .local v1, "string":Ljava/lang/String;
    move-object v1, v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 51
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    return-object v0

    .line 59
    .end local v0    # "rets":Ljava/util/Set;
    .end local v3    # "strings":Ljava/util/List;
    :cond_2
    return-object v1

    .line 41
    .end local v2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bundleName can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllBundleNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getBundleFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "artifactId"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBundleLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBundleNameByComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getReusedBundleLocations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/Bundle;

    return-object v0
.end method

.method public removeExternalBundle(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeExternalBundle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs replaceResources(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "bundleNames"    # [Ljava/lang/String;

    .line 98
    sget-boolean v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->isDebug:Z

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "replaceResources component="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :cond_0
    return-void
.end method

.method public varargs replaceResourcesByBundleName(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "bundleNames"    # [Ljava/lang/String;

    .line 103
    sget-boolean v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->isDebug:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "replaceResourcesByBundleName bundleName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_0
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

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "revertBundles not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setupInstrumentation()V
    .locals 3

    .line 121
    sget-boolean v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->isDebug:Z

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "setupInstrumentation"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :cond_0
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

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "updateBundles not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
