.class public Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;
.super Ljava/lang/Object;
.source "H5AppDaoHelper.java"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Lcom/j256/ormlite/stmt/StatementBuilder;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/stmt/StatementBuilder<",
            "TT;TS;>;)",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;TS;>;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p0

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {p0, v1, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p0

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .locals 2

    .line 46
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 47
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 48
    if-nez v0, :cond_0

    .line 49
    const-string v0, "H5AppDaoHelper"

    const-string v1, "h5ConfigProvider == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 52
    :cond_0
    const-string v1, "h5_enableAppPartitionWithUserId"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 56
    :cond_1
    const-string v1, "NO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a:Ljava/lang/Boolean;

    .line 60
    :cond_2
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a:Ljava/lang/Boolean;

    .line 65
    return-void
.end method

.method public static b(Lcom/j256/ormlite/stmt/StatementBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/stmt/StatementBuilder<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object p0

    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbapi/H5DaoTemplate;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {p0, v1, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 42
    :cond_0
    return-void
.end method
