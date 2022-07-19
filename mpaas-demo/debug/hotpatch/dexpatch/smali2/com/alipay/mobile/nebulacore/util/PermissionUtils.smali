.class public Lcom/alipay/mobile/nebulacore/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs getNeedCheckPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reqPermissionsPermissions"    # [Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "noPermissionsList":Ljava/util/List;
    array-length v1, p1

    .line 58
    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    .line 59
    aget-object v4, p1, v2

    .line 60
    .local v4, "permission":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v3

    move-object v3, v5

    .line 61
    .local v3, "tempPermission":[Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/alipay/mobile/nebulacore/util/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v3    # "tempPermission":[Ljava/lang/String;
    .end local v4    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "i":I
    :cond_1
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reqPermissionsPermissions"    # [Ljava/lang/String;

    .line 25
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 26
    .local v3, "permission":Ljava/lang/String;
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 27
    return v1

    .line 25
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "reqPermissionsPermissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 33
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/util/PermissionUtils;->getNeedCheckPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    .local v1, "noPermissions":[Ljava/lang/String;
    move-object v1, v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 36
    :try_start_0
    invoke-static {p0, v1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 41
    :cond_0
    return-void
.end method

.method public static requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "reqPermissionsPermissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulacore/util/PermissionUtils;->getNeedCheckPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 45
    .local v1, "noPermissions":[Ljava/lang/String;
    move-object v1, v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p0, v1, p2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 52
    :cond_0
    return-void
.end method

.method public static verifyPermissions([I)Z
    .locals 5
    .param p0, "grantResults"    # [I

    .line 16
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    .line 17
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 18
    return v1

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
