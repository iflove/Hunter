.class Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1$1;
.super Ljava/lang/Object;
.source "H5UrlMapDao.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1;->b(Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONArray;

.field final synthetic b:Lcom/j256/ormlite/dao/Dao;

.field final synthetic c:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1;Lcom/alibaba/fastjson/JSONArray;Lcom/j256/ormlite/dao/Dao;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1$1;->c:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1$1;->a:Lcom/alibaba/fastjson/JSONArray;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1$1;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 7

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1$1;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .line 69
    nop

    .line 70
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 71
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1$1;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->purifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1$1;->b:Lcom/j256/ormlite/dao/Dao;

    .line 74
    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    .line 75
    invoke-static {v4}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 76
    const-string/jumbo v6, "public_url"

    invoke-virtual {v5, v6, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 78
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;

    .line 79
    if-eqz v4, :cond_0

    .line 80
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1$1;->c:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->setAppId(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1$1;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v4}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 83
    :cond_0
    new-instance v4, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;

    invoke-direct {v4}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;-><init>()V

    .line 84
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->setUserId(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->setPublicUrl(Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1$1;->c:Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->setAppId(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1$1;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5UrlMapDao$1$1;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
