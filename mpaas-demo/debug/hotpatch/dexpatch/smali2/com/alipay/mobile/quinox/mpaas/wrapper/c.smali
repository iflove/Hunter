.class public final Lcom/alipay/mobile/quinox/mpaas/wrapper/c;
.super Ljava/lang/Object;
.source "StartupSafeguardMPaaSWrapper.java"


# direct methods
.method public static a(Landroid/content/Context;ILjava/util/Set;)Ljava/util/Set;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "whiteListType"    # I
    .param p2, "whiteList"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "userWhiteList":Ljava/util/List;
    const/4 v1, 0x0

    .line 32
    .local v1, "v2WhiteList":Ljava/util/List;
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/mpaas/wrapper/a;->b()Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-static {p0}, Lcom/alipay/mobile/quinox/mpaas/wrapper/b;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/mpaas/wrapper/a;->a()Ljava/util/List;

    move-result-object v0

    .line 39
    invoke-static {p0}, Lcom/alipay/mobile/quinox/mpaas/wrapper/b;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 42
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 43
    if-nez v0, :cond_2

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 46
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_3
    const-string v2, "StartupSafeguard"

    if-eqz v0, :cond_7

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addWhiteList user white list:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, " is empty"

    goto :goto_1

    :cond_4
    const-string v5, " is not empty"

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 51
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v6    # "name":Ljava/lang/String;
    goto :goto_2

    .line 53
    :cond_5
    if-nez p2, :cond_6

    .line 54
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object p2, v2

    .line 56
    :cond_6
    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 58
    :cond_7
    const-string v3, "addWhiteList user white list is null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_3
    return-object p2
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 26
    invoke-static {p0}, Lcom/alipay/mobile/quinox/mpaas/wrapper/b;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
