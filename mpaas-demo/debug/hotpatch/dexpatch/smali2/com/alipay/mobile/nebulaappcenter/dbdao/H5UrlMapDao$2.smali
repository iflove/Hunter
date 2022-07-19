.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$2;
.super Ljava/lang/Object;
.source "H5UrlMapDao.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;->a(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoExecutor<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$2;->b:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$2;->b(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/String;
    .locals 3

    .line 108
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->f()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 109
    nop

    .line 110
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$2;->a:Ljava/lang/String;

    .line 112
    const-string/jumbo v2, "public_url"

    invoke-virtual {v0, v2, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 114
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;

    .line 115
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->getAppId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
