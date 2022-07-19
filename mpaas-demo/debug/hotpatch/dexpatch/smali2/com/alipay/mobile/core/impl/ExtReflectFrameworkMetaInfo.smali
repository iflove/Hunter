.class public Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;
.super Ljava/lang/Object;
.source "ExtReflectFrameworkMetaInfo.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildClass(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .param p0, "objects"    # Ljava/util/ArrayList;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-void

    .line 35
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 38
    return-void
.end method

.method public static initDescriptionsWithMapReflect(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 3
    .param p0, "aClass"    # Ljava/lang/Class;
    .param p1, "mDescriptionMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;)V"
        }
    .end annotation

    .line 19
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    .local v1, "newInstance":Ljava/lang/Object;
    check-cast v0, Lcom/alipay/mobile/framework/MetaInfoCfg;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/MetaInfoCfg;->initDescriptionsWithMap(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .end local v1    # "newInstance":Ljava/lang/Object;
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/core/impl/ExtReflectFrameworkMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void

    .line 20
    :cond_1
    :goto_0
    return-void
.end method
