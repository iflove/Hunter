.class public final Lcom/alipay/mobile/quinox/classloader/c;
.super Ljava/lang/Object;
.source "HitTest.java"


# static fields
.field private static c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/alipay/mobile/quinox/classloader/c$1;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/classloader/c$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/classloader/c;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/quinox/bundle/BundleManager;Ljava/util/Set;)V
    .locals 9
    .param p1, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .param p2, "bundleNames"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/bundle/BundleManager;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Ljava/util/HashMap;

    .line 33
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 34
    .local v4, "bundleName":Ljava/lang/String;
    invoke-interface {p1, v4}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v5

    .line 35
    .local v1, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v1, v5

    if-eqz v5, :cond_1

    .line 36
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getExportPackages()Ljava/util/List;

    move-result-object v5

    .line 37
    .local v2, "exportPackages":Ljava/util/List;
    move-object v2, v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 38
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 39
    .local v6, "exportPackage":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 40
    iget-object v7, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 41
    .local v3, "bundles":Ljava/util/List;
    move-object v3, v7

    if-nez v7, :cond_0

    .line 42
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 43
    iget-object v7, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v3    # "bundles":Ljava/util/List;
    .end local v6    # "exportPackage":Ljava/lang/String;
    goto :goto_1

    .line 49
    .end local v1    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v2    # "exportPackages":Ljava/util/List;
    .end local v4    # "bundleName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 51
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/ArrayList;

    .line 52
    sget-object v1, Lcom/alipay/mobile/quinox/classloader/c;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 54
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "bundles":Ljava/util/ArrayList;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "ret":Z
    const/4 v2, 0x0

    .line 68
    .local v2, "begin":I
    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 69
    .local v3, "end":I
    const/4 v4, 0x0

    .line 71
    .local v4, "middle":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 72
    add-int v5, v2, v3

    div-int/lit8 v4, v5, 0x2

    .line 73
    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 74
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    .line 75
    move v3, v4

    .line 76
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    const/4 v1, 0x1

    .line 80
    goto :goto_1

    .line 82
    :cond_1
    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    .line 85
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 87
    move-object v0, v5

    iget-object v6, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    add-int/lit8 v5, v4, 0x1

    .local v5, "i":I
    iget-object v6, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "N":I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 90
    iget-object v7, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 91
    .local v7, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 92
    iget-object v8, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 98
    .end local v5    # "i":I
    .end local v6    # "N":I
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v4, -0x1

    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_4

    .line 99
    iget-object v6, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 100
    .local v6, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 101
    iget-object v7, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 108
    .end local v1    # "ret":Z
    .end local v2    # "begin":I
    .end local v3    # "end":I
    .end local v4    # "middle":I
    .end local v5    # "i":I
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_4
    return-object v0
.end method
