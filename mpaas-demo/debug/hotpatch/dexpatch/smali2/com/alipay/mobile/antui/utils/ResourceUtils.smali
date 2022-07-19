.class public Lcom/alipay/mobile/antui/utils/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPackageName()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "com.alipay.mobile.antui"

    return-object v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 12
    const/4 v0, -0x1

    .line 14
    .local v0, "resId":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/alipay/mobile/antui/utils/ResourceUtils;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v1, p1, p2, v2}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 18
    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getResourceId"

    invoke-static {v3, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
