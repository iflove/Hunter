.class public Lcom/j256/ormlite/dao/DaoManager;
.super Ljava/lang/Object;
.source "DaoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;,
        Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    }
.end annotation


# static fields
.field private static classMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;>;"
        }
    .end annotation
.end field

.field private static configMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static tableConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    .line 39
    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    .line 40
    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    .line 42
    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addCachedDatabaseConfigs(Ljava/util/Collection;)V
    .locals 7
    .param p0, "configs"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;>;)V"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 241
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, "newMap":Ljava/util/Map;
    goto :goto_0

    .line 244
    .end local v1    # "newMap":Ljava/util/Map;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 246
    .restart local v1    # "newMap":Ljava/util/Map;
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 247
    .local v3, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;
    invoke-virtual {v3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v4, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v5, "Loaded configuration for {}"

    invoke-virtual {v3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    .end local v3    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;
    goto :goto_1

    .line 250
    :cond_1
    sput-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit v0

    return-void

    .line 240
    .end local v1    # "newMap":Ljava/util/Map;
    .end local p0    # "configs":Ljava/util/Collection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    .param p1, "dao"    # Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    .line 257
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void
.end method

.method private static addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    .param p1, "dao"    # Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    .line 270
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-void
.end method

.method public static declared-synchronized clearCache()V
    .locals 2

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 214
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 215
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 216
    const/4 v1, 0x0

    sput-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    .line 218
    :cond_0
    invoke-static {}, Lcom/j256/ormlite/dao/DaoManager;->clearDaoCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit v0

    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized clearDaoCache()V
    .locals 3

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 225
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 226
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 227
    sput-object v2, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    .line 229
    :cond_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 230
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 231
    sput-object v2, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_1
    monitor-exit v0

    return-void

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "tableConfig"    # Lcom/j256/ormlite/table/DatabaseTableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)TD;"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 133
    if-eqz p0, :cond_0

    .line 136
    :try_start_0
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->doCreateDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 132
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 134
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 9
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)TD;"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 50
    if-eqz p0, :cond_7

    .line 53
    :try_start_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    .line 54
    invoke-static {v1}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    move-object v3, v2

    .line 55
    .local v3, "dao":Lcom/j256/ormlite/dao/Dao;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 57
    move-object v1, v2

    .line 58
    .local v1, "castDao":Lcom/j256/ormlite/dao/Dao;
    monitor-exit v0

    return-object v3

    .line 62
    .end local v1    # "castDao":Lcom/j256/ormlite/dao/Dao;
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDaoFromConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 65
    move-object v1, v2

    .line 66
    .restart local v1    # "castDao":Lcom/j256/ormlite/dao/Dao;
    monitor-exit v0

    return-object v3

    .line 69
    .end local v1    # "castDao":Lcom/j256/ormlite/dao/Dao;
    :cond_1
    :try_start_2
    const-class v1, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/table/DatabaseTable;

    move-object v4, v2

    .line 70
    .local v4, "databaseTable":Lcom/j256/ormlite/table/DatabaseTable;
    move-object v4, v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v1

    const-class v5, Ljava/lang/Void;

    if-eq v1, v5, :cond_5

    .line 71
    invoke-interface {v4}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v1

    const-class v5, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-ne v1, v5, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    invoke-interface {v4}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v1

    .line 85
    .local v1, "daoClass":Ljava/lang/Class;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v7, 0x1

    aput-object p1, v5, v7

    .line 87
    .local v5, "arguments":[Ljava/lang/Object;
    invoke-static {v1, v5}, Lcom/j256/ormlite/dao/DaoManager;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 88
    .local v2, "daoConstructor":Ljava/lang/reflect/Constructor;
    move-object v2, v8

    if-nez v8, :cond_4

    .line 90
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v6

    move-object v5, v7

    .line 91
    invoke-static {v1, v5}, Lcom/j256/ormlite/dao/DaoManager;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 92
    move-object v2, v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 93
    :cond_3
    new-instance v6, Ljava/sql/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not find public constructor with ConnectionSource and optional Class parameters "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Missing static on class?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :cond_4
    :goto_0
    :try_start_3
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/j256/ormlite/dao/Dao;

    move-object v3, v6

    .line 100
    sget-object v6, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v7, "created dao for class {} from constructor"

    invoke-virtual {v6, v7, p1}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    goto :goto_3

    .line 101
    :catch_0
    move-exception v6

    .line 102
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not call the constructor in class "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v7

    throw v7

    .line 73
    .end local v1    # "daoClass":Ljava/lang/Class;
    .end local v2    # "daoConstructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "arguments":[Ljava/lang/Object;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v1

    move-object v5, v2

    .line 74
    .local v5, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    invoke-interface {v1, p0, p1}, Lcom/j256/ormlite/db/DatabaseType;->extractDatabaseTableConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v1

    .line 76
    .local v2, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;
    move-object v2, v1

    if-nez v1, :cond_6

    .line 77
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .local v1, "daoTmp":Lcom/j256/ormlite/dao/Dao;
    goto :goto_2

    .line 79
    .end local v1    # "daoTmp":Lcom/j256/ormlite/dao/Dao;
    :cond_6
    invoke-static {p0, v2}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 81
    .restart local v1    # "daoTmp":Lcom/j256/ormlite/dao/Dao;
    :goto_2
    move-object v3, v1

    .line 82
    sget-object v6, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v7, "created dao for class {} with reflection"

    invoke-virtual {v6, v7, p1}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .end local v1    # "daoTmp":Lcom/j256/ormlite/dao/Dao;
    .end local v2    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;
    .end local v5    # "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    move-object v1, v5

    .line 106
    :goto_3
    invoke-static {p0, v3}, Lcom/j256/ormlite/dao/DaoManager;->registerDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    nop

    .line 109
    .local v1, "castDao":Lcom/j256/ormlite/dao/Dao;
    monitor-exit v0

    return-object v3

    .line 49
    .end local v1    # "castDao":Lcom/j256/ormlite/dao/Dao;
    .end local v3    # "dao":Lcom/j256/ormlite/dao/Dao;
    .end local v4    # "databaseTable":Lcom/j256/ormlite/table/DatabaseTable;
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "clazz":Ljava/lang/Class;
    :catchall_0
    move-exception p0

    goto :goto_4

    .line 51
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "clazz":Ljava/lang/Class;
    :cond_7
    :try_start_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 49
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "clazz":Ljava/lang/Class;
    :goto_4
    monitor-exit v0

    throw p0
.end method

.method private static createDaoFromConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)TD;"
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 322
    return-object v1

    .line 326
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-object v2, v1

    .line 328
    .local v2, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 329
    return-object v1

    .line 333
    :cond_1
    invoke-static {p0, v2}, Lcom/j256/ormlite/dao/DaoManager;->doCreateDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 336
    return-object v0
.end method

.method private static doCreateDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 11
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "tableConfig"    # Lcom/j256/ormlite/table/DatabaseTableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)TD;"
        }
    .end annotation

    .line 341
    new-instance v0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 343
    .local v2, "tableKey":Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    move-object v2, v0

    invoke-static {v0}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    move-object v3, v1

    .line 344
    .local v3, "dao":Lcom/j256/ormlite/dao/Dao;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 346
    move-object v0, v1

    .line 347
    .local v0, "castDao":Lcom/j256/ormlite/dao/Dao;
    return-object v3

    .line 351
    .end local v0    # "castDao":Lcom/j256/ormlite/dao/Dao;
    :cond_0
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    .line 352
    .local v0, "dataClass":Ljava/lang/Class;
    new-instance v4, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-direct {v4, p0, v0}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    move-object v5, v1

    .line 353
    .local v5, "classKey":Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    move-object v5, v4

    invoke-static {v4}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    .line 354
    move-object v3, v4

    if-eqz v4, :cond_1

    .line 356
    invoke-static {v2, v3}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 358
    nop

    .line 359
    .local v1, "castDao":Lcom/j256/ormlite/dao/Dao;
    return-object v3

    .line 363
    .end local v1    # "castDao":Lcom/j256/ormlite/dao/Dao;
    :cond_1
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/j256/ormlite/table/DatabaseTable;

    move-object v6, v1

    .line 364
    .local v6, "databaseTable":Lcom/j256/ormlite/table/DatabaseTable;
    move-object v6, v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v4

    const-class v7, Ljava/lang/Void;

    if-eq v4, v7, :cond_4

    .line 365
    invoke-interface {v6}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v4

    const-class v7, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-ne v4, v7, :cond_2

    goto :goto_0

    .line 369
    :cond_2
    invoke-interface {v6}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v4

    .line 370
    .local v4, "daoClass":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    .line 371
    .local v7, "arguments":[Ljava/lang/Object;
    invoke-static {v4, v7}, Lcom/j256/ormlite/dao/DaoManager;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 372
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    move-object v1, v8

    if-eqz v8, :cond_3

    .line 378
    :try_start_0
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v8

    .line 381
    goto :goto_1

    .line 379
    :catch_0
    move-exception v8

    .line 380
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not call the constructor in class "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v9

    throw v9

    .line 373
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v8, Ljava/sql/SQLException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not find public constructor with ConnectionSource, DatabaseTableConfig parameters in class "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 366
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v4    # "daoClass":Ljava/lang/Class;
    .end local v7    # "arguments":[Ljava/lang/Object;
    :cond_4
    :goto_0
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    .line 367
    .local v1, "daoTmp":Lcom/j256/ormlite/dao/Dao;
    move-object v3, v4

    .line 368
    .end local v1    # "daoTmp":Lcom/j256/ormlite/dao/Dao;
    move-object v4, v1

    .line 384
    :goto_1
    invoke-static {v2, v3}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 385
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v7, "created dao for class {} from table config"

    invoke-virtual {v1, v7, v0}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    invoke-static {v5}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    if-nez v1, :cond_5

    .line 389
    invoke-static {v5, v3}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 393
    :cond_5
    move-object v1, v4

    .line 394
    .local v1, "castDao":Lcom/j256/ormlite/dao/Dao;
    return-object v3
.end method

.method private static findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 10
    .param p0, "daoClass"    # Ljava/lang/Class;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v6, v0, v3

    .line 299
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    move-object v4, v6

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 300
    .local v5, "paramsTypes":[Ljava/lang/Class;
    move-object v5, v6

    array-length v6, v6

    array-length v7, p1

    if-ne v6, v7, :cond_2

    .line 301
    const/4 v6, 0x1

    .line 302
    .local v6, "match":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_1

    .line 303
    aget-object v8, v5, v7

    aget-object v9, p1, v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 304
    const/4 v6, 0x0

    .line 305
    goto :goto_2

    .line 302
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 308
    .end local v7    # "i":I
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 309
    return-object v4

    .line 298
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "paramsTypes":[Ljava/lang/Class;
    .end local v6    # "match":Z
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 313
    :cond_3
    return-object v2
.end method

.method private static lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    .locals 3
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            ")",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;"
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    .line 277
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;

    const/4 v1, 0x0

    move-object v2, v1

    .line 278
    .local v2, "dao":Lcom/j256/ormlite/dao/Dao;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 279
    return-object v1

    .line 281
    :cond_1
    return-object v2
.end method

.method private static lookupDao(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    .locals 3
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            ")",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;"
        }
    .end annotation

    .line 286
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    .line 289
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;

    const/4 v1, 0x0

    move-object v2, v1

    .line 290
    .local v2, "dao":Lcom/j256/ormlite/dao/Dao;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 291
    return-object v1

    .line 293
    :cond_1
    return-object v2
.end method

.method public static declared-synchronized lookupDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 4
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "tableConfig"    # Lcom/j256/ormlite/table/DatabaseTableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)TD;"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 145
    if-eqz p0, :cond_1

    .line 148
    :try_start_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 149
    invoke-static {v1}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    move-object v3, v2

    .line 150
    .local v3, "dao":Lcom/j256/ormlite/dao/Dao;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 151
    monitor-exit v0

    return-object v2

    .line 154
    :cond_0
    nop

    .line 155
    monitor-exit v0

    return-object v3

    .line 144
    .end local v3    # "dao":Lcom/j256/ormlite/dao/Dao;
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 146
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized lookupDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)TD;"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 116
    if-eqz p0, :cond_0

    .line 119
    :try_start_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    .line 120
    invoke-static {v1}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit v0

    return-object v1

    .line 115
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "clazz":Ljava/lang/Class;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 117
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "clazz":Ljava/lang/Class;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "clazz":Ljava/lang/Class;
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "dao"    # Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 175
    if-eqz p0, :cond_0

    .line 178
    :try_start_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v1, p1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit v0

    return-void

    .line 174
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "dao":Lcom/j256/ormlite/dao/Dao;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 176
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "dao":Lcom/j256/ormlite/dao/Dao;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "dao":Lcom/j256/ormlite/dao/Dao;
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerDaoWithTableConfig(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "dao"    # Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 197
    if-eqz p0, :cond_1

    .line 200
    :try_start_0
    instance-of v1, p1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v1, :cond_0

    .line 201
    move-object v1, p1

    check-cast v1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v1

    const/4 v2, 0x0

    .line 202
    .local v2, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    invoke-direct {v1, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    invoke-static {v1, p1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit v0

    return-void

    .line 207
    .end local v2    # "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v1, p1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    monitor-exit v0

    return-void

    .line 196
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "dao":Lcom/j256/ormlite/dao/Dao;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 198
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "dao":Lcom/j256/ormlite/dao/Dao;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "dao":Lcom/j256/ormlite/dao/Dao;
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private static removeDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p0, "key"    # Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    .param p1, "dao"    # Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregisterDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "dao"    # Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 186
    if-eqz p0, :cond_0

    .line 189
    :try_start_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v1, p1}, Lcom/j256/ormlite/dao/DaoManager;->removeDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit v0

    return-void

    .line 185
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "dao":Lcom/j256/ormlite/dao/Dao;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 187
    .restart local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .restart local p1    # "dao":Lcom/j256/ormlite/dao/Dao;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .end local p0    # "connectionSource":Lcom/j256/ormlite/support/ConnectionSource;
    .end local p1    # "dao":Lcom/j256/ormlite/dao/Dao;
    :goto_0
    monitor-exit v0

    throw p0
.end method
