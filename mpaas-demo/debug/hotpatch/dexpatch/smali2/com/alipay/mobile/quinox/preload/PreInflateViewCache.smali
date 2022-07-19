.class public Lcom/alipay/mobile/quinox/preload/PreInflateViewCache;
.super Ljava/lang/Object;
.source "PreInflateViewCache.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PreInflateViewCache"

.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/preload/PreInflateViewCache;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 5

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alipay/mobile/quinox/preload/PreInflateViewCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 68
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 70
    .local v1, "id":I
    :try_start_0
    const-string v2, "PreInflateViewCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "surplus cache:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_1

    .line 71
    :catchall_0
    move-exception v2

    .line 67
    .end local v1    # "id":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 76
    return-void
.end method

.method public static init(Landroid/view/ContextThemeWrapper;Landroid/app/Activity;Landroid/content/res/Resources;)V
    .locals 13
    .param p0, "contextThemeWrapper"    # Landroid/view/ContextThemeWrapper;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resources"    # Landroid/content/res/Resources;

    const-string v0, "PreInflateViewCache"

    .line 24
    sget-object v1, Lcom/alipay/mobile/quinox/perfhelper/StartupResConstant;->STARTUP_LAYOUTS:[Ljava/lang/String;

    .line 26
    .local v1, "launchLayouts":[Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 29
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    array-length v5, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    :try_start_1
    aget-object v8, v1, v6

    .line 30
    .local v8, "idStr":Ljava/lang/String;
    invoke-static {p2, v8, v4, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    .local v7, "id":I
    move v7, v9

    if-eqz v9, :cond_0

    .line 33
    :try_start_2
    sget-object v9, Lcom/alipay/mobile/quinox/preload/PreInflateViewCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v9

    .line 35
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "preInflateView failed, id:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 38
    :try_start_4
    sget-object v10, Lcom/alipay/mobile/quinox/preload/PreInflateViewCache;->a:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    invoke-virtual {v11, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 41
    goto :goto_1

    .line 39
    :catchall_1
    move-exception v10

    .line 40
    .local v10, "e":Ljava/lang/Throwable;
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "retry preInflateView use activity failed, id:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 29
    .end local v7    # "id":I
    .end local v8    # "idStr":Ljava/lang/String;
    .end local v9    # "t":Ljava/lang/Throwable;
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 45
    :catchall_2
    move-exception v5

    goto :goto_2

    .line 47
    :cond_1
    goto :goto_3

    .line 45
    :catchall_3
    move-exception v5

    const/4 v7, 0x0

    .line 46
    .local v5, "t":Ljava/lang/Throwable;
    :goto_2
    const-string v6, "preInflateView failed."

    invoke-static {v0, v6, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_3
    :try_start_6
    sget-object v5, Lcom/alipay/mobile/quinox/perfhelper/StartupResConstant;->STARTUP_LAYOUTS_CANT_CACHE:[Ljava/lang/String;

    array-length v6, v5

    :goto_4
    if-ge v3, v6, :cond_3

    aget-object v8, v5, v3

    .line 51
    .restart local v8    # "idStr":Ljava/lang/String;
    invoke-static {p2, v8, v4, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 52
    .restart local v7    # "id":I
    move v7, v9

    if-eqz v9, :cond_2

    .line 54
    :try_start_7
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v2, v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 57
    goto :goto_5

    .line 55
    :catchall_4
    move-exception v9

    .line 56
    .restart local v9    # "t":Ljava/lang/Throwable;
    :try_start_8
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "preload layout failed, id:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 50
    .end local v7    # "id":I
    .end local v8    # "idStr":Ljava/lang/String;
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 62
    :cond_3
    return-void

    .line 60
    :catchall_5
    move-exception v3

    .line 61
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "preload layout failed."

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .end local v3    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static obtainInflatedView(I)Landroid/view/View;
    .locals 5
    .param p0, "layoutId"    # I

    .line 79
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 81
    sget-object v0, Lcom/alipay/mobile/quinox/preload/PreInflateViewCache;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v3, v2

    .line 82
    .local v3, "view":Landroid/view/View;
    move-object v3, v1

    const-string v4, "PreInflateViewCache"

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hit cache:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-object v3

    .line 88
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "miss cache:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 93
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-object v2
.end method
