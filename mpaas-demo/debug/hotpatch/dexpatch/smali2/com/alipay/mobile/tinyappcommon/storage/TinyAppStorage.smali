.class public Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;
.super Ljava/lang/Object;
.source "TinyAppStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage$TinyAppStorageInner;
    }
.end annotation


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppxVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugContainerView:Landroid/widget/FrameLayout;

.field private mDebugPanelH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field private mMenuContent:Ljava/lang/String;

.field private mNewMenuContent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldShowAdd2DesktopMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldShowBackToHomeInTitleBar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldShowFavoriteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageImpl:Lcom/alipay/mobile/tinyappcommon/api/StorageInterface;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mAppxVersionMap:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mNewMenuContent:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mShouldShowFavoriteMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mShouldShowAdd2DesktopMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mShouldShowBackToHomeInTitleBar:Ljava/util/Map;

    .line 39
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mStorageImpl:Lcom/alipay/mobile/tinyappcommon/api/StorageInterface;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;
    .locals 1

    .line 47
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage$TinyAppStorageInner;->INSTANCE:Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;

    return-object v0
.end method


# virtual methods
.method public getAppxVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mAppxVersionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCurrentAppId()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentStorageSize()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mStorageImpl:Lcom/alipay/mobile/tinyappcommon/api/StorageInterface;

    invoke-interface {v0}, Lcom/alipay/mobile/tinyappcommon/api/StorageInterface;->getCurrentStorageSize()I

    move-result v0

    return v0
.end method

.method public getDebugContainerView()Landroid/widget/FrameLayout;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mDebugContainerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getDebugPanelH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mDebugPanelH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method public getOptionMenuContent()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mMenuContent:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionMenuContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/aompfilemanager/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mNewMenuContent:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 70
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getShouldShowAdd2Desktop(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 180
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mShouldShowAdd2DesktopMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 183
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getShouldShowBackToHomeInTitleBar(Ljava/lang/String;)Z
    .locals 2

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 197
    return v1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mShouldShowBackToHomeInTitleBar:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 200
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public getShouldShowFavorite(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 164
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mShouldShowFavoriteMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 167
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public interceptCurrentStorageImpl(Lcom/alipay/mobile/tinyappcommon/api/StorageInterface;)V
    .locals 0

    .line 115
    if-eqz p1, :cond_0

    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mStorageImpl:Lcom/alipay/mobile/tinyappcommon/api/StorageInterface;

    .line 118
    :cond_0
    return-void
.end method

.method public setAppxVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mAppxVersionMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void

    .line 136
    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentAppId(Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mAppId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setDebugContainerView(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mDebugContainerView:Landroid/widget/FrameLayout;

    .line 79
    return-void
.end method

.method public setDebugPanelH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mDebugPanelH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 87
    return-void
.end method

.method public setOptionMenuContent(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mMenuContent:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setOptionMenuContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/aompfilemanager/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mNewMenuContent:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    return-void
.end method

.method public setShouldShowAdd2Desktop(Ljava/lang/String;Z)V
    .locals 1

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mShouldShowAdd2DesktopMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public setShouldShowBackToHomeInTitleBar(Ljava/lang/String;Z)V
    .locals 1

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mShouldShowBackToHomeInTitleBar:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public setShouldShowFavorite(Ljava/lang/String;Z)V
    .locals 1

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/storage/TinyAppStorage;->mShouldShowFavoriteMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method
