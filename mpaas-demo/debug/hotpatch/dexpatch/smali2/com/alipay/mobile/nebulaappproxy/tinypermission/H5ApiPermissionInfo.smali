.class public Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;
.super Ljava/lang/Object;
.source "H5ApiPermissionInfo.java"


# instance fields
.field private a:Z

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->a:Z

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->b:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->setHasPermissionFile(Z)V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->b:Ljava/util/Map;

    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 49
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->c:Ljava/util/Map;

    .line 50
    return-void
.end method

.method public getApiLevelList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "level"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getApiLevelStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "level"    # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isHasPermissionFile()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->a:Z

    return v0
.end method

.method public setApiLevelList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public setApiLevelStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public setHasPermissionFile(Z)V
    .locals 0
    .param p1, "hasPermissionFile"    # Z

    .line 19
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiPermissionInfo;->a:Z

    .line 20
    return-void
.end method
