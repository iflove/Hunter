.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$14;
.super Ljava/lang/Object;
.source "H5NebulaAppDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;->a(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field final synthetic b:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$14;->b:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$14;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    .locals 5

    .line 322
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->c()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 323
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 324
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$14;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 325
    const-string v4, "app_id"

    invoke-virtual {v2, v4, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$14;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 327
    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 328
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    .line 329
    nop

    .line 330
    instance-of p1, p1, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DevDBOpenHelper;

    if-eqz p1, :cond_0

    .line 331
    const/4 p1, 0x1

    goto :goto_0

    .line 330
    :cond_0
    const/4 p1, 0x0

    .line 334
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 335
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$14;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {v1, v3, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->a(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_1

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5NebulaAppDao$14;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {v2, v1, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppInfoUtil;->a(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 339
    :goto_1
    return-object v2
.end method
