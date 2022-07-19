.class public Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;
.super Ljava/lang/Object;
.source "MpaasNetConfigUtil.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->a:Ljava/util/Map;

    .line 22
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    const-string v0, "MpaasNetConfigUtil"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v1, "mGWWhiteList":Ljava/util/List;
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->getMpaasNetConfigProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "GWWhiteList"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, "whiteList":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GWWhiteList: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    return-object v1

    .line 144
    :cond_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 145
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 146
    .local v6, "gw":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    nop

    .end local v6    # "gw":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 148
    :cond_1
    return-object v1

    .line 149
    .end local v2    # "whiteList":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 150
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doGetGWWhiteList ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v2    # "ex":Ljava/lang/Throwable;
    return-object v1
.end method

.method private static final b(Landroid/content/Context;)Ljava/util/Map;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "mpaas_netconfig properties load fail. "

    const-string v1, "MpaasNetConfigUtil"

    .line 158
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 160
    .local v4, "assetsMng":Landroid/content/res/AssetManager;
    const-string/jumbo v5, "mpaas_netconfig.properties"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 161
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 162
    .local v3, "properties":Ljava/util/Properties;
    move-object v3, v5

    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 163
    invoke-virtual {v3}, Ljava/util/Properties;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/Properties;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 169
    .local v5, "map":Ljava/util/Map;
    invoke-virtual {v3}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 170
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    nop

    .end local v7    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 172
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mpaas_netconfig properties loaded\uff0c size: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    return-object v5

    .line 176
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v4    # "assetsMng":Landroid/content/res/AssetManager;
    .end local v5    # "map":Ljava/util/Map;
    :catchall_0
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 174
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 179
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getAsymmetricEncryptMethod(Landroid/content/Context;)B
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->getMpaasNetConfigProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "RSA/ECC/SM2"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 83
    .local v2, "method":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "RSA"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    return v0

    .line 85
    :cond_0
    const-string v1, "ECC"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const/4 v0, 0x2

    return v0

    .line 87
    :cond_1
    const-string v1, "SM2"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 88
    const/4 v0, 0x3

    return v0

    .line 92
    .end local v2    # "method":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAsymmetricEncryptMethod. ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MpaasNetConfigUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method public static getGWWhiteList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 121
    return-object v0

    .line 123
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->b:Ljava/util/List;

    if-nez v1, :cond_1

    .line 125
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->b:Ljava/util/List;

    .line 127
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->b:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 127
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "context":Landroid/content/Context;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 129
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "MpaasNetConfigUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getGWWhiteList ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .end local v0    # "ex":Ljava/lang/Throwable;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static final getMpaasNetConfigProperties(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 27
    return-object v0

    .line 29
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->a:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 31
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->a:Ljava/util/Map;

    .line 33
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->a:Ljava/util/Map;

    return-object v0

    .line 33
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getPublicKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->getMpaasNetConfigProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "PubKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPublicKey ex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpaasNetConfigUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v0    # "ex":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method public static isCrypt(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->getMpaasNetConfigProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Crypt"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 46
    .local v2, "crypt":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "TRUE"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    return v0

    .line 47
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 50
    .end local v2    # "crypt":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isCrypt. ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MpaasNetConfigUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method public static isDefaultGlobalCrypt(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MpaasNetConfigUtil;->getMpaasNetConfigProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "DefaultGlobalCrypt"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 64
    .local v2, "defaultGlobalCrypt":Ljava/lang/String;
    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    return v0

    .line 68
    .end local v2    # "defaultGlobalCrypt":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 69
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isDefaultGlobalCrypt ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MpaasNetConfigUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method
