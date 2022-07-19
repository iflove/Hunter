.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$3;
.super Ljava/lang/Object;
.source "H5AppConfigDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)V
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
.field final synthetic a:Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

.field final synthetic b:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$3;->b:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$3;->a:Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    .locals 4

    .line 314
    nop

    .line 315
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 316
    nop

    .line 317
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 319
    nop

    .line 320
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    .line 322
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$3;->b:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$3;->a:Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$3;->b:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao$3;->a:Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;->a(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppConfigDao;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;)Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    move-result-object v0

    .line 326
    :goto_0
    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 327
    return-object v1
.end method
