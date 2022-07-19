.class final Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$2;
.super Ljava/lang/Object;
.source "BundleManagerImpl.java"

# interfaces
.implements Lcom/abq/qba/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;->a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Landroid/util/SparseArray;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/abq/qba/a/a$b<",
        "Ljava/util/zip/ZipFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;[ZLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;

    .line 2350
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$2;->c:Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$2;->a:[Z

    iput-object p3, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 2353
    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$2;->a:[Z

    aget-boolean v3, v0, v2

    if-nez v3, :cond_0

    .line 2354
    aput-boolean v1, v0, v2

    .line 2355
    return v1

    .line 2357
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 2359
    .local v3, "b":Lcom/alipay/mobile/quinox/bundle/Bundle;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "res-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getPackageId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2360
    return v1

    .line 2362
    .end local v3    # "b":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_1
    goto :goto_0

    .line 2363
    :cond_2
    return v2
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 2350
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl$2;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
