.class public abstract Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "H5BaseDBHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "construct db + "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with version: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 5

    .line 127
    const-string v0, "Can\'t dropTable database"

    const/4 v1, 0x1

    :try_start_0
    const-class v2, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInfoBean;

    invoke-static {p2, v2, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 128
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v3, "dropTable H5AppInfoBean"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 136
    :goto_0
    :try_start_1
    const-class v2, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppPoolBean;

    invoke-static {p2, v2, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 137
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v3, "dropTable H5AppPoolBean"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    goto :goto_1

    .line 138
    :catch_1
    move-exception v2

    .line 139
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 144
    :goto_1
    :try_start_2
    const-class v2, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-static {p2, v2, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 145
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v3, "dropTable H5AppConfigBean"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    goto :goto_2

    .line 146
    :catch_2
    move-exception v2

    .line 147
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 152
    :goto_2
    :try_start_3
    const-class v2, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    invoke-static {p2, v2, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 153
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v3, "dropTable H5AppInstallBean"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 157
    goto :goto_3

    .line 154
    :catch_3
    move-exception v2

    .line 155
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 160
    :goto_3
    :try_start_4
    const-class v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    invoke-static {p2, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v2, "dropTable H5NebulaAppBean"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 165
    goto :goto_4

    .line 162
    :catch_4
    move-exception v0

    .line 163
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 169
    :goto_4
    :try_start_5
    const-class v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;

    invoke-static {p2, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v1, "dropTable H5UrlAppMapBean"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 174
    goto :goto_5

    .line 171
    :catch_5
    move-exception v0

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t create database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 177
    :goto_5
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 181
    goto :goto_6

    .line 178
    :catch_6
    move-exception p1

    .line 179
    iget-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 182
    :goto_6
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 291
    const-string v0, "h5_nebula_db_exception"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "exception"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 292
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->d:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 187
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->d:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->d:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public close()V
    .locals 3

    .line 244
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onClose !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->d:Lcom/j256/ormlite/dao/Dao;

    .line 247
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->c:Lcom/j256/ormlite/dao/Dao;

    .line 248
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->b:Lcom/j256/ormlite/dao/Dao;

    .line 249
    return-void
.end method

.method public d()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 200
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->b:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public e()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->c:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 214
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->c:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    .line 216
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->c:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public f()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->e:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 226
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->e:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->e:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public declared-synchronized g()V
    .locals 7

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/dbdao/H5AppDaoHelper;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 256
    :goto_0
    nop

    .line 257
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 258
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->f:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "needClearTable currentGWFUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", lastGWFUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 263
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v4, v0

    move v0, v1

    .line 266
    :cond_2
    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->clearTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v1, "clearAllTable"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->f:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v1, "clearMemory"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->a()Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;->b()V

    .line 280
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 281
    if-eqz v0, :cond_4

    .line 282
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->clearResourceAppCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_4
    goto :goto_2

    .line 254
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 284
    :catch_0
    move-exception v0

    .line 285
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v2, "clearAllTable exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :goto_2
    monitor-exit p0

    return-void

    .line 254
    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 3

    .line 59
    const-string p1, "Can\'t create database"

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5NebulaAppBean;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v1, "createTable H5NebulaAppBean"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 71
    :goto_0
    :try_start_1
    const-class v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v1, "createTable H5UrlAppMapBean"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    goto :goto_1

    .line 73
    :catch_1
    move-exception v0

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 79
    :goto_1
    :try_start_2
    const-class v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppConfigBean;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v1, "createTable H5AppConfigBean"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 84
    goto :goto_2

    .line 81
    :catch_2
    move-exception v0

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 87
    :goto_2
    :try_start_3
    const-class v0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5AppInstallBean;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 88
    iget-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v0, "createTable H5AppInstallBean"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 92
    goto :goto_3

    .line 89
    :catch_3
    move-exception p2

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 96
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getInstance()Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->setDefaultConfig()V

    .line 97
    iget-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    const-string v0, "createTable setDefaultConfig"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 101
    goto :goto_4

    .line 98
    :catch_4
    move-exception p2

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Ljava/lang/String;)V

    .line 102
    :goto_4
    return-void
.end method

.method public onDowngrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6570\u636e\u5e93\u964d\u7ea7 onDowngrade oldVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;II)V

    .line 109
    return-void
.end method

.method public onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 237
    invoke-super {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 238
    iget-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onOpen !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6570\u636e\u5e93\u5347\u7ea7 onUpgrade, oldVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",newVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eq p3, p4, :cond_0

    .line 117
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/a;->a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)Z

    move-result p3

    .line 118
    if-nez p3, :cond_0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;->a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 122
    :cond_0
    return-void
.end method
