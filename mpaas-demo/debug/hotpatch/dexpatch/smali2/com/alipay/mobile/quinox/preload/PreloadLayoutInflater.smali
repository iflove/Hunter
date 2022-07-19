.class public Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "PreloadLayoutInflater.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    const-string v0, "android.widget."

    const-string v1, "android.webkit."

    const-string v2, "android.app."

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 0
    .param p1, "origin"    # Landroid/view/LayoutInflater;
    .param p2, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 74
    .local v1, "target":Landroid/content/Context;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "mContext"

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 77
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 79
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 80
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;->a(Landroid/view/View;)V

    .line 78
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "newContext"    # Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .line 36
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 37
    invoke-static {p1}, Lcom/alipay/mobile/quinox/preload/PreInflateViewCache;->obtainInflatedView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    .local v1, "view":Landroid/view/View;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    return-object v1

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "PreInflateViewCache"

    const-string v3, "reset context failed, abort this cache."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    sget-object v0, Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 60
    .local v4, "prefix":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1, v4, p2}, Lcom/alipay/mobile/quinox/preload/PreloadLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .local v2, "view":Landroid/view/View;
    move-object v2, v5

    if-eqz v5, :cond_0

    .line 62
    return-object v2

    .line 67
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    goto :goto_1

    .line 64
    :catch_0
    move-exception v5

    .line 58
    .end local v4    # "prefix":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
