.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/c;
.super Ljava/lang/Object;
.source "ItemListHelper.java"


# direct methods
.method public static a(Ljava/util/List;Ljava/util/List;Z)Ljava/util/Set;
    .locals 5
    .param p0, "items"    # Ljava/util/List;
    .param p1, "entities"    # Ljava/util/List;
    .param p2, "and"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;",
            ">;Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    .local v0, "cache":Ljava/util/HashSet;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;

    .line 32
    .local v2, "entity":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;
    iget-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    .end local v2    # "entity":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;
    goto :goto_0

    .line 36
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 38
    .local v1, "result":Ljava/util/Set;
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;

    .line 40
    .local v3, "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;
    if-eqz p2, :cond_1

    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    :cond_1
    if-nez p2, :cond_2

    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 43
    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;->resId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v3    # "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/AbsResourceItem;
    :cond_2
    goto :goto_1

    .line 48
    :cond_3
    return-object v1
.end method
