.class public Lcom/alipay/mobile/antui/theme/ResourceFileManager;
.super Ljava/lang/Object;
.source "ResourceFileManager.java"

# interfaces
.implements Lcom/alipay/mobile/antui/theme/ThemeCallback;


# static fields
.field private static mInstance:Lcom/alipay/mobile/antui/theme/ResourceFileManager;


# instance fields
.field private themeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/antui/theme/model/AUResourceModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->themeMap:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/antui/theme/ResourceFileManager;
    .locals 2

    const-class v0, Lcom/alipay/mobile/antui/theme/ResourceFileManager;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->mInstance:Lcom/alipay/mobile/antui/theme/ResourceFileManager;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/alipay/mobile/antui/theme/ResourceFileManager;

    invoke-direct {v1}, Lcom/alipay/mobile/antui/theme/ResourceFileManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->mInstance:Lcom/alipay/mobile/antui/theme/ResourceFileManager;

    .line 26
    :cond_0
    sget-object v1, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->mInstance:Lcom/alipay/mobile/antui/theme/ResourceFileManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getColor(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->themeMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->themeMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColor(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Ljava/lang/String;
    .param p3, "defaultColor"    # I

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->getColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 47
    .local v1, "color":I
    move v1, v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    return v1
.end method

.method public getDimen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bundle"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->themeMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->themeMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDimen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bundle"    # Ljava/lang/String;
    .param p4, "defaultDimen"    # I

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->getDimen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 69
    .local v1, "dimen":I
    move v1, v0

    if-nez v0, :cond_0

    return p4

    :cond_0
    return v1
.end method

.method public getDrawable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->themeMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->themeMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;->getDrawable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Ljava/lang/String;
    .param p3, "defaultUrl"    # Ljava/lang/String;

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    .local v1, "url":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    return-object v1
.end method

.method public registerTheme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bundle"    # Ljava/lang/String;
    .param p2, "code_key"    # Ljava/lang/String;

    .line 34
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/antui/theme/ThemeInfoProcessor;->getConfig(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/theme/ThemeCallback;)V

    .line 35
    return-void
.end method

.method public updateTheme(Ljava/lang/String;Lcom/alipay/mobile/antui/theme/model/AUThemeModel;)V
    .locals 2
    .param p1, "bundle"    # Ljava/lang/String;
    .param p2, "themeModel"    # Lcom/alipay/mobile/antui/theme/model/AUThemeModel;

    .line 121
    new-instance v0, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/antui/theme/model/AUResourceModel;-><init>(Lcom/alipay/mobile/antui/theme/model/AUThemeModel;)V

    .line 122
    .local v0, "model":Lcom/alipay/mobile/antui/theme/model/AUResourceModel;
    iget-object v1, p0, Lcom/alipay/mobile/antui/theme/ResourceFileManager;->themeMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method
