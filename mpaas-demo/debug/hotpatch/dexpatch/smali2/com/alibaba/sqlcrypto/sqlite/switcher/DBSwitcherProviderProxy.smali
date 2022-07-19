.class public Lcom/alibaba/sqlcrypto/sqlite/switcher/DBSwitcherProviderProxy;
.super Ljava/lang/Object;
.source "DBSwitcherProviderProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DBSwitcherProviderProxy"

.field private static volatile sDbSwitcherProvider:Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;

    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;-><init>()V

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/switcher/DBSwitcherProviderProxy;->sDbSwitcherProvider:Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alarm(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 20
    :try_start_0
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/switcher/DBSwitcherProviderProxy;->sDbSwitcherProvider:Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;->alarm(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    .local v0, "e2":Ljava/lang/Throwable;
    const/4 v1, 0x6

    const-string v2, "DBSwitcherProviderProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const-string v3, "alarm error: "

    if-eqz v1, :cond_0

    .line 23
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :cond_0
    sget-object v1, Lcom/alibaba/sqlcrypto/sqlite/switcher/DBSwitcherProviderProxy;->sDbSwitcherProvider:Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .end local v0    # "e2":Ljava/lang/Throwable;
    return-void
.end method

.method public static injectDbSwitcherProvider(Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;)V
    .locals 0
    .param p0, "provider"    # Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;

    .line 12
    if-nez p0, :cond_0

    .line 13
    return-void

    .line 15
    :cond_0
    sput-object p0, Lcom/alibaba/sqlcrypto/sqlite/switcher/DBSwitcherProviderProxy;->sDbSwitcherProvider:Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;

    .line 16
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 31
    :try_start_0
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/switcher/DBSwitcherProviderProxy;->sDbSwitcherProvider:Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/switcher/DbSwitcherProvider;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    .local v0, "e2":Ljava/lang/Throwable;
    const/4 v1, 0x6

    const-string v2, "DBSwitcherProviderProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string/jumbo v1, "trace error: "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .end local v0    # "e2":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method
