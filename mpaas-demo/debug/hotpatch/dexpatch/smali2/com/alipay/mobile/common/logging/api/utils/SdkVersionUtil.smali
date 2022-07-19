.class public Lcom/alipay/mobile/common/logging/api/utils/SdkVersionUtil;
.super Ljava/lang/Object;
.source "SdkVersionUtil.java"


# static fields
.field private static final bundleVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/utils/SdkVersionUtil;->bundleVersions:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "clazzName"    # Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/alipay/mobile/common/logging/api/utils/SdkVersionUtil;->bundleVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, v1

    .line 14
    .local v2, "version":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v1

    .line 18
    .local v3, "clazz":Ljava/lang/Class;
    move-object v3, v0

    :try_start_1
    const-string v4, "BUNDLE_NAME"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v1

    .line 20
    .local v4, "bundleName":Ljava/lang/String;
    move-object v4, v0

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v1, "split":[Ljava/lang/String;
    move-object v1, v0

    array-length v0, v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_0

    .line 22
    array-length v0, v1

    sub-int/2addr v0, v5

    aget-object v0, v1, v0

    move-object v4, v0

    .line 25
    .end local v3    # "clazz":Ljava/lang/Class;
    :cond_0
    const-string v0, "BUNDLE_VERSION"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    .local v0, "bundleVersion":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v5

    .line 31
    .end local v1    # "split":[Ljava/lang/String;
    .end local v2    # "version":Ljava/lang/String;
    .end local v4    # "bundleName":Ljava/lang/String;
    .local v0, "version":Ljava/lang/String;
    move-object v2, v0

    goto :goto_1

    .line 29
    .end local v0    # "version":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object v0, v1

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unknown"

    move-object v2, v1

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    sget-object v0, Lcom/alipay/mobile/common/logging/api/utils/SdkVersionUtil;->bundleVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1
    return-object v2
.end method
