.class public Lcom/alipay/mobile/antui/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 33
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 36
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getActivityByView(Landroid/view/View;)Landroid/app/Activity;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/ViewUtils;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static getNavBarHeight()I
    .locals 5

    .line 73
    const/4 v0, 0x0

    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 74
    move-object v0, v1

    const-string/jumbo v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-static {v1, v2, v3, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 75
    .local v3, "resourceId":I
    move v3, v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 78
    :cond_0
    return v2
.end method

.method public static isNavBarVisible(Landroid/app/Activity;)Z
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "isVisible":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 51
    .local v1, "decorView":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .local v3, "count":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 53
    .local v5, "child":Landroid/view/View;
    move-object v5, v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    .line 54
    .local v6, "id":I
    move v6, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 57
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "resourceEntryName":Ljava/lang/String;
    const-string/jumbo v8, "navigationBarBackground"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 59
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_1

    .line 51
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "id":I
    .end local v7    # "resourceEntryName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v3

    .line 67
    .local v2, "visibility":I
    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    move v0, v4

    .line 69
    .end local v2    # "visibility":I
    :cond_3
    return v0
.end method
